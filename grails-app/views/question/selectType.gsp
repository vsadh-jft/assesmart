<%--
  Created by IntelliJ IDEA.
  User: vivekmaster146
  Date: 27/4/15
  Time: 1:47 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="dashboard">
    <title></title>
</head>

<body>
<div class="mid-sec">
    <div class="bl">
        <h2>Manage questions</h2>
    </div>
<div class="mainContent">
    <label for="questionType">
        <g:message code="question.questionType.label" default="Select a question Type" />
        <span class="required-indicator">*</span>
    </label>
    <g:form url="[resource:questionInstance, action:'create']" >
        <script type="text/javascript">
            $(function () {
                $("#questionType").selectbox();
            });
        </script>
        <fieldset class="form">
            <g:select id="questionType" name="questionType" from="${com.assesmart.enumeration.QuestionType?.values()}" keys="${com.assesmart.enumeration.QuestionType.values()*.name()}" required=""  />
        </fieldset>
        <div class="proceed-butn">
            <g:submitButton name="create" class="create" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </div>
    </g:form>
    </div>
    </div>
</div>
</body>
</html>