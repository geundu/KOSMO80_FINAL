var working = false;

/*setTimeout (function locationPage(){
	window.location = "http://localhost:9010/project/frameForm.jsp"
	}, 5000);*/

$('.login').on('submit', function (e) {
	e.preventDefault();
	if (working) return;
	working = true;
	var $this = $(this),
		$state = $this.find('button > .state');
	$this.addClass('loading');
	$state.html('Authenticating');
	setTimeout(function () {
		$this.addClass('ok');
		$state.html('Welcome back!');
		setTimeout(function () {
			$state.html('Log in');
			$this.removeClass('ok loading');
			 $(location).attr('href', "http://localhost:9010/project/frameForm.jsp");
			working = false;
		}, 4000);
	}, 3000);
});