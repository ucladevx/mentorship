function showModal(modal){

	switch(modal){

		case 'login':
			$('.login-modal-container').removeClass('hide');
			break;
		case 'new-note':
			$('.new-note-modal-container').removeClass('hide');
			break;
		case 'sign-up':
			$('.sign-up-modal-container').removeClass('hide');
			break;
		case 'mentor':
			$('.mentor-modal-container').removeClass('hide');
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
		case 'sign-up':
			$('.sign-up-modal-container').addClass('hide');
			break;
		case 'mentor':
			$('.mentor-modal-container').addClass('hide');
			break;
		case 'all':
			$('.modal-container').addClass('hide');
	}

	$('body').removeClass('locked');
}



var initModal = function(){

	$('#overlay').click(hideModal);

	$('.login-trigger-modal').click(function(){
		hideModal('all');
		showModal('login');
	});

	$('#trigger-new-note').click(function(){
		hideModal('all');
		showModal('new-note');
	});
	$('.sign-up-trigger-modal').click(function(){
		hideModal('all');
		showModal('sign-up');
	});
	$('.mentor-trigger-modal').click(function(){
		hideModal('all');
		showModal('mentor');
	});


};
