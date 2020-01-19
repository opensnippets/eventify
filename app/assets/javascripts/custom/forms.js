ready = function() {

	$('#event_form').validate({
		rules: {
			title: 'required'
		},
		messages: {
			title: 'Enter event title'
		}
	});

};
$(document).ready(ready);
$(document).on('page:load', ready);