//to aggregate all code required on document.ready()

var onReady = function(){
	homepage();

	initModal();
	initMentors();
	initNewNoteModal();
	initNotePreview();
	initProfileTab();
	initNewMentorModal();
	$('body').click(onBodyClick);
};

var onBodyClick = function(e){
	triggerNav(e);
}


$(document).on('turbolinks:load', onReady);
