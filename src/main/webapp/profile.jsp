<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="profile.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body>
<div class="main" id="main">

    <div class="container rounded user_info">
        <div class="row">
            <div class="col-md-12">
                <a href="main.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="#838887"
                         class="bi bi-chevron-left back" id="back" viewBox="0 0 16 16">
                        <path fill-rule="evenodd"
                              d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
                    </svg>
                </a>
                <div class="d-flex flex-column align-items-center justify-items-center text-center box" id="box">
                    <svg xmlns="http://www.w3.org/2000/svg" width="200" height="200" fill="#838887"
                         class="bi bi-person" viewBox="0 0 16 16" style="margin: 0;">
                        <path
                                d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0m4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4m-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664z"/>
                    </svg>
                    <div class="info">
                        <span class="font-weight-bold" id="username"
                              style="color: #dadada;"><%= session.getAttribute("loggedInUsername") %></span>
                        <svg xmlns="http://www.w3.org/2000/svg" onclick="edit()" width="15" height="15"
                             fill="#dadada" class="bi bi-pen" id="pen" viewBox="0 0 16 16">
                            <path
                                    d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001m-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
                        </svg>
                    </div>
                    <span class="text email" id="email"
                          style="color: #838887 !important"><%= session.getAttribute("loggedInEmail") %></span>
                    <div class="records" id="records">
                        <div class="time">
                            <p class="font-weight-bold ">time</p>
                            <div class="time_record">
                                <div class="mode_value">
                                    <p class="text mode">15sec</p>
                                    <span class="font-weight-bold value">20</span>
                                    <p class="text rate">wpm</p>
                                </div>
                                <div class="mode_value">
                                    <p class="text mode">30sec</p>
                                    <span class="font-weight-bold value">20</span>
                                    <p class="text rate">wpm</p>
                                </div>
                                <div class="mode_value">
                                    <p class="text mode">60sec</p>
                                    <span class="font-weight-bold value">20</span>
                                    <p class="text rate">wpm</p>
                                </div>
                            </div>
                        </div>
                        <div class="words">
                            <p class="font-weight-bold">word</p>
                            <div class="word_record">
                                <div class="mode_value">
                                    <p class="text mode">15words</p>
                                    <span class="font-weight-bold value">20</span>
                                    <p class="text rate">wpm</p>
                                </div>
                                <div class="mode_value">
                                    <p class="text mode">50words</p>
                                    <span class="font-weight-bold value">20</span>
                                    <p class="text rate">wpm</p>
                                </div>
                                <div class="mode_value">
                                    <p class="text mode last">60words</p>
                                    <span class="font-weight-bold value">20</span>
                                    <p class="text rate">wpm</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="line" id="line" hidden></div>

    <div class="col-md-8 edit" id="edit" hidden>
        <form action="EditProfile" method="post" name="editForm">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <div class="d-flex flex-row align-items-center back topText" onclick="editBack()"><i
                            class="fa fa-long-arrow-left mr-1 mb-1"></i>
                        <h6 id="back">Back to home</h6>
                    </div>
                    <h6 class="text-right topText">Edit Profile</h6>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><input type="text" class="form-control textBox" placeholder="Id"
                                                 value="<%= session.getAttribute("loggedInId") %>" readonly>
                    </div>
                    <div class="col-md-6"><input type="text" class="form-control textBox"
                                                 value="<%= session.getAttribute("loggedInUsername") %>"
                                                 placeholder="Username" name="newUsername"></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><input type="email" class="form-control textBox" placeholder="Email"
                                                 value="<%= session.getAttribute("loggedInEmail") %>" readonly></div>
                    <div class="col-md-6"><input type="password" class="form-control textBox" value=""
                                                 placeholder="Old Password" name="oldPassword"></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><input type="password" class="form-control textBox" placeholder="New Password"
                                                 value="" name="newPassword"
                                                 pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{8,}$"
                                                 title="Password should be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, and one digit."
                    >
                    </div>
                    <div class="col-md-6"><input type="password" class="form-control textBox" value=""
                                                 placeholder="Confirm Password" name="conPassword">
                    </div>
                </div>
                <div class="buttons text-right">
                    <div class="mt-5 col-md-6">
                        <button class="btn btn-primary delete-button" type="button" name="deleteBtn"
                                onclick="showConfirmBox()">Delete Profile
                        </button>

                    </div>
                    <div class="mt-5">
                        <button class="btn btn-primary profile-button" type="submit" name="submitBtn">Save
                            Profile
                        </button>
                    </div>
                </div>
            </div>

        </form>
        <form action="DeleteProfile" method="post">
            <div class="overlay" id="overlay" hidden>
                <div class="confirm-box">
                    <div onclick="closeConfirmBox()" class="close">&#10006;</div>
                    <h2>Confirmation</h2>
                    <p>Are you sure to execute this action?</p>
                    <div class="mt-5 col-md-6">
                        <input class="form-control textBox" name="confirm" placeholder="confirm">
                        <button class="btn btn-primary delete-button" type="submit" name="deleteBtn">Delete Profile
                        </button>

                    </div>
                </div>
            </div>
        </form>
    </div>

</div>


</body>

<script src="profile.js"></script>

</html>