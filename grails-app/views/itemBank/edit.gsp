<%@ page import="com.assesmart.question.ItemBank" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'itemBank.label', default: 'ItemBank')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="mid-sec">
        <div class="bl">
            <h2><g:message code="dashboard.heading.create.itemBank"/></h2>
        </div>
        <div class="mainContent" id="create-itemBank" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${itemBankInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${itemBankInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:itemBankInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${itemBankInstance?.version}" />
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:actionSubmit class="submit" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </div>
    </body>
</html>
