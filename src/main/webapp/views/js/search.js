$(function() {
	var availableTags = [ "Agartala[IXA]",

	"Agatti Island[AGX]",

	"Agra[AGR]",

	"Ahmedabad[AMD]",

	"Aizwal[AJL]",

	"Allahabad[IXD]",

	"Amritsar[ATQ]",

	"Aurangabad[IXU]",

	"Bagdogra[IXB]",

	"Bangalore[BLR]",

	"Belgaum[IXG]",

	"Bellary[BEP]",

	"Bengaluru[BLR]",

	"Bhavnagar[BHU]",

	"Bhopal[BHO]",

	"Bhubaneshwar[BBI]",

	"Bhuj[BHJ]",

	"Bikaner[BKB]",

	"Calicut[CCJ]",

	"Chandigarh[IXC]",

	"Chennai[MAA]",

	"Cochin[COK]",

	"Coimbatore[CJB]",

	"Dehradun[DED]",

	"Delhi[DEL]",

	"Dharamshala[DHM]",

	"Dibrugarh[DIB]",

	"Dimapur[DMU]",

	"Diu[DIU]",

	"Gaya[GAY]",

	"Goa[GOI]",

	"Gorakhpur[GOP]",

	"Guwahati[GAU]",

	"Gwalior[GWL]",

	"Hubli[HBX]",

	"Hyderabad[HYD]",

	"Imphal[IMF]",

	"Indore[IDR]",

	"Jabalpur[JLR]",

	"Jagdalpur[JGB]",

	"Jaipur[JAI]",

	"Jammu[IXJ]",

	"Jamnagar[JGA]",

	"Jamshedpur[IXW]",

	"Jodhpur[JDH]",

	"Jorhat[JRH]",

	"Kandla[IXY]",

	"Kanpur[KNU]",

	"Khajuraho[HJR]",

	"Kochi[COK]",

	"Kolhapur[KLH]",

	"Kolkata[CCU]",

	"Kozhikode[CCJ]",

	"Kulu[KUU]",

	"Latur[LTU]",

	"Leh[IXL]",

	"Lilabari[IXI]",

	"Lucknow[LKO]",

	"Ludhiana[LUH]",

	"Madurai[IXM]",

	"Mangalore[IXE]",

	"Mumbai[BOM]",

	"Mysore[MYQ]",

	"Nagpur[NAG]",

	"Nanded[NDC]",

	"Nasik[ISK]",

	"New Delhi[DEL]",

	"Pantnagar[PGH]",

	"Pathankot[IXP]",

	"Patna[PAT]",

	"Pondicherry[PNY]",

	"Porbandar[PBD]",

	"Port Blair[IXZ]",

	"Pune[PNQ]",

	"Raipur[RPR]",

	"Rajahmundry[RJA]"

	];
	function split(val) {
		return val.split(/,\s*/);
	}
	function extractLast(term) {
		return split(term).pop();
	}
	$("#tags")
	// don't navigate away from the field on tab when selecting an item
	.bind(
			"keydown",
			function(event) {
				if (event.keyCode === $.ui.keyCode.TAB
						&& $(this).data("ui-autocomplete").menu.active) {
					event.preventDefault();
				}
			}).autocomplete(
			{
				minLength : 0,
				source : function(request, response) {
					// delegate back to autocomplete, but extract the last term
					response($.ui.autocomplete.filter(availableTags,
							extractLast(request.term)));
				},
				focus : function() {
					// prevent value inserted on focus
					return false;
				},
				select : function(event, ui) {
					var terms = split(this.value);
					// remove the current input
					terms.pop();
					// add the selected item
					terms.push(ui.item.value);
					// add placeholder to get the comma-and-space at the end
					terms.push("");
					this.value = terms.join("");
					return false;
				}
			});
	$("#tags2")
	// don't navigate away from the field on tab when selecting an item
	.bind(
			"keydown",
			function(event) {
				if (event.keyCode === $.ui.keyCode.TAB
						&& $(this).data("ui-autocomplete").menu.active) {
					event.preventDefault();
				}
			}).autocomplete(
			{
				minLength : 0,
				source : function(request, response) {
					// delegate back to autocomplete, but extract the last term
					response($.ui.autocomplete.filter(availableTags,
							extractLast(request.term)));
				},
				focus : function() {
					// prevent value inserted on focus
					return false;
				},
				select : function(event, ui) {
					var terms = split(this.value);
					// remove the current input
					terms.pop();
					// add the selected item
					terms.push(ui.item.value);
					// add placeholder to get the comma-and-space at the end
					terms.push("");
					this.value = terms.join("");
					return false;
				}
			});
});

//-----------------------------------------------
$(function() {
	$("#datepicker").datepicker(
			{
				minDate : 0,
				numberOfMonths : 2,
				showButtonPanel : true,
				onClose : function(selectedDate) {
					if (selectedDate != "")
						$("#datepicker2").datepicker("option", "minDate",
								selectedDate);
				}
			});
});

//-----------------------------------------------
$(function() {
	$("#datepicker2").datepicker({
		numberOfMonths : 2,
		minDate : 0,
		showButtonPanel : true,
		onClose : function(selectedDate) {
			$("#datepicker").datepicker("option", "maxDate", selectedDate);
		}
	});
});

//-----------------------------------------------
function check() {
	if (document.getElementById('one').checked) {
		document.getElementById('datepicker2').disabled = true;
	} else {

		document.getElementById('datepicker2').disabled = false;
	}
}

//-------------------------------------------------

$(function() {
	$('#carousel').infiniteCarousel({
		displayTime : 2000,
		textholderHeight : .10
	});
});

//------------------------------------------------

$(function() {
	$("#tabs").tabs();
});


//-----------------------------------------------

