function onSidebarClick () {
		console.log('sidebarCollapse');
      $('#sidebar').toggleClass('active');
  }

(function($) {

	"use strict";

	var fullHeight = function() {

		$('.js-fullheight').css('height', $(window).height());
		$(window).resize(function(){
			console.log('js-fullheight');
			$('.js-fullheight').css('height', $(window).height());
		});

	};
	fullHeight();

	$('#sidebarCollapse').on('click', onSidebarClick);

})(jQuery);

/*export default onSidebarClick; 연동 2억 5천의 코멘트 */
