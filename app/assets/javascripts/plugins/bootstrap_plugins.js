ready = function() {

	$('#datetimepicker input').datetimepicker();

};
$(document).ready(ready);
$(document).on('page:load', ready);