function beginMessaging(e){

	var id = $(e.target)[0].id;
		id = extractId(id);

	closeMentorModal();
	selectMentor(id);
}

function closeChat() {
	hideModal('exit-conversation');
	showModal('rate-mentor');
}

function rateMentor() {
	hideModal('rate-mentor');
	$('#sidebar').removeClass('chatview');
}
function selectMentor(id){

	var selection = $('.mentor-wrapper').not($('#mentorWrapper-' + id));

	//updating mentor choice
	selection.addClass('hide-soft');
	setTimeout(function(){
		selection.addClass('hide');
		selection.removeClass('hide-soft');
	}, 500);


	//enable chatview
	$('#sidebar').addClass('chatview');

}

function resetMentorSelect(){
	$('.mentor-wrapper').removeClass('hide');
	$('.mentor-wrapper').removeClass('hide-soft');
	$('#sidebar').removeClass('chatview');
}
