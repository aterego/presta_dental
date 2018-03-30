jQuery(document).ready(function($) {  
		if(POS_HOME_NEW_PAGINATION==null || POS_HOME_NEW_PAGINATION =="") {POS_HOME_NEW_PAGINATION = false} else { POS_HOME_NEW_PAGINATION = true}
		if(POS_HOME_NEW_NAV==null || POS_HOME_NEW_NAV =="") {POS_HOME_NEW_NAV = false} else {POS_HOME_NEW_NAV = true}
		var owl = $(".pos_new_product .newSlide");
			owl.owlCarousel({
			items :POS_HOME_NEW_ITEMS,
			slideSpeed: POS_HOME_NEW_SPEED,
			pagination :POS_HOME_NEW_PAGINATION,
			navigation :POS_HOME_NEW_NAV,
			itemsDesktop : [1199,1],
			itemsDesktopSmall : [991,1],
			itemsTablet: [767,2],
			itemsMobile : [480,1]
		});
	});
