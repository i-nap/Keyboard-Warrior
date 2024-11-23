<!DOCTYPE html>
<html lang="en">
<!-- comment lahi ctrl+/ -->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="assets/keyboard_5643.ico">
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>

<body style="background-color: #141b1e!important;">


<div class="container-fluid">
    <div class="box">

        <div class="left-box">
            <form action="LoginServlet" method="post">
                <div class="login-overall">
                    <div class="login-text">
                        <p class="fs-5 welcome">Welcome back</p>
                        <p class="fs-1 warrior">Warrior</p>
                    </div>
                    <div class="login-forum">
                        <input type="text" placeholder="username or email" class="username" name="username" id="username" v-model="username" required>
                        <input type="password" placeholder="password" class="password" name="password" required>
                    </div>
                    <div class="after-login-forum">
                        <input type="checkbox">
                        <p class="remember">remember me</p>
                        <a href="forgotPassword.jsp">
                        <p class="forget">forget password?</p>
                        </a>
                    </div>
                    <div class="login">
                        <button class="login-btn">Login</button>
                    </div>

                </div>
            </form>
        </div>

        <div class="right-box">
            <form action="RegisterServlet" method="post">
                <div class="register-overall">
                    <div class="register-text">
                        <p class="fs-5 welcome-reg">Rise to the call</p>
                        <p class="fs-1 warrior-reg">Warrior!</p>
                    </div>

                    <div class="login-forum">
                        <input type="text" placeholder="username" class="username-reg" name="username" required>
                        <input type="email" placeholder="email" class="email-reg" name="email" required>
                        <input type="password" placeholder="password" class="password-reg" name="password" pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{8,}$"        title="Password should be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, and one digit."  required>
                        <input type="password" placeholder="confirm-password" class="con-password-reg" name="passwordCon" required>
                    </div>

                    <div class="register">
                        <button class="reg-btn">Register</button>
                    </div>

                </div>
            </form>

        </div>
    </div>
</div>

<script src="index.js"></script>



</body>
</html>