<?php include 'app/server.php'; ?>
<!DOCTYPE html>

<html>
    <head>
        <title>CEG - Login</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale = 1" />

        <link rel="stylesheet" type="text/css" href="css/log-in.css" media="screen"/>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Maven+Pro" rel="stylesheet">

        <script src="js/jquery-3.3.1.js" type="text/javascript"></script>
        <script src="js/log-in.js" type="text/javascript"></script>

    </head>
    <body>
        <center id="center1">
            <div id="left">
                <header id="top" class="opaque">
                    <nav>
                        <ul class="top_nav">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Ministries</a></li>
                            <ul class="drop_down">
                             <li><a href="#">Challenge Bookshops<a/></li>
                             <li><a href="#">Cinema Today (CineVan)<a/></li>
                             <li><a href="#">Mobile Bookshops<a/></li>
                             <li><a href="#">Local Follow up<a/></li>
                             <li><a href="#">Prison Ministry<a/></li>
                             <li><a href="#">Prison Chaplain<a/></li>
                             <li><a href="#">Young Searchers League<a/></li>
                             <li><a href="#">Mail Box Club<a/></li>
                             <li><a href="#">Conferences<a/></li>
                             <li><a href="#">Counseling Services<a/></li>
                            </ul>
                            <li><a href="">Bookshop Locations</a></li>
                                <ul class="drop_down">
                                 <li><a href="#">ACCRA<a/></li>
                                 <li><a href="#">TEMA<a/></li>
                                 <li><a href="#">ABETIFI<a/></li>
                                 <li><a href="#">KUMASI<a/></li>
                                 <li><a href="#">SUNYANI<a/></li>
                                 <li><a href="#">CAPE COAST<a/></li>
                                 <li><a href="#">TAMALE<a/></li>
                                </ul>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </nav>
                </header>
                <div class="trans_area">

                </div>

                <div id="top_level">
                    <div id="container">
                        <img src="image/anyone.png" />
                        <?php include 'app/errors.php'; ?>
                          <?php include 'app/success.php'; ?>
                        <form method="POST"action="log-in.php" name="form1">
                            <div class="form_input">
                                <input id="mail" class="i_3" type="text" placeholder="E-mail" name="email" />
                            </div>
                            <div class="form_input">
                                <input id="pass" class="i_3" type="password" placeholder="Password" name="password" />
                            </div>
                            <div id="check_box">
                                <input id="checker" class="color_scheme" type="checkbox" value="Keep me signed in" checked/>
                                <label class="lil_link">Keep me logged in</label>
                            </div>
                            <button class="btn_login" type="button">Login</button>
                        </form>
                         <div class="clear"></div>
                    </div>
                    <span id="bottom_layer">
                        <p>Don't have an account ? <span class="lil_link"><a href="signup.html">Sign Up</a></span> </p>
                    </span>
                </div>
            </div>
        </center>
        <div class="clear"></div>
    </body>
</html>
