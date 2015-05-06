
<%@ page import="com.assesmart.assesment.General" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'general.label', default: 'General')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-general" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-general" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list general">
			
				<g:if test="${generalInstance?.timeLimit}">
				<li class="fieldcontain">
					<span id="timeLimit-label" class="property-label"><g:message code="general.timeLimit.label" default="Time Limit" /></span>
					
						<span class="property-value" aria-labelledby="timeLimit-label"><g:fieldValue bean="${generalInstance}" field="timeLimit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${generalInstance?.autoSubmitTimeLimit}">
				<li class="fieldcontain">
					<span id="autoSubmitTimeLimit-label" class="property-label"><g:message code="general.autoSubmitTimeLimit.label" default="Auto Submit Time Limit" /></span>
					
						<span class="property-value" aria-labelledby="autoSubmitTimeLimit-label"><g:fieldValue bean="${generalInstance}" field="autoSubmitTimeLimit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${generalInstance?.noContinuationText}">
				<li class="fieldcontain">
					<span id="noContinuationText-label" class="property-label"><g:message code="general.noContinuationText.label" default="No Continuation Text" /></span>
					
						<span class="property-value" aria-labelledby="noContinuationText-label"><g:fieldValue bean="${generalInstance}" field="noContinuationText"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${generalInstance?.passMark}">
				<li class="fieldcontain">
					<span id="passMark-label" class="property-label"><g:message code="general.passMark.label" default="Pass Mark" /></span>
					
						<span class="property-value" aria-labelledby="passMark-label"><g:fieldValue bean="${generalInstance}" field="passMark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${generalInstance?.admittedURL}">
				<li class="fieldcontain">
					<span id="admittedURL-label" class="property-label"><g:message code="general.admittedURL.label" default="Admitted URL" /></span>
					
						<span class="property-value" aria-labelledby="admittedURL-label"><g:fieldValue bean="${generalInstance}" field="admittedURL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${generalInstance?.externalResources}">
				<li class="fieldcontain">
					<span id="externalResources-label" class="property-label"><g:message code="general.externalResources.label" default="External Resources" /></span>
					
						<span class="property-value" aria-labelledby="externalResources-label"><g:fieldValue bean="${generalInstance}" field="externalResources"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${generalInstance?.assessment}">
				<li class="fieldcontain">
					<span id="assessment-label" class="property-label"><g:message code="general.assessment.label" default="Assessment" /></span>
					
						<span class="property-value" aria-labelledby="assessment-label"><g:link controller="assessment" action="show" id="${generalInstance?.assessment?.id}">${generalInstance?.assessment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${generalInstance?.isAllowChangeLanguage}">
				<li class="fieldcontain">
					<span id="isAllowChangeLanguage-label" class="property-label"><g:message code="general.isAllowChangeLanguage.label" default="Is Allow Change Language" /></span>
					
						<span class="property-value" aria-labelledby="isAllowChangeLanguage-label"><g:formatBoolean boolean="${generalInstance?.isAllowChangeLanguage}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${generalInstance?.isDisableURLSecurity}">
				<li class="fieldcontain">
					<span id="isDisableURLSecurity-label" class="property-label"><g:message code="general.isDisableURLSecurity.label" default="Is Disable URLS ecurity" /></span>
					
						<span class="property-value" aria-labelledby="isDisableURLSecurity-label"><g:formatBoolean boolean="${generalInstance?.isDisableURLSecurity}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${generalInstance?.isHidePauseButton}">
				<li class="fieldcontain">
					<span id="isHidePauseButton-label" class="property-label"><g:message code="general.isHidePauseButton.label" default="Is Hide Pause Button" /></span>
					
						<span class="property-value" aria-labelledby="isHidePauseButton-label"><g:formatBoolean boolean="${generalInstance?.isHidePauseButton}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${generalInstance?.isSendMail}">
				<li class="fieldcontain">
					<span id="isSendMail-label" class="property-label"><g:message code="general.isSendMail.label" default="Is Send Mail" /></span>
					
						<span class="property-value" aria-labelledby="isSendMail-label"><g:formatBoolean boolean="${generalInstance?.isSendMail}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${generalInstance?.isStrictMode}">
				<li class="fieldcontain">
					<span id="isStrictMode-label" class="property-label"><g:message code="general.isStrictMode.label" default="Is Strict Mode" /></span>
					
						<span class="property-value" aria-labelledby="isStrictMode-label"><g:formatBoolean boolean="${generalInstance?.isStrictMode}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${generalInstance?.isTotalScore}">
				<li class="fieldcontain">
					<span id="isTotalScore-label" class="property-label"><g:message code="general.isTotalScore.label" default="Is Total Score" /></span>
					
						<span class="property-value" aria-labelledby="isTotalScore-label"><g:formatBoolean boolean="${generalInstance?.isTotalScore}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${generalInstance?.isVariableScore}">
				<li class="fieldcontain">
					<span id="isVariableScore-label" class="property-label"><g:message code="general.isVariableScore.label" default="Is Variable Score" /></span>
					
						<span class="property-value" aria-labelledby="isVariableScore-label"><g:formatBoolean boolean="${generalInstance?.isVariableScore}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:generalInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${generalInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
