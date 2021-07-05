let isCorrect = false;

/*setTimeout (function locationPage(){
	window.location = "http://localhost:7000/MainPage.jsp"
	}, 5000);*/


$('#btn_login').on('click', function(e) {
	e.preventDefault();

	let p_student_number = $('#id').val();
	let p_student_pw = $('#password').val();
	let action = $('.login').attr('action');
	let param = $('form[name=loginForm]').serialize();

	let $this = $('.login'),
		$state = $this.find('button > .state');


	if (p_student_number != '' && p_student_pw != '') {
		$.ajax({
			type: 'post',
			data: param,
			url: action,
			dataType: 'text',
			success: function(data) {
				if (data == '1') {
					$this.addClass('loading');
					$state.html('Authenticating');
					setTimeout(function() {
						$this.addClass('ok');
						$state.html('Welcome back!');
						setTimeout(function() {
							$state.html('Log in');
							$this.removeClass('ok loading');
							$(location).attr('href', "/MainPage.jsp");
						}, 1000);
					}, 2000);
				}
				else {
					alert('로그인 실패');
				}
			},
			error: function(e) {
				alert('ajax 통신 실패 : ' + e);
			},
		});
	} else {
		alert('로그인 정보를 입력해주십시오.');
	}
});

function logoutAction() {
	$.ajax({
		url: 'logout.jsp', // session.invalidate() - 세션값 모두 날림
		success: function(data) {
			$('#loginForm').html(data);
			// @data - json, xml, html, text
		},
		error: function(e) {
			//@e - XMLHttpRequest
		},
	});
}


/*$('#btn_login').on('click', function(e) {
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
		isCorrect = true;
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

				$(location).attr('href', "/paprika/signIn.do");
				isCorrect = false;
				$('#login').submit();
			}, 1000);
		}, 2000);
	}
});*/
