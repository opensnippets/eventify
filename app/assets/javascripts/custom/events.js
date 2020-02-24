ready = function(){
	if ($("#payment_options").val() === "0"){
		$("#payable_amount").hide();
	} else {
		$("#payable_amount").show();
	}
	$("#payment_options").on("change", function(){
		if ($(this).val() == 0){

			$("#payable_amount").hide();
		} else {
			$("#payable_amount").show();
		}
	});
}
$(document).ready(ready);
$(document).on('page:load', ready);

