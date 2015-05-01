<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Untitled Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <r:require module="login"/>
    <r:layoutResources/>
</head>

<body>
<div class="wrap">
    <header>
        <div class="wrapper">
            <div class="logo"> <img src="${resource(dir: 'images', file: 'logo.png')}" alt=""> </div>
            <div class="right-head">
                <div class="form1">
                    <div class="reg"> <a href="#">REGISTER</a> </div>
                    <div class="login"> <a href="#">LOGIN</a></div>
                </div>
                <div class="clear"></div>
                <nav>
                    <ul>
                        <li><a href="#">HOME</a></li>
                        <li><a href="#">SERVICES</a></li>
                        <li><a href="#">CLIENTS</a></li>
                        <li><a href="#">ABOUT</a></li>
                        <li><a href="#">EVENTS</a></li>
                        <li><a href="#">CONTACT</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
</div>
<div class="clear"></div>
<div class="login-container">
    <div class="wrap">
        <div class="wrapper">
            <div class="popup_wrap popup_login bg_tint_light animated fast bounceIn" id="popup_login"> <a class="popup_close" href="#"><i class="fa fa-times"></i></a>
                <div class="form_wrap">
                    <div class="form_left">
                        <form class="popup_form login_form" id='loginForm' name="login_form" method="POST" action='${postUrl}'>
                            <input type="hidden" value="" name="redirect_to">
                            <div class="popup_form_field login_field">
                                    <label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
                                    <input type='text' class='text_' name='j_username' id='username'/>
                            </div>
                            <div class="popup_form_field password_field">
                                    <label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
                                    <input type='password' class='text_' name='j_password' id='password'/>
                            </div>
                            <div class="popup_form_field squaredFour">
                                    <input type='checkbox' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                                <label for="remember_me"></label>

                            </div>
                            <div class="check-text"><g:message code="springSecurity.login.remember.me.label"/></div>
                            <div class="popup_form_field remember_field"> <a class="forgot_password" href="/">Forgot password?</a>
                            </div>

                            <div class="popup_form_field submit_field">
                                <input type='submit' id="submit" class="submit_button" value='${message(code: "springSecurity.login.button")}'/>
                            </div>
                        </form>
                    </div>
                    <div class="form_right">
                        <div class="login_socials_title">You can login using your social profile</div>
                        <ul class="social-pop">
                            <li class="fb"><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li class="twt"><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li class="gp"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                        <div class="login_socials_problem"><a href="#">Problem with login?</a></div>
                        <div class="result message_block"></div>
                    </div>
                </div>
                <!-- /.login_wrap -->
            </div>
        </div>
    </div>
</div>
<footer>
    <div class="wrap">
        <div class="wrapper">
            <div class="foot1">
                <ul class="foot-nav">
                    <li><a href="#">HOME</a></li>
                    <li><a href="#">SERVICES</a></li>
                    <li><a href="#">CLIENTS</a></li>
                    <li><a href="#">ABOUT</a></li>
                    <li><a href="#">EVENTS</a></li>
                    <li><a href="#">CONTACT</a></li>
                </ul>
            </div>
            <div class="foot1">
                <ul class="foot-nav">
                    <li><a href="#">HOME</a></li>
                    <li><a href="#">SERVICES</a></li>
                    <li><a href="#">CLIENTS</a></li>
                    <li><a href="#">ABOUT</a></li>
                    <li><a href="#">EVENTS</a></li>
                    <li><a href="#">CONTACT</a></li>
                </ul>
            </div>
            <div class="foot1">
                <h3>ADDRESS</h3>
                <p>COMPANY NAME</p>
                <p>STREET NO., STREET NAME,</p>
                <p>CITY, COUNTRY.</p>
                <p><i class="fa fa-phone"></i>TELEPHONE - (000) 000 000</p>
                <p><i class="fa fa-envelope"></i>EMAIL - <a href="#">company@domain.com</a></p>
            </div>
            <div class="foot1">
                <h3>CONNECT WITH US</h3>
                <ul class="social">
                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <div class="foot-botm">
        <div class="wrap">
            <div class="wrapper">
                <div class="cprt">
                    <h3>Company © 2015 Privacy Policy</h3>
                </div>
            </div>
        </div>
    </div>
</footer>
<r:layoutResources/>
</body>
</html>