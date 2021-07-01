let isCorrect = false;

/*setTimeout (function locationPage(){
	window.location = "http://localhost:9010/project/frameForm.jsp"
	}, 5000);*/



$('#btn_login').on('click', function(e) {
	e.preventDefault();

	let p_student_number = $('#id').val();
	let p_student_pw = $('#password').val();

	if (p_student_number == '') {
		alert('아이디를 입력하세요.');
		return isCorrect;
	}
	else if (p_student_pw == '') {
		alert('비밀번호를 입력하세요.');
		return isCorrect;
	}
	else {
		/*isCorrect = true;*/
		let $this = $('.login'),
			$state = $this.find('button > .state');
		$this.addClass('loading');
		$state.html('Authenticating');
		setTimeout(function() {
			$this.addClass('ok');
			$state.html('Welcome back!');
			setTimeout(function() {
				$state.html('Log in');
				$this.removeClass('ok loading');

				/*$(location).attr('href', "/paprika/signIn.do");*/
				/*isCorrect = false;*/
				$('#login').submit();
			}, 1000);
		}, 2000);
	}
});
