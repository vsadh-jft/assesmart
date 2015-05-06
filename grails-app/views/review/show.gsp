
<%@ page import="com.assesmart.assesment.Review" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'review.label', default: 'Review')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-review" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-review" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list review">
			
				<g:if test="${reviewInstance?.assessment}">
				<li class="fieldcontain">
					<span id="assessment-label" class="property-label"><g:message code="review.assessment.label" default="Assessment" /></span>
					
						<span class="property-value" aria-labelledby="assessment-label"><g:link controller="assessment" action="show" id="${reviewInstance?.assessment?.id}">${reviewInstance?.assessment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.isAllowAnswerChanging}">
				<li class="fieldcontain">
					<span id="isAllowAnswerChanging-label" class="property-label"><g:message code="review.isAllowAnswerChanging.label" default="Is Allow Answer Changing" /></span>
					
						<span class="property-value" aria-labelledby="isAllowAnswerChanging-label"><g:formatBoolean boolean="${reviewInstance?.isAllowAnswerChanging}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.isShowAnytime}">
				<li class="fieldcontain">
					<span id="isShowAnytime-label" class="property-label"><g:message code="review.isShowAnytime.label" default="Is Show Anytime" /></span>
					
						<span class="property-value" aria-labelledby="isShowAnytime-label"><g:formatBoolean boolean="${reviewInstance?.isShowAnytime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.isShowAsFlow}">
				<li class="fieldcontain">
					<span id="isShowAsFlow-label" class="property-label"><g:message code="review.isShowAsFlow.label" default="Is Show As Flow" /></span>
					
						<span class="property-value" aria-labelledby="isShowAsFlow-label"><g:formatBoolean boolean="${reviewInstance?.isShowAsFlow}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.isShowNever}">
				<li class="fieldcontain">
					<span id="isShowNever-label" class="property-label"><g:message code="review.isShowNever.label" default="Is Show Never" /></span>
					
						<span class="property-value" aria-labelledby="isShowNever-label"><g:formatBoolean boolean="${reviewInstance?.isShowNever}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.isShowOnce}">
				<li class="fieldcontain">
					<span id="isShowOnce-label" class="property-label"><g:message code="review.isShowOnce.label" default="Is Show Once" /></span>
					
						<span class="property-value" aria-labelledby="isShowOnce-label"><g:formatBoolean boolean="${reviewInstance?.isShowOnce}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.isShowRationale}">
				<li class="fieldcontain">
					<span id="isShowRationale-label" class="property-label"><g:message code="review.isShowRationale.label" default="Is Show Rationale" /></span>
					
						<span class="property-value" aria-labelledby="isShowRationale-label"><g:formatBoolean boolean="${reviewInstance?.isShowRationale}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:reviewInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${reviewInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
