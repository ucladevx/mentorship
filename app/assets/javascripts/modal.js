

function showModal(modal){

	switch(modal){

		case 'login':
			$('.login-modal-container').removeClass('hide');
			break;
		case 'new-note':
			$('.new-note-modal-container').removeClass('hide');
			break;

	}

	
	$('body').addClass('locked');
}

function hideModal(modal){

	switch(modal){
		case 'login':
			$('.login-modal-container').addClass('hide');
			break;
		case 'new-note':
			$('.new-note-modal-container').addClass('hide');
			break;
	}

	

	$('body').removeClass('locked');
}

var initModal = function(){

	$('#overlay').click(hideModal);
	$('#login-trigger-modal').click(function(){
		showModal('login');
	});

	$('#trigger-new-note').click(function(){
		showModal('new-note');
	});


};
