jQuery(document).ready(function($) {

	$(".tab_content").hide();
	$(".tab_content:first").show(); 

	$("ul.tabs li").click(function() {
		$("ul.tabs li").removeClass("active");
		$(this).addClass("active");
		$(".tab_content").hide();
		$(".tab_content").removeClass("animate1 {$tab_effect}");
		var activeTab = $(this).attr("rel"); 
		$("#"+activeTab) .addClass("animate1 {$tab_effect}");
		$("#"+activeTab).fadeIn(); 
	});
	
		if(POS_HOME_PRODUCTTAB_PAGINATION==null || POS_HOME_PRODUCTTAB_PAGINATION =="") {POS_HOME_PRODUCTTAB_PAGINATION = false} else { POS_HOME_PRODUCTTAB_PAGINATION = true}
	
		var owl = $(".productTabContent");
		owl.owlCarousel({
		items :POS_HOME_PRODUCTTAB_ITEMS,
		slideSpeed: POS_HOME_PRODUCTTAB_SPEED,
		 pagination :POS_HOME_PRODUCTTAB_PAGINATION,
		 navigation : true,
		itemsDesktop : [1199,3],
		itemsDesktopSmall : [991,3],
		itemsTablet: [767,3],
		itemsMobile : [480,1]
		});
	});
