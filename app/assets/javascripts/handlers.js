//to aggregate all code required on document.ready()

var onReady = function(){

	homepage();
	initModal();
	//initNotes();

};

var onBodyClick = function(e){

	initNav(e);

}


$(document).on('turbolinks:load', onReady);
$('body').click(onBodyClick);