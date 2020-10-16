$.fn.tabs = function() {
	var selector = this;
	
	this.each(function() {
		var obj = $(this); 
		
		$(obj.attr('href')).hide();
		
		$(obj).mouseleave(function () {
			$(selector).removeClass('active');
			
			$(selector).each(function(i, element) {
				$($(element).attr('href')).hide();
			});
			
			$(this).addClass('active');
			
			$($(this).attr('href')).fadeIn();
			
			return false;
		});

		$(obj).click(function () {
		    $(selector).removeClass('active');

		    $(selector).each(function (i, element) {
		        $($(element).attr('href')).hide();
		    });

		    $(this).addClass('active');

		    $($(this).attr('href')).fadeIn();

		    return false;
		});
	});

	$(this).show();
	
	$(this).first().click();
};