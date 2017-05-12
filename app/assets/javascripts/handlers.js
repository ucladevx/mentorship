//to aggregate all code required on document.ready()

var onReady = function(){

	homepage();
	initModal();
	//initNotes();

}
$(document).on('turbolinks:load', onReady);