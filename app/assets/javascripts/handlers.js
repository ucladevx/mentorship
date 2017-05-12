//to aggregate all code required on document.ready()

var onReady = function(){

	homepage();
	initModal();
	//initNotes();
	$('#trigger-new-note').click(showModal);

}
$(document).on('turbolinks:load', onReady);