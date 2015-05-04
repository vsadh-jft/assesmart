
<%@ page import="com.assesmart.question.ItemBank" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'itemBank.label', default: 'ItemBank')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="mid-sec">
        <div class="bl">
            <h2><g:message code="dashboard.itemBank.description" args="[itemBankInstance?.id]"/></h2>
        </div>
		<div class="mainContent" id="show-itemBank" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list itemBank">
			
				<g:if test="${itemBankInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="itemBank.name.label" default="Name" /></span>
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${itemBankInstance}" field="name"/></span>
				</li>
				</g:if>

                <g:if test="${itemBankInstance?.questions}">
                    <li class="fieldcontain">
                        <span id="questions-label" class="property-label"><g:message code="itemBank.questions.label" default="Questions" /></span>

                        <g:each in="${itemBankInstance.questions}" var="q">
                            <span class="property-value" aria-labelledby="questions-label"><g:link controller="question" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></span>
                        </g:each>

                    </li>
                </g:if>
			
			</ol>
			<g:form url="[resource:itemBankInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${itemBankInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </div>
    </body>
</html>
