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
            <div class="logo1"> <a href="#"><img src="${resource(dir: 'images', file: 'logo.png')}" alt="" /></a> </div>
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
                <div class="avatar"> <img src="${resource(dir: 'images', file: 'avatar1.png')}" alt=""> </div>
                <h2>My Profile</h2>
            </div>
            <div class="clear"></div>
            <div id="dash" class="in"> <a> <img src="${resource(dir: 'images', file: 'dash.png')}" alt="" /> </a>
                <h2>Dashboard</h2>
            </div>
            <div class="clear"></div>
            <div class="in" id="ind"> <a> <img src="${resource(dir: 'images', file: 'questn.png')}" alt="" /> </a>
                <h2>Manage Questions <img src="${resource(dir: 'images', file: 'd-but.png')}" alt="" /> </h2>
            </div>
            <div class="clear"></div>
            <div class="drop" id="dropp" style=" display:block;">
                <h2 class="create-icon"><g:link class="create" controller="question" action="selectType"><g:message code="create.question.label"/> </g:link></h2>
            </div>
            <div class="in" id="showmanage"> <a><img src="${resource(dir: 'images', file: 'bank.png')}" alt="" /></a>
                <h2>Item Banks <img src="${resource(dir: 'images', file: 'd-but.png')}" alt="" /></h2>
            </div>
            <div class="clear"></div>
            <div class="drop"  id="hidemanage" style="display:none;">
                <h2 class="create-icon"><g:link class="create" controller="itemBank" action="create"><g:message code="itemBank.create.label"/> </g:link></h2>

                <h2 class="create-icon"><g:link class="create" controller="itemBank" action="index"><g:message code="itemBank.list.label"/> </g:link></h2>

            </div>
            <div class="clear"></div>
            <div class="in" id="report"> <a><img src="${resource(dir: 'images', file: 'rep.png')}" alt="" /></a>
                <h2>Assessment<img src="${resource(dir: 'images', file: 'd-but.png')}" alt="" /></h2>
            </div>
            <div class="clear"></div>
            <div class="drop"  id="hidereport" style="display:none;">
                <h2 class="create-icon"><g:link class="create" controller="assessment" action="create"><g:message code="assessment.create.label"/> </g:link></h2>

                <h2 class="create-icon"><g:link class="create" controller="assessment" action="index"><g:message code="assessment.list.label"/> </g:link></h2>
            </div>
            <div class="clear"></div>
            <div class="in" onclick="window.location = $(this).find('h2 > a').attr('href');"> <a><img src="${resource(dir: 'images', file: 'out.png')}" alt="" /></a>
                <h2><g:link controller="logout" action="index"><g:message code="springSecurity.logout.label"/></g:link></h2>
            </div>
            <div class="clear"></div>
        </div>

        <!--<left-panel>-->

        <div class="right-panel">
            <div id="content">
                <div class="top-head">
                    <h2>Assesmart<span> - Dashboard</span></h2>
                </div>
                <div class="mainBody">
                    <g:layoutBody/>
                </div>

            </div>
    </div>
    </div>
</div>


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
