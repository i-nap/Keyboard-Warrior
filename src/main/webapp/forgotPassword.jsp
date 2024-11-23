<!doctype html>
<html>
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
	rel='stylesheet'>
<link href='' rel='stylesheet'>
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<style>
body {
	background-position: center;
	background-color: #141b1e;
	background-repeat: no-repeat;
	background-size: cover;
	color: #838887;
	font-family: "Rubik", Helvetica, Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	line-height: 1.5;
	text-transform: none;
	border-radius: 20px;
}

.forgot {
	background-color: #232A2D;
	padding: 12px;
	border-radius: 20px}

.padding-bottom-3x {
	padding-bottom: 72px !important
}

.card-footer {
	background-color: #232A2D;
}

.btn {
	font-size: 13px
}

.form-control:focus {
	color: #495057;
	background-color: #fff;
	border-color: #76b7e9;
	outline: 0;
	box-shadow: 0 0 0 0px #28a745
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
<body oncontextmenu='return false' class='snippet-body'>
	<div class="container padding-bottom-3x mb-2 mt-5">
		<div class="row justify-content-center">
			<div class="col-lg-8 col-md-10">
				<div class="forgot">
					<h2>Forgot your password?</h2>
					<p>Change your password in three easy steps. This will help you
						to secure your password!</p>
				</div>
				<form class="card mt-4" action="forgotPassword" method="POST" style="border: none" >
					<div class="card-body" style="background-color: #232A2D; border-color: #232A2D;">
						<div class="form-group">
							<label for="email-for-pass">Enter your email address</label> <input
								class="form-control field" type="text" name="email" id="email-for-pass" =""><small
								class="form-text text-muted">Enter the registered email address . Then we'll
								email a OTP to this address.</small>
						</div>
					</div>
					<div class="card-footer">
						<button class="btn btn-success btn" type="submit">Proceed</button>
						<a href="index.jsp">
						<button class="btn btn-danger btn" type="button">Back to
							Login</button>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type='text/javascript'
		src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
	<script type='text/javascript' src=''></script>
	<script type='text/javascript' src=''></script>
	<script type='text/Javascript'></script>
</body>
</html>