document.addEventListener("DOMContentLoaded", function () {
    generateSKUPlaceHolder();
    getProductTypeFunctionality();
    getUpdateDigitalVariationFunctionality();
    productColorSwitcherFunctionalityRender();
    initializeAdminTierDiscountTable();
});

function getTierRowHtml(removeClassName) {
    return `<tr class="tier-discount-row">
        <td><input type="number" min="1" step="1" class="form-control tier-min-qty" name="tier_min_qty[]"></td>
        <td><input type="number" min="1" step="1" class="form-control tier-max-qty" name="tier_max_qty[]"></td>
        <td>
            <select class="form-control form-select tier-discount-type" name="tier_discount_type[]">
                <option value="flat">flat</option>
                <option value="percent">percent</option>
            </select>
        </td>
        <td><input type="number" min="0" step="0.01" class="form-control tier-discount-value" name="tier_discount[]"></td>
        <td class="text-center"><button type="button" class="btn btn-outline-danger btn-sm ${removeClassName}">remove</button></td>
    </tr>`;
}

function initializeAdminTierDiscountTable() {
    $(document).on("click", "#admin-tier-discount-add-row", function () {
        $("#admin-tier-discount-table tbody").append(getTierRowHtml("admin-tier-discount-remove-row"));
    });

    $(document).on("click", ".admin-tier-discount-remove-row", function () {
        $(this).closest("tr").remove();
    });
}

function validateTierDiscountRows() {
    const rows = $("#admin-tier-discount-table tbody .tier-discount-row");
    if (!rows.length) {
        return true;
    }

    let ranges = [];
    let isValid = true;
    let unitPrice = parseFloat($("#unit_price").val() || 0);

    rows.each(function () {
        const minQty = parseInt($(this).find(".tier-min-qty").val(), 10);
        const maxQtyValue = $(this).find(".tier-max-qty").val();
        const maxQty = maxQtyValue === "" ? null : parseInt(maxQtyValue, 10);
        const discountType = $(this).find(".tier-discount-type").val();
        const discountValue = parseFloat($(this).find(".tier-discount-value").val());

        if (!Number.isInteger(minQty) || minQty < 1 || (maxQty !== null && (!Number.isInteger(maxQty) || maxQty < minQty)) || Number.isNaN(discountValue) || discountValue < 0) {
            isValid = false;
            return false;
        }

        if (discountType === "percent" && discountValue > 100) {
            isValid = false;
            return false;
        }

        if (discountType === "flat" && unitPrice > 0 && discountValue >= unitPrice) {
            isValid = false;
            return false;
        }

        ranges.push({ min: minQty, max: maxQty ?? Number.MAX_SAFE_INTEGER });
    });

    if (!isValid) {
        toastMagic.error("Please fix tier discount row values.");
        return false;
    }

    ranges.sort((a, b) => a.min - b.min);
    for (let i = 1; i < ranges.length; i++) {
        if (ranges[i].min <= ranges[i - 1].max) {
            toastMagic.error("Tier quantity ranges must not overlap.");
            return false;
        }
    }

    return true;
}

function productColorSwitcherFunctionalityRender() {
    if ($("#product-color-switcher").prop("checked")) {
         $("#color-wise-image-area").show();
        colorWiseImageFunctionality($("#colors-selector-input"));
    } else {
        $("#color-wise-image-area").hide();
    }

    $(".color-var-select").select2({
        templateResult: colorCodeSelect,
        templateSelection: colorCodeSelect,
        escapeMarkup: function (m) {
            return m;
        },
    });

    function colorCodeSelect(state) {
        let colorCode = state.element.value;
        if (!colorCode) return state.text;

        let colorPreviewSpan = document.createElement("span");
        colorPreviewSpan.classList.add("color-preview");
        colorPreviewSpan.style.backgroundColor = colorCode;
        return colorPreviewSpan.outerHTML + state.text;
    }

    if ($("#product-color-switcher").prop("checked")) {
        $(".color_image_column").removeClass("d-none");
        $("#additional_Image_Section .col-md-4").addClass("col-lg-2");
    } else {
        $(".color_image_column").addClass("d-none");
        $("#additional_Image_Section .col-md-4").removeClass("col-lg-2");
    }

    if ($('#product_type').val() === "physical") {
        $('.additional-image-column-section').addClass('col-md-12').removeClass('col-md-6').removeClass('col-md-8');
    } else {
        $('.additional-image-column-section').addClass('col-md-8').removeClass('col-md-6').removeClass('col-md-12');
    }
}

let pageLoadFirstTime = true;
function elementProductColorSwitcherByIDFunctionality(action = null) {
    if ($("#product-color-switcher").prop("checked")) {
        $(".color_image_column").removeClass("d-none");
        $("#color-wise-image-area").show();
        $("#additional_Image_Section .col-md-4").addClass("col-lg-2");
    } else {
        let colors = $("#colors-selector-input");
        let choiceAttributes = $("#product-choice-attributes");

        colors.val(null).trigger("change");
        if (pageLoadFirstTime === false && action === "reset") {
            choiceAttributes.val(null).trigger("change");
            pageLoadFirstTime = false;
        }

        $(".color_image_column").addClass("d-none");
        $("#color-wise-image-area").hide();
        $("#additional_Image_Section .col-md-4").removeClass("col-lg-2");
    }

    if ($('#product_type').val() === "physical") {
        $('.additional-image-column-section').addClass('col-md-12').removeClass('col-md-6').removeClass('col-md-8');
    } else {
        $('.additional-image-column-section').addClass('col-md-8').removeClass('col-md-6').removeClass('col-md-12');
    }

    if (!$('input[name="colors_active"]').is(':checked')) {
        $('#colors-selector-input').prop('disabled', true);
    } else {
        $('#colors-selector-input').prop('disabled', false);
    }
}

function updateProductQuantity() {
    let elementCurrentStock = $('input[name="current_stock"]');
    let totalQuantity = 0;
    let quantityElements = $('input[name^="qty_"]');
    for (let i = 0; i < quantityElements.length; i++) {
        totalQuantity += parseInt(quantityElements.eq(i).val());
    }
    if (quantityElements.length > 0) {
        elementCurrentStock.attr("readonly", true);
        elementCurrentStock.val(totalQuantity);
    } else {
        elementCurrentStock.attr("readonly", false);
    }
}

function getRequestFunctionality(getUrlPrefix, id, getElementType) {
    let message = $("#message-select-word").data("text");
    $("#sub-sub-category-select")
        .empty()
        .append(
            `<option value="null" selected disabled>---` +
            message +
            `---</option>`
        );

    $.get({
        url: getUrlPrefix,
        dataType: "json",
        beforeSend: function () {
            $("#loading").fadeIn();
        },
        success: function (data) {
            if (getElementType === "select") {
                $("#" + id)
                    .empty()
                    .append(data.select_tag);
                if (
                    data.sub_categories !== "" &&
                    id.toString() === "sub-category-select"
                ) {
                    let nextElement = $("#" + id).data("element-id");
                    $("#" + nextElement)
                        .empty()
                        .append(data.sub_categories);
                }
            }
        },
        complete: function () {
            $("#loading").fadeOut();
        },
    });
}

// $(".image-uploader__zip").on("change", function (event) {
//     const file = event.target.files[0];
//     const target = $(this)
//         .closest(".image-uploader")
//         .find(".image-uploader__title");
//     if (file) {
//         const reader = new FileReader();
//         reader.onload = function (e) {
//             target.text(file.name);
//         };
//         reader.readAsDataURL(file);
//         $(".zip-remove-btn").show();
//     } else {
//         target.text("Upload File");
//         $(".zip-remove-btn").hide();
//     }
// });
// $(".image-uploader .zip-remove-btn").on("click", function (event) {
//     $(this).closest(".image-uploader").find(".image-uploader__zip").val(null);
//     $(this)
//         .closest(".image-uploader")
//         .find(".image-uploader__title")
//         .text("Upload File");
//     $(this).hide();
// });

$(".image-uploader__zip").on("change", function (event) {
    const file = event.target.files[0];
    const wrapper = $(this).closest(".image-uploader");
    const target = wrapper.find(".image-uploader__title");
    const removeBtn = wrapper.find(".zip-remove-btn");
    const icon = wrapper.find(".upload-preview-icon");

    const allowedTypes = ["application/pdf", "audio/mpeg", "video/mp4"];

    if (file) {

        if (!allowedTypes.includes(file.type)) {
            toastMagic.error("Only PDF, MP3 and MP4 files are allowed");
            $(this).val(null);

            target.text("Upload File").addClass("text-info");
            icon.attr("src", wrapper.data("default-icon"));
            removeBtn.hide();
            return;
        }

        target.text(file.name).removeClass("text-info");

        let newIcon = wrapper.data("default-icon");

        if (file.type === "application/pdf") {
            newIcon = wrapper.data("pdf-icon");
        }
        if (file.type === "audio/mpeg") {
            newIcon = wrapper.data("mp3-icon");
        }
        if (file.type === "video/mp4") {
            newIcon = wrapper.data("mp4-icon");
        }

        icon.attr("src", newIcon);

        removeBtn.show();
    } else {
        target.text("Upload File").addClass("text-info");
        icon.attr("src", wrapper.data("default-icon"));
        removeBtn.hide();
    }
});

$(".image-uploader .zip-remove-btn").on("click", function () {
    const wrapper = $(this).closest(".image-uploader");

    wrapper.find(".image-uploader__zip").val(null);
    wrapper.find(".image-uploader__title")
        .text("Upload File")
        .addClass("text-info");

    wrapper.find(".upload-preview-icon")
        .attr("src", wrapper.data("default-icon"));

    $(this).hide();
});
