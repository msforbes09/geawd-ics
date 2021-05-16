<?php
		session_start();
	if(isset($_SESSION["id"])){
		//header('location: ../');
	}
?>
<!DOCTYPE html>
<html lang="en" >
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="../images/geawd.ico">
	<title>G.E.A.W.D.</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<div class="welcome">
				<p style="font-size: 40px;">Welcome</p>
			</div>
			<div class="form">
				<input id="username" type="text" placeholder="Username" autocomplete="on" />
				<input id="password" type="password" placeholder="Password" autocomplete="on" />
				<button id="login-button">Login</button><br />
			</div>
		</div>
		<ul class="bg-bubbles">
			<li class="b0"></li>
			<li class="b1"></li>
			<li class="b2"></li>
			<li class="b3"></li>
			<li class="b4"></li>
			<li class="b5"></li>
			<li class="b6"></li>
			<li class="b7"></li>
			<li class="b8"></li>
			<li class="b9"></li>
		</ul>
		<!--
		-->
	</div>
	<script src='../bootstrap/js/jquery-3.2.1.js'></script>
	<script  src="js/index.js"></script>
</body>
</html>
