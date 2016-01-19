$(document).ready(function(){



$(".follow-user").on('ajax:complete', , function(e){   
	$(e.currentTarget).parent().hide();
});

$(".delete-boat").on('ajax:complete', , function(e){   
	$(e.currentTarget).parent().hide();
});

$(".delete-job").on('ajax:complete', , function(e){   
	$(e.currentTarget).parent().hide();
});

});