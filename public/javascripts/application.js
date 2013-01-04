function init() {
	$('input.hideable_element_toggle').on({
		initialize: updateCorrespondingHideableElementsDisplayValue,
		change: updateCorrespondingHideableElementsDisplayValue
	});
	$('.hideable_element_toggle').trigger("initialize");
}

function updateCorrespondingHideableElementsDisplayValue() {
	var checkBoxIdComponents = $(this).attr("id").split("_");
	var hideableElementIndex = checkBoxIdComponents[checkBoxIdComponents.length - 1];
	var hideableElementId = "hideable_element_" + hideableElementIndex;
	if ($(this).attr("type") == "checkbox") {
		if ($(this).is(':checked')) {
			$('#' + hideableElementId).show();
		}
		else {
			$('#' + hideableElementId).hide();
		}
	}
	else {
		console.log("handleHiddenElementToggle(): $(this).attr(\"type\") != \"checkbox\"");
	}
}