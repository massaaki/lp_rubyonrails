//Email-send
update_email_field = function(){
	$('#section-email').on('ajax:success', function(){
		$("#section-email").load(location.href +" #section-email",function(){
			$('.paralax-section2-animation').addClass('is-showing');
			$("#section-email").addClass('animated flipInX');
		});
	});

	$('#section-email2').on('ajax:success', function(){
		$("#section-email2").load(location.href +" #section-email2",function(){
			$('.paralax-section2-animation').addClass('is-showing');
			$("#section-email2").addClass('animated flipInX');
		});
	});
}