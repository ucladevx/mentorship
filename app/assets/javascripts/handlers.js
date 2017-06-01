//to aggregate all code required on document.ready()

var onReady = function(){
	homepage();
	initModal();
	initMentors();
	initNewNoteModal();
	initNotePreview();
	$('body').click(onBodyClick);
};

var onBodyClick = function(e){
	triggerNav(e);
}


$(document).on('turbolinks:load', onReady);
