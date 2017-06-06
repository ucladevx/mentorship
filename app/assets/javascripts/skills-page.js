function initSkills(){

	initCarousel('.skill-carousel', {
		numToShow: [1,1,1]
	}, updateProgressBar);

}

/*
@param progressDecimal is a value between 0 - 1
returns a string formatted 'n%', where n is between 0 - 100
*/
function formatPercentage(progressDecimal){
	var percent = progressDecimal * 100;
	return percent + '%';
}

function updateProgressBar(progress){

	var listOfCarouselModules = Array.from($('.skill-module'));
	var numberModules = listOfCarouselModules.length;
	
	//0 - n - 1
	var currentIndex = listOfCarouselModules.indexOf($('.slick-current')[0]);
	var percentage = currentIndex / (numberModules - 1);

	$('#progress').animate({
		width: formatPercentage(percentage)
	});
}