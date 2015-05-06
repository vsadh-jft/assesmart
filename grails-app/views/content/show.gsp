
<%@ page import="com.assesmart.assesment.Content" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'content.label', default: 'Content')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-content" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-content" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list content">
			
				<g:if test="${contentInstance?.assessmentDescription}">
				<li class="fieldcontain">
					<span id="assessmentDescription-label" class="property-label"><g:message code="content.assessmentDescription.label" default="Assessment Description" /></span>
					
						<span class="property-value" aria-labelledby="assessmentDescription-label"><g:fieldValue bean="${contentInstance}" field="assessmentDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentInstance?.assessmentText}">
				<li class="fieldcontain">
					<span id="assessmentText-label" class="property-label"><g:message code="content.assessmentText.label" default="Assessment Text" /></span>
					
						<span class="property-value" aria-labelledby="assessmentText-label"><g:fieldValue bean="${contentInstance}" field="assessmentText"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentInstance?.assessmentFailedMessage}">
				<li class="fieldcontain">
					<span id="assessmentFailedMessage-label" class="property-label"><g:message code="content.assessmentFailedMessage.label" default="Assessment Failed Message" /></span>
					
						<span class="property-value" aria-labelledby="assessmentFailedMessage-label"><g:fieldValue bean="${contentInstance}" field="assessmentFailedMessage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentInstance?.assessmentPassedMessage}">
				<li class="fieldcontain">
					<span id="assessmentPassedMessage-label" class="property-label"><g:message code="content.assessmentPassedMessage.label" default="Assessment Passed Message" /></span>
					
						<span class="property-value" aria-labelledby="assessmentPassedMessage-label"><g:fieldValue bean="${contentInstance}" field="assessmentPassedMessage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentInstance?.perQuestionReviewText}">
				<li class="fieldcontain">
					<span id="perQuestionReviewText-label" class="property-label"><g:message code="content.perQuestionReviewText.label" default="Per Question Review Text" /></span>
					
						<span class="property-value" aria-labelledby="perQuestionReviewText-label"><g:fieldValue bean="${contentInstance}" field="perQuestionReviewText"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentInstance?.messageUnscoredOrUnderReview}">
				<li class="fieldcontain">
					<span id="messageUnscoredOrUnderReview-label" class="property-label"><g:message code="content.messageUnscoredOrUnderReview.label" default="Message Unscored Or Under Review" /></span>
					
						<span class="property-value" aria-labelledby="messageUnscoredOrUnderReview-label"><g:fieldValue bean="${contentInstance}" field="messageUnscoredOrUnderReview"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentInstance?.assessment}">
				<li class="fieldcontain">
					<span id="assessment-label" class="property-label"><g:message code="content.assessment.label" default="Assessment" /></span>
					
						<span class="property-value" aria-labelledby="assessment-label"><g:link controller="assessment" action="show" id="${contentInstance?.assessment?.id}">${contentInstance?.assessment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentInstance?.isAgreementRequired}">
				<li class="fieldcontain">
					<span id="isAgreementRequired-label" class="property-label"><g:message code="content.isAgreementRequired.label" default="Is Agreement Required" /></span>
					
						<span class="property-value" aria-labelledby="isAgreementRequired-label"><g:formatBoolean boolean="${contentInstance?.isAgreementRequired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentInstance?.isDescriptionOnTop}">
				<li class="fieldcontain">
					<span id="isDescriptionOnTop-label" class="property-label"><g:message code="content.isDescriptionOnTop.label" default="Is Description On Top" /></span>
					
						<span class="property-value" aria-labelledby="isDescriptionOnTop-label"><g:formatBoolean boolean="${contentInstance?.isDescriptionOnTop}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:contentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${contentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
