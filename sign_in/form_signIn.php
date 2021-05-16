<link href="../sign_in/css/main.css" rel="stylesheet">
<link href="../sign_in/css/util.css" rel="stylesheet">

<div id="form_signIn" class="modal fade">
	<div class="modal-dialog login_dialog">
		<div class="modal-content">
			<div class="modal-body login_body">
        <div class="login100-form-title" style="background-image: url(../images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Sign In
					</span>
				</div>
        <form class="login100-form validate-form">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Registered username is required">
						<span class="label-input100">Username</span>
						<input class="input100" type="text" id="username" placeholder="Enter username">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Registered password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" id="password" placeholder="Enter password">
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Sign In
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<script>
	$(document).on('submit','.login100-form',function(e){
		e.preventDefault();
		$.ajax({
			type: 'post',
			url: '../sign_in/server/check_user.php',
			data:	{
				username: $('#username').val(),
				password: $('#password').val()
			}
		}).done(function(data){
			if (data == 1){
				location.reload(true);
			} else {
				$('.wrap-input100').addClass('alert-validate');
				$('.input100').val('');
				$('#username').focus();
			}
		}).fail(function(data){
			alert('Something went wrong!');
		})
	})
</script>
