<%--
  Created by IntelliJ IDEA.
  User: vivekmaster146
  Date: 27/4/15
  Time: 1:47 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title></title>
</head>

<body>
<div>
    <label for="questionType">
        <g:message code="question.questionType.label" default="Select a question Type" />
        <span class="required-indicator">*</span>
    </label>
    <g:form url="[resource:questionInstance, action:'create']" >
        <fieldset class="form">
            <g:select name="questionType" from="${com.assesmart.enumeration.QuestionType?.values()}" keys="${com.assesmart.enumeration.QuestionType.values()*.name()}" required=""  />
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="create" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </fieldset>
    </g:form>
</div>
</body>
</html>