//to aggregate all code required on document.ready()

var initReady = false;
var onReady = function(){
	if(!initReady){
		homepage();
		initModal();
		initMentors();
		initNewNoteModal();
		initNotePreview();
		initReady = true;
	}
};

var initBody = false;
var onBodyClick = function(e){
	if(!initBody){
		initNav(e);
		initBody = true;
	}
}


$(document).on('turbolinks:load', onReady);
$('body').click(onBodyClick);