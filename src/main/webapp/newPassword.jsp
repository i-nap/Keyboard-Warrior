<!doctype html>
<html>
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>Snippet - BBBootstrap</title>
<link
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
	rel='stylesheet'>
<link
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'
	rel='stylesheet'>
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<style>
.placeicon {
	font-family: fontawesome
}

.custom-control-label::before {
	background-color: #dee2e6;
	border: #dee2e6
}
html{
	background-color: #141B1E;
}

body{
	background-color: #141B1E;
}
.btn{
	width: 120px;
	height: 48px;
	border-radius: 10px;
	background-color: #141b1e;
	border: none;
	color: #838887;
}


input[type=text]:focus {
	outline: 2px solid #8CCF7E;
	color: #838887;
}

input[type=password]:focus {
	outline: 2px solid #8CCF7E;
	color: #838887;
}

input[type=email]:focus {
	outline: 2px solid #8CCF7E;
	color: #838887!important;
}

.field{
	border-radius: 10px;
	border: none;
	height: 50px;
	background-color: #141B1E;
	padding: 0px 0px 0px 8px;
	color: #838887;
}
</style>
</head>
<body oncontextmenu='return false' class='snippet-body bg-info'>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.css">
	<div style="background-color: #141B1E; color: #838887">
		<!-- Container containing all contents -->
		<div class="container" >
			<div class="row justify-content-center" >
				<div class="col-12 col-md-9 col-lg-7 col-xl-6 mt-5" style="background-color: #232A2D; border-radius: 20px">
					<!-- White Container -->
					<div class="container mt-2 mb-2 px-0" >
						<!-- Main Heading -->
						<div class="row justify-content-center align-items-center pt-3">
							<h1>
								<strong>Reset Password</strong>
							</h1>
						</div>
						<div class="pt-3 pb-3">
							<form class="form-horizontal" action="newPassword" method="POST">
								<!-- User Name Input -->
								<div class="form-group row justify-content-center px-3">
									<div class="col-9 px-0">
										<input type="text" name="password" placeholder="&#xf084; &nbsp; New Password"
											class="form-control border-info placeicon field">
									</div>
								</div>
								<!-- Password Input -->
								<div class="form-group row justify-content-center px-3">
									<div class="col-9 px-0">
										<input type="password" name="confPassword"
											placeholder="&#xf084; &nbsp; Confirm New Password"
											class="form-control border-info placeicon field">
									</div>
								</div>
							
								<!-- Log in Button -->
								<div class="form-group row justify-content-center">
									<div class="col-3 px-3 mt-3">
										<input type="submit" value="Reset"
											class="btn btn-block btn-info btn">
									</div>
								</div>
							</form>
						</div>
						<!-- Alternative Login -->
						<div class="mx-0 px-0">
							
							<!-- Horizontal Line -->
							<div class="px-4 pt-5">
								<hr>
							</div>
							<!-- Register Now -->
							<div class="pt-2">
								<div class="row justify-content-center">
									<h5>
										Don't have an Account?<span><a href="#"
											class="text-danger"> Register Now!</a></span>
									</h5>
								</div>
								<div
									class="row justify-content-center align-items-center pt-4 pb-5">
									<div class="col-4">
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type='text/javascript'
		src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
	
</body>
</html>