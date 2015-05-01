<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <r:require module="jquery"/>
    <r:require module="dashboard"/>

    <g:layoutHead/>
    <g:javascript library="application"/>
    <r:layoutResources />
</head>
<body>
<div class="wrap">
    <div class="wrap-sub">
        <div class="top-nav">
            <div class="logo1"> <a href="#"><img src="../images/logo.png" alt="" /></a> </div>
            <div class="menu">
                <ul id="yw2">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
        <div class="left-panel">
            <div class="sjain">
                <div class="avatar"> <img src="../images/avatar1.png" alt=""> </div>
                <h2>My Profile</h2>
            </div>
            <div class="clear"></div>
            <div id="dash" class="in"> <a> <img src="../images/dash.png" alt="" /> </a>
                <h2>Dashboard</h2>
            </div>
            <div class="clear"></div>
            <div class="in" id="ind"> <a> <img src="../images/questn.png" alt="" /> </a>
                <h2>Manage Questions <img src="../images/d-but.png" alt="" /> </h2>
            </div>
            <div class="clear"></div>
            <div class="drop" id="dropp" style=" display:block;">
                <h2 class="create-icon"><a href="#">Create Question</a></h2>
            </div>
            <div class="in" id="showmanage"> <a><img src="../images/bank.png" alt="" /></a>
                <h2>Item Banks <img src="../images/d-but.png" alt="" /></h2>
            </div>
            <div class="clear"></div>
            <div class="drop"  id="hidemanage" style="display:none;">
                <h2 class="create-icon"><a href="#">Create Item Bank</a></h2>
                <h2 class="show-icon"><a href="#">Show Item Banks</a></h2>
            </div>
            <div class="clear"></div>
            <div class="in" id="report"> <a><img src="../images/rep.png" alt="" /></a>
                <h2>Reports<img src="../images/d-but.png" alt="" /></h2>
            </div>
            <div class="clear"></div>
            <div class="drop"  id="hidereport" style="display:none;">
                <h2><a href="#">Report1</a></h2>
                <h2><a href="#">Report2</a></h2>
                <h2><a href="#">Report3</a></h2>
                <h2><a href="#">Report4</a></h2>
            </div>
            <div class="clear"></div>
            <div class="in" onclick="window.location = $(this).find('h2 > a').attr('href');"> <a><img src="../images/out.png" alt="" /></a>
                <h2><a href="#">Logout</a></h2>
            </div>
            <div class="clear"></div>
        </div>

        <!--<left-panel>-->

        <div class="right-panel">
            <div id="content">
                <div class="top-head">
                    <h2>Assesmart<span> - Dashboard</span></h2>
                </div>
                <div class="mid-sec">
                    <div class="bl">
                        <h2>Manage questions</h2>
                    </div>
                    <div class="select1">
                        <select name="questions" id="questions" tabindex="1">
                            <option value="">-- Select Question --</option>
                            <option value="1">Create Question</option>

                        </select>
                        <script type="text/javascript">
                            $(function () {
                                $("#questions").selectbox();
                            });
                        </script>
                    </div>
                    <div class="proceed-butn">
                        <a href="#">PROCEED</a>
                    </div>
                </div>
            </div>
            <!-- content -->

        </div>

        <!--<right-panel>-->

    </div>
</div>

<g:layoutBody/>
<div class="footer" role="contentinfo"></div>
<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
<script type="text/javascript" >
    $(document).ready(function () {
        $("#ind").click(function () {
            $("#dropp").slideToggle();
            $("#hidemanage").hide();
            $("#hidereport").hide();
        });

        $("#showmanage").click(function () {
            $("#hidemanage").slideToggle();
            $("#dropp").hide();
            $("#hidereport").hide();
        });

        $("#report").click(function () {
            $("#hidereport").slideToggle();
            $("#dropp").hide();
            $("#hidemanage").hide();
        });


        $("#dash").click(function () {
            $(location).attr('href', '/login/index.php/user/dashboard');
        });
    });
</script>
<r:layoutResources />
</body>
</html>
