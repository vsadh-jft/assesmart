
<%@ page import="com.assesmart.assesment.Proctor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'proctor.label', default: 'Proctor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-proctor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-proctor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list proctor">
			
				<g:if test="${proctorInstance?.assessment}">
				<li class="fieldcontain">
					<span id="assessment-label" class="property-label"><g:message code="proctor.assessment.label" default="Assessment" /></span>
					
						<span class="property-value" aria-labelledby="assessment-label"><g:link controller="assessment" action="show" id="${proctorInstance?.assessment?.id}">${proctorInstance?.assessment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${proctorInstance?.isBookingRequire}">
				<li class="fieldcontain">
					<span id="isBookingRequire-label" class="property-label"><g:message code="proctor.isBookingRequire.label" default="Is Booking Require" /></span>
					
						<span class="property-value" aria-labelledby="isBookingRequire-label"><g:formatBoolean boolean="${proctorInstance?.isBookingRequire}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${proctorInstance?.isProctorRequire}">
				<li class="fieldcontain">
					<span id="isProctorRequire-label" class="property-label"><g:message code="proctor.isProctorRequire.label" default="Is Proctor Require" /></span>
					
						<span class="property-value" aria-labelledby="isProctorRequire-label"><g:formatBoolean boolean="${proctorInstance?.isProctorRequire}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${proctorInstance?.isTimeWhilePaused}">
				<li class="fieldcontain">
					<span id="isTimeWhilePaused-label" class="property-label"><g:message code="proctor.isTimeWhilePaused.label" default="Is Time While Paused" /></span>
					
						<span class="property-value" aria-labelledby="isTimeWhilePaused-label"><g:formatBoolean boolean="${proctorInstance?.isTimeWhilePaused}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:proctorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${proctorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
