
function initCarousel(selector, config){

	var defaults = {
		prevArrow: '.prev',
		nextArrow: '.next'
	};

	defaults = Object.assign(defaults, config);

	$(selector).not('.slick-initialized').slick({
		slidesToShow: 3,
		slidesToScroll: 3,
		infinite: false,
		arrows: true,
		prevArrow: $(defaults.prevArrow),
		nextArrow: $(defaults.nextArrow),
		responsive: [
		{
			breakpoint: 1440,
			settings: {
				slidesToShow: 3,
				slidesToScroll: 3,
			}
		},
		{
			breakpoint: 1000,
			settings: {
				slidesToShow: 2,
				slidesToScroll: 2
			}
		},
		{
			breakpoint: 700,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		}
	]});

}