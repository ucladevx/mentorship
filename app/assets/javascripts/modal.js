
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
		case 'edit-profile':
			$('.edit-profile-modal-container').removeClass('hide');
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
		case 'edit-profile':
			$('.edit-profile-modal-container').addClass('hide');
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
	$('.edit-profile-trigger-modal').click(function(){
		hideModal('all');
		showModal('edit-profile');
	});
};


function updateDropdownChoice(e){

	//note-type, ucla-class
	var id = $(e.target).parent()[0].id;

	//option: e.g. CS 31, CS 32
	var choiceText = $(e.target)[0].innerHTML;

	//update view
	var elementToUpdate = $('#' + id + '-selected');
	elementToUpdate.html(choiceText);

	//update hidden field for form
	var hiddenField = $('#' + id + '-hidden');
	hiddenField.val(choiceText);

}

var initNewNoteModal = function(){
	$('.dropdown-choice').click(updateDropdownChoice);
}

function beginMessaging(){
	alert("Accept");
}
$('.modal_mentor_accept').click(beginMessaging);
$('.modal_mentor_decline').click(hideModal);
