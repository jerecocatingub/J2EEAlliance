$(function() {
	$('.text').click(function() {
		$(this).prop('readonly', false);
	}).blur(function() {
		$(this).prop('readonly', true);
	});

	$('[modal-open]').on('click', function(e)  {
		var targetModal = $(this).attr('modal-open');
		$(targetModal).fadeIn(350);
		$(targetModal + ' .modal-content').slideDown(500);
		$('body').addClass('modal-open');
		e.preventDefault();
	});

	$('[modal-close]').on('click', function(e)  {
		var targetModal = jQuery(this).attr('modal-close');
		$(targetModal).fadeOut(350);
		$(targetModal + ' .modal-content').slideUp(500);
		$('body').removeClass('modal-open');
		e.preventDefault();
	});
});