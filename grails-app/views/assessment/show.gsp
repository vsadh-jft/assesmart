
<%@ page import="com.assesmart.assesment.Assessment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'assessment.label', default: 'Assessment')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-assessment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-assessment" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list assessment">
			
				<g:if test="${assessmentInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="assessment.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${assessmentInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${assessmentInstance?.assessmentForms}">
				<li class="fieldcontain">
					<span id="assessmentForms-label" class="property-label"><g:message code="assessment.assessmentForms.label" default="Assessment Forms" /></span>
					
						<g:each in="${assessmentInstance.assessmentForms}" var="a">
						<span class="property-value" aria-labelledby="assessmentForms-label"><g:link controller="assessmentForm" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${assessmentInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="assessment.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:link controller="content" action="show" id="${assessmentInstance?.content?.id}">${assessmentInstance?.content?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${assessmentInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="assessment.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${assessmentInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${assessmentInstance?.general}">
				<li class="fieldcontain">
					<span id="general-label" class="property-label"><g:message code="assessment.general.label" default="General" /></span>
					
						<span class="property-value" aria-labelledby="general-label"><g:link controller="general" action="show" id="${assessmentInstance?.general?.id}">${assessmentInstance?.general?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${assessmentInstance?.isRuleBased}">
				<li class="fieldcontain">
					<span id="isRuleBased-label" class="property-label"><g:message code="assessment.isRuleBased.label" default="Is Rule Based" /></span>
					
						<span class="property-value" aria-labelledby="isRuleBased-label"><g:formatBoolean boolean="${assessmentInstance?.isRuleBased}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${assessmentInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="assessment.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${assessmentInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${assessmentInstance?.proctor}">
				<li class="fieldcontain">
					<span id="proctor-label" class="property-label"><g:message code="assessment.proctor.label" default="Proctor" /></span>
					
						<span class="property-value" aria-labelledby="proctor-label"><g:link controller="proctor" action="show" id="${assessmentInstance?.proctor?.id}">${assessmentInstance?.proctor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${assessmentInstance?.review}">
				<li class="fieldcontain">
					<span id="review-label" class="property-label"><g:message code="assessment.review.label" default="Review" /></span>
					
						<span class="property-value" aria-labelledby="review-label"><g:link controller="review" action="show" id="${assessmentInstance?.review?.id}">${assessmentInstance?.review?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:assessmentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${assessmentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
