<!DOCTYPE html>
<html lang="en">
<head>
	<title>Halaman Login Circle Student</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="../plugins/Login_v17/Login_v17/image/png" href="../plugins/Login_v17/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../plugins/Login_v17/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../plugins/Login_v17/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../plugins/Login_v17/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================--><!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../plugins/Login_v17/fonts/Linearicons-Free-v1.0.0/css/material-design-iconic-font.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../plugins/Login_v17/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../plugins/Login_v17/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../plugins/Login_v17/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../plugins/Login_v17/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../plugins/Login_v17/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../plugins/Login_v17/css/util.css">
	<link rel="stylesheet" type="text/css" href="../plugins/Login_v17/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
			<form class="login100-form validate-form"  method="POST" action="../proslogin_parent.php">
				<span class="login100-form-title p-b-34">
						Account Login
					</span>
			
					<div class="wrap-input100 rs1-wrap-input100 validate-input m-b-20" data-validate="Type user name">
						<input class="input100" type="text" name='a' placeholder='User name'>
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 rs2-wrap-input100 validate-input m-b-20" data-validate="Type password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name='b' placeholder='Password'>
						<span class="focus-input100"></span>
						
					</div>
					
					<div class="container-login100-form-btn">
						<button name="login" class="login100-form-btn">
							Sign in
						</button>
					</div>

					<div class="w-full text-center p-t-27 p-b-239">
						<span class="txt1">
							Forgot hub admin TU sekolah
						</span>
					</div>

					<div class="w-full text-center">
						
					</div>
				</form>
               
				<div class="login100-more" style="background-image: url('../plugins/Login_v17/images/bg-ihbs 1.jpg');"></div>
			</div>
		</div>
	</div>
	
						</div>
		</div>
	</div>
	
	
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="../plugins/Login_v17/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="../plugins/Login_v17/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="../plugins/Login_v17/vendor/bootstrap/js/popper.js"></script>
	<script src="../plugins/Login_v17/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="../plugins/Login_v17/vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script src="../plugins/Login_v17/vendor/daterangepicker/moment.min.js"></script>
	<script src="../plugins/Login_v17/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="../plugins/Login_v17/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="../plugins/Login_v17/js/main.js"></script>

</body>
</html>