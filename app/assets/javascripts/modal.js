

function showModal(){
	$('.modal-container').removeClass('hide');
	$('body').addClass('locked');
}

function hideModal(){
	$('.modal-container').addClass('hide');
	$('body').removeClass('locked');
}

var initModal = function(){

	$('#overlay').click(hideModal);
	$('#login-trigger-modal').click(showModal);


};
