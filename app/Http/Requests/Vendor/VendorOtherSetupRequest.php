<?php

namespace App\Http\Requests\Vendor;

use App\Traits\ResponseHandler;
use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Foundation\Http\FormRequest;

class VendorOtherSetupRequest extends FormRequest
{
    use ResponseHandler;

    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            'tax_identification_number' => 'nullable|string',
            'tin_certificate' => 'nullable|mimes:pdf,doc,docx,jpg|max:5120',
        ];
    }

    public function messages(): array
    {
        return [
            'tax_identification_number.string' => translate('The_tin_identification_number_must_be_string'),
            'tin_certificate.mimes' => translate('The_tin_certificate_must_be_a_file_of_type_pdf_doc_docx_jpg'),
            'tin_certificate.max' => translate('The_tin_certificate_must_not_exceed_5MB'),
        ];
    }
}
