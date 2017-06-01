

/*
@param string is in the format '[id num]-descriptor-of-element'
@param delim is typically '-', used to delim the string
*/
function getId(string, delim){
	return string.substring(0, string.indexOf(delim));
}

function showPreview(e){

	var id = getId($(e.target)[0].id, '-');

	var preview = $('#' + id + '-preview');
	preview.removeClass('hide');

}

function hidePreview(e){

	var id = getId($(e.target)[0].id, '-');

	var preview = $('#' + id + '-preview');
	preview.addClass('hide');

}

var initNotePreview = function(){

	$('.trigger-preview-on').click(showPreview);
	$('.trigger-preview-off').click(hidePreview);

}







