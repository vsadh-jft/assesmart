
<%@ page import="com.assesmart.assesment.Proctor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'proctor.label', default: 'Proctor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-proctor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-proctor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="proctor.assessment.label" default="Assessment" /></th>
					
						<g:sortableColumn property="isBookingRequire" title="${message(code: 'proctor.isBookingRequire.label', default: 'Is Booking Require')}" />
					
						<g:sortableColumn property="isProctorRequire" title="${message(code: 'proctor.isProctorRequire.label', default: 'Is Proctor Require')}" />
					
						<g:sortableColumn property="isTimeWhilePaused" title="${message(code: 'proctor.isTimeWhilePaused.label', default: 'Is Time While Paused')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${proctorInstanceList}" status="i" var="proctorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${proctorInstance.id}">${fieldValue(bean: proctorInstance, field: "assessment")}</g:link></td>
					
						<td><g:formatBoolean boolean="${proctorInstance.isBookingRequire}" /></td>
					
						<td><g:formatBoolean boolean="${proctorInstance.isProctorRequire}" /></td>
					
						<td><g:formatBoolean boolean="${proctorInstance.isTimeWhilePaused}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${proctorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
