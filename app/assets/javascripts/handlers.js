//to aggregate all code required on document.ready()

var init = false;

var onReady = function(){

	if(!init){
		homepage();
		initModal();
		initMentors();
		initNewNoteModal();
		init = true;
	}
	
};

var onBodyClick = function(e){

	initNav(e);

}


$(document).on('turbolinks:load', onReady);
$('body').click(onBodyClick);