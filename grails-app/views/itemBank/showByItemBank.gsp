<%@ page import="com.assesmart.question.Question" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="dashboard">
    <g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div class="mid-sec">
    <div class="bl">
        <h2><g:message code="dashboard.heading.list.questions"/></h2>
    </div>
    <div id="mainContent" class="content scaffold-list" role="main">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <div class="qustn-list">
            <div class="qustn-head">
                <p></p>
                <h2><g:message code="questionList.description.label"/> </h2>
                <h2><g:message code="questionList.itemBank.label"/></h2>
                <h2><g:message code="questionList.questionType.label"/></h2>
            </div>
            <g:each in="${questionInstanceList}" status="i" var="questionInstance">

                <div class="qustn-block1">
                    <div class="shw-cntnt">
                        <g:link controller="question" action="show" id="${questionInstance.id}"> <img src="${resource(dir: 'images', file: 'show2.png')}" alt=""></g:link>
                    </div>
                    <div class="descrptn">
                        <p>${fieldValue(bean: questionInstance, field: "description")}</p>
                    </div>
                    <div class="descrptn2">
                        <p>${fieldValue(bean: questionInstance, field: "itemBank")}</p>
                    </div>
                    <div class="descrptn3">
                        <p>${fieldValue(bean: questionInstance, field: "questionType")}</p>
                    </div>
                </div>
            </g:each>
            <div class="pagination">
                <g:paginate total="${questionInstanceCount ?: 0}" />
            </div>
        </div>
    </div>
</div>
</body>
</html>
