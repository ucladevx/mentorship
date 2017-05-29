//to aggregate all code required on document.ready()

var init = false;

if(!init){
	var onReady = function(){
		homepage();
		initModal();
		initMentors();
		initNewNoteModal();
	};

	var onBodyClick = function(e){
		initNav(e);
	}

	init = true;
}


$(document).on('turbolinks:load', onReady);
$('body').click(onBodyClick);