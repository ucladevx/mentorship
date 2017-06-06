
function initCarousel(selector, config, callback){

	if(typeof callback != 'undefined'){
		$('.carousel-nav').click(callback);
	}

	var defaults = {
		numToShow: [3, 2, 1],
		prevArrow: '.prev',
		nextArrow: '.next'
	};

	var carouselConfig = Object.assign(defaults, config);

	console.log(selector + ', ' + carouselConfig.numToShow)

	$(selector).not('.slick-initialized').slick({
		slidesToShow: carouselConfig.numToShow[0],
		slidesToScroll: carouselConfig.numToShow[0],
		infinite: false,
		arrows: true,
		prevArrow: $(carouselConfig.prevArrow),
		nextArrow: $(carouselConfig.nextArrow),
		responsive: [
		{
			breakpoint: 1440,
			settings: {
				slidesToShow: carouselConfig.numToShow[0],
				slidesToScroll: carouselConfig.numToShow[0]
			}
		},
		{
			breakpoint: 1000,
			settings: {
				slidesToShow: carouselConfig.numToShow[1],
				slidesToScroll: carouselConfig.numToShow[1]
			}
		},
		{
			breakpoint: 700,
			settings: {
				slidesToShow: carouselConfig.numToShow[2],
				slidesToScroll: carouselConfig.numToShow[2]
			}
		}
	]});

}