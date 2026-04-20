<?php

namespace App\Http\Requests\API\v3;

use App\Traits\ResponseHandler;
use Illuminate\Foundation\Http\FormRequest;
use App\Rules\DisallowedExtension;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Http\UploadedFile;
use Modules\TaxModule\app\Traits\VatTaxManagement;

class ProductAddRequest extends FormRequest
{
    use ResponseHandler;
    use VatTaxManagement;
    public function authorize(): bool
    {
        return true;
    }
    /**
     * Get the validation rules that apply to the request.
     */
    public function rules(): array
    {
        return [
            'name' => 'required',
            'category_id' => 'required',
            'product_type' => 'required',
            'unit' => 'required_if:product_type,==,physical',
            'images' => 'required',
            'thumbnail' => getRulesStringForImageValidation(
                rules: ['required'],
                skipMimes: ['.svg'],
                maxSize: getFileUploadMaxSize(unit: 'kb'),
                isDisallowed: true
            ),
            'discount_type' => 'required|in:percent,flat',
            'lang' => 'required',
            'unit_price' => 'required|min:1',
            'discount' => 'required|gt:-1',
            'shipping_cost' => 'required_if:product_type,==,physical|gt:-1',
            'code' => 'required|min:6|max:20|regex:/^[a-zA-Z0-9]+$/|unique:products',
            'minimum_order_qty' => 'required|numeric|min:1',
        ];
    }
    /**
     * Get custom messages for validator errors.
     */
    public function messages(): array
    {
        return [
            'name.required' => translate('Product name is required!'),
            'unit.required_if' => translate('Unit is required!'),
            'category_id.required' => translate('category is required!'),
            'shipping_cost.required_if' => translate('Shipping Cost is required!'),
            'images.required' => translate('Product images is required!'),
            'image.required' => translate('Product thumbnail is required!'),
            'thumbnail.max' => translate('Maximum image size cannot exceed getter then '). ' '.getFileUploadMaxSize().'MB',
            'thumbnail.mimes' => translate('Only allowed image types are '). ' ' . getFileUploadFormats(skip: '.svg' , asMessage: 'true'),
            'code.required' => translate('Code is required!'),
            'minimum_order_qty.required' => translate('The minimum order quantity is required!'),
            'minimum_order_qty.min' => translate('The minimum order quantity must be positive!'),
        ];
    }
    /**
     * Configure the validator instance.
     */
    public function withValidator($validator): void
    {
        $validator->after(function ($validator) {
            $taxData = $this->getTaxSystemType();
            $productWiseTax = $taxData['productWiseTax'] && !$taxData['is_included'];

            if ($productWiseTax && (!isset($this->tax_ids) || empty(json_decode($this->tax_ids, true)))) {
                $validator->errors()->add('tax', translate('Please_add_your_product_tax') . '!');
            }
            if ($this->preview_file) {
                $disallowedExtensions = ['php', 'java', 'js', 'html', 'exe', 'sh'];
                $maxFileSize = 10 * 1024 * 1024; // 10 MB in bytes
                $extension = $this->preview_file->getClientOriginalExtension();
                $fileSize = $this->preview_file->getSize();

                if ($fileSize > $maxFileSize) {
                    $validator->errors()->add('files', translate('File_size_exceeds_the_maximum_limit_of_10MB') . '!');
                } elseif (in_array($extension, $disallowedExtensions)) {
                    $validator->errors()->add('files', translate('Files_with_extensions_like') . (' .php,.java,.js,.html,.exe,.sh ') . translate('are_not_supported') . '!');
                }
            }
            $discount = $this->discount_type == 'percent' ? (($this->unit_price / 100) * $this->discount) : $this->discount;
            if ($this->unit_price <= $discount) {
                $validator->errors()->add('unit_price', translate('Discount can not be more or equal to the price!'));
            }

            $this->validateWholesaleTiers($validator);
        });
    }

    private function validateWholesaleTiers($validator): void
    {
        if (!$this->has('wholesale_tiers') || empty($this->input('wholesale_tiers'))) {
            return;
        }

        $tiers = normalizeWholesaleTiers($this->input('wholesale_tiers'));
        if (empty($tiers)) {
            $validator->errors()->add('wholesale_tiers', translate('Please_provide_valid_wholesale_tiers') . '!');
            return;
        }

        $grouped = [];
        foreach ($tiers as $tier) {
            $groupKey = $tier['variant'] ?? '__base__';
            $grouped[$groupKey][] = $tier;
        }

        foreach ($grouped as $variantTiers) {
            usort($variantTiers, fn($a, $b) => $a['min_qty'] <=> $b['min_qty']);
            $previous = null;

            foreach ($variantTiers as $index => $tier) {
                if ($previous) {
                    if (!is_null($previous['max_qty'])) {
                        if ($tier['min_qty'] <= $previous['max_qty']) {
                            $validator->errors()->add('wholesale_tiers', translate('Wholesale_tier_ranges_can_not_overlap') . '!');
                            return;
                        }
                        if (($previous['max_qty'] + 1) !== $tier['min_qty']) {
                            $validator->errors()->add('wholesale_tiers', translate('Wholesale_tier_ranges_must_be_continuous') . '!');
                            return;
                        }
                    } else {
                        $validator->errors()->add('wholesale_tiers', translate('Open_ended_tier_must_be_the_last_tier') . '!');
                        return;
                    }
                }

                if (is_null($tier['max_qty']) && $index !== count($variantTiers) - 1) {
                    $validator->errors()->add('wholesale_tiers', translate('Open_ended_tier_must_be_the_last_tier') . '!');
                    return;
                }

                $previous = $tier;
            }
        }
    }
    protected function failedValidation(\Illuminate\Contracts\Validation\Validator $validator)
    {
        throw new HttpResponseException(
            response()->json([
                'errors' => $this->errorProcessor($validator),
            ], 403)
        );
    }
}
