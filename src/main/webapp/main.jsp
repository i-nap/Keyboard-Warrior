<%@ page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css'>
    <link rel="stylesheet" href="./style.css">
    <title></title>
</head>
<body>
<div id="commandLineWrapper" class="hidden">
    <div id="commandLine">
        <label>
            <input type="text" class="input" placeholder="Command">
        </label>
        <div class="separator hidden"></div>
        <div class="listTitle">Title</div>
        <div class="suggestions">
        </div>
    </div>
</div>
<div id="timerWrapper">
    <div id="timer"></div>
</div>
<div id="resultScreenshot" class="">
    <div class="stats">
        <div class="group">
            <div class="top">wpm</div>
            <div class="bottom">100</div>
        </div>
        <div class="group">
            <div class="top">key</div>
            <div class="bottom">100/2</div>
        </div>
        <div class="group">
            <div class="top">acc</div>
            <div class="bottom">100%</div>
        </div>
    </div>
    <div class="logo">
    </div>
</div>
<div id="centerContent" class="hidden">

    <div id="middle">
        <div id="top">
            <div class="logo">
                <div class="bottom">keyboard warrior</div>

            </div>
            <div id="menu">
                <div class="button" tabindex="2">
                    <a href="profile.jsp">
                        <div class="icon">
                            <i class="fas fa-fw fa-user"></i>
                            <p class="usernamefromtable"
                               style="text-decoration:none"><%= session.getAttribute("loggedInUsername") %>

                        </div>
                    </a>
                    <div class="text">
                        Login
                    </div>
                </div>
            </div>

            <div class="result hidden">
                <div class="group testmode" style="align-self: center">
                    <div class="title mode1">words</div>
                    <div class="title mode2">100</div>
                    <div class="title mode3">100</div>
                </div>
                <div class="group key">
                    <div class="title">key</div>
                    <div class="val">100/1</div>
                </div>
                <div class="group acc">
                    <div class="title">acc</div>
                    <div class="val">95%</div>
                </div>
                <div class="group wpm">
                    <div class="title">wpm</div>
                    <div class="val">100</div>
                </div>
            </div>
            <div class="config">

                <div class="group punctuationMode">
                    <div class="buttons">
                        <div class="button toggleButton active" tabindex="2">punctuation</div>
                    </div>
                </div>
                <div class="group mode">

                    <div class="buttons">
                        <div class="button" mode="time">time</div>
                        <div class="button active" mode="words">words</div>
                        <div class="button" mode="custom">custom</div>
                    </div>
                </div>
                <div class="group wordCount">
                    <div class="buttons">
                        <div class="button" wordCount="10">10</div>
                        <div class="button" wordCount="25">25</div>
                        <div class="button active" wordCount="50">50</div>
                        <div class="button" wordCount="100">100</div>
                        <div class="button" wordCount="200">200</div>
                    </div>
                </div>
                <div class="group time hidden">
                    <div class="buttons">
                        <div class="button" timeConfig="15">15</div>
                        <div class="button active" timeConfig="30">30</div>
                        <div class="button" timeConfig="60">60</div>
                        <div class="button" timeConfig="120">120</div>
                    </div>
                </div>
                <a href="index.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor"
                         class="bi bi-box-arrow-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd"
                              d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0z"/>
                        <path fill-rule="evenodd"
                              d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
                    </svg>
                </a>
                <div class="group customText hidden">
                    <div class="buttons">
                        <div class="button">change</div>
                    </div>
                </div>

            </div>

        </div>
        <div id="caret" class="hidden"></div>
        <div id="words" class=""></div>
        <input id="wordsInput" class="" tabindex="0"></input>
        <div id="restartTestButton" tabindex="0"><i class="fas fa-redo-alt"></i></div>
        <div id="liveWpm" class="">-</div>
    </div>
    <div id="bottom">
        Restart: Tab + Enter
    </div>

</div>
<!-- partial -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.5.0-beta4/html2canvas.min.js'></script>
<script src="./script.js"></script>

</body>
</html>
