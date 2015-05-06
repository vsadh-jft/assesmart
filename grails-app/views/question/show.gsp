
<%@ page import="com.assesmart.question.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="mid-sec">
        <div class="bl">
            <h2><g:message code="dashboard.question.description" args="[questionInstance?.id]"/></h2>
        </div>
		<div class="mainContent" id="show-question" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="item-shw">
                <div class="shw-block1">
                    <h2>DESCRIPTION :</h2>
                    <p>${questionInstance?.description}</p>
                </div>
                <div class="shw-block1">
                    <h2>ITEM BANK :</h2>
                    <p>${questionInstance?.itemBank}</p>
                </div>
                <div class="shw-block1">
                    <h2>QUESTION TYPE :</h2>
                    <p>${questionInstance?.questionType}</p>
                </div>
                <div class="shw-block1">
                    <h2>QUESTION PREVIEW :</h2>
                    <div class="preview1">
                    </div>
                </div>
                <div class="clear"></div>
                <g:form url="[resource:questionInstance, action:'delete']" method="DELETE">
                    <fieldset class="buttons">
                        <g:link class="edit"  action="edit" resource="${questionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="submitDelete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>
            </div>

        </div>
    </div>
    </body>
</html>
