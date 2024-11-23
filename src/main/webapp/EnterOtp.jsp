<html>
<head>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<style type="text/css">
.form-gap {
    padding-top: 70px;
}
body {
	background-position: center;
	background-color: #141b1e;
	background-repeat: no-repeat;
	background-size: cover;
	color: #505050;
	font-family: "Rubik", Helvetica, Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	line-height: 1.5;
	text-transform: none;
	border-radius: 20px;
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

<body>
	<div class="form-gap" ></div>
	<div class="container" style="background-color: #232A2D">
		<div class="row" style="background-color: #141B1E">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-body" style="background-color: #232A2D">
						<div class="text-center">
							<h3>
								<i class="fa fa-lock fa-4x"></i>
							</h3>
							<h2 class="text-center">Enter OTP</h2>
									<%
		  			if(request.getAttribute("message")!=null)
		  			{
		  				out.print("<p class='text-danger ml-1'>"+request.getAttribute("message")+"</p>");
		  			}
		  
		  %>
	
							<div class="panel-body">

								<form id="register-form" action="ValidateOtp" role="form" autocomplete="off"
									class="form" method="post">

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-envelope color-blue"></i></span> <input
												id="opt" name="otp" placeholder="Enter OTP"
												class="form-control field" type="text" required="required">
										</div>
									</div>
									<div class="form-group">
										<input name="recover-submit"
											class="btn btn-lg btn-primary btn-block btn"
											value="Reset Password" type="submit">
									</div>

									<input type="hidden" class="hide" name="token" id="token"
										value="">
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>