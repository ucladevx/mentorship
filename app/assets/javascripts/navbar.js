

function initNav(){
	$('.profile-trigger-modal').click(triggerNav);
}


function triggerNav(e){
	if(e.target == $('#profile-btn')[0] || e.target == $('.profile-trigger-modal')[0]){
		$('.profile-modal').toggleClass('hide');
	}
	else if(!$(e.target).hasClass('no-click-hide')){
		$('.profile-modal').addClass('hide');
	}
}