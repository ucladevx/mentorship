
function showModal(modal, id){

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
			$('#sidebar').addClass('show-modal');
			$('#mentorModal-' + id).removeClass('hide');

			break;
		case 'edit-profile':
			$('.edit-profile-modal-container').removeClass('hide');
			break;
		case 'save-progress':
			$('.save-progress-modal-container').removeClass('hide');
			break;
		case 'exit-conversation':
			$('#sidebar').addClass('show-modal');
			$('#exit-conversation').removeClass('hide');
			break;
		case 'rate-mentor':
			$('#sidebar').addClass('show-modal');
			$('#rate-mentor').removeClass('hide');
			break;
		case 'class-modal':
			$('.class-modal').removeClass('hide');
			break;
	}

	$('body').addClass('locked');
}

function hideModal(modal){

	$('.save-progress-notice').addClass('hide');

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
			$('#sidebar').removeClass('show-modal');
			$('.mentor-modal-container').addClass('hide');
			break;
		case 'edit-profile':
			$('.edit-profile-modal-container').addClass('hide');
			break;
		case 'save-progress':
			$('.save-progress-modal-container').addClass('hide');
			break;
		case 'exit-conversation':
			$('#sidebar').removeClass('show-modal');
			$('.exit-conversation-modal-container').addClass('hide');
			break;
		case 'rate-mentor':
			$('#sidebar').removeClass('show-modal');
			$('.rate-mentor-modal-container').addClass('hide');
			break;
		case 'class-modal':
			$('.class-modal').addClass('hide');
			break;
		case 'all':
			$('.modal-container').addClass('hide');
	}

	$('body').removeClass('locked');
}

function extractId(string){
	return string.substring(string.indexOf('-') + 1);
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
	$('.mentor-trigger-modal').click(function(e){
		var id = $(e.target)[0].id;
		id = extractId(id);

		hideModal('all');
		showModal('mentor', id);
	});
	$('.edit-profile-trigger-modal').click(function(){
		hideModal('all');
		showModal('edit-profile');
	});

	$('.save-progress-trigger-modal').click(function(){
		hideModal('all');
		showModal('save-progress');
	});

	$('.exit-conversation-trigger-modal').click(function(){
		hideModal('all');
		showModal('exit-conversation');
	});
	// $('.exit-conversation-trigger-modal').click(function(){
	// 	hideModal('all');
	// 	showModal('exit-conversation');
	// });

	$('.class-trigger-modal').click(function() {
		hideModal('all');
		showModal('class-modal');
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

function closeMentorModal(){
	hideModal('mentor');
}

function closeExitChatModal() {
	hideModal('exit-conversation');
}

function closeRateMentorModal() {
	hideModal('rate-mentor');
}
var initNewMentorModal = function(){
	$('.modal_mentor_accept').click(beginMessaging);
	$('.modal_mentor_decline').click(closeMentorModal);
}

var initExitMentorChatModal = function() {
	$('.exit-conversation-accept').click(closeChat);
	$('.exit-conversation-decline').click(closeExitChatModal);
}

var initRateMentorModal = function() {
	$('.rate-modal-accept').click(rateMentor);
	$('.rate-modal-decline').click(closeRateMentorModal);
}
