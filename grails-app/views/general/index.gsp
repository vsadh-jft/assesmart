
<%@ page import="com.assesmart.assesment.General" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'general.label', default: 'General')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-general" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-general" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="timeLimit" title="${message(code: 'general.timeLimit.label', default: 'Time Limit')}" />
					
						<g:sortableColumn property="autoSubmitTimeLimit" title="${message(code: 'general.autoSubmitTimeLimit.label', default: 'Auto Submit Time Limit')}" />
					
						<g:sortableColumn property="noContinuationText" title="${message(code: 'general.noContinuationText.label', default: 'No Continuation Text')}" />
					
						<g:sortableColumn property="passMark" title="${message(code: 'general.passMark.label', default: 'Pass Mark')}" />
					
						<g:sortableColumn property="admittedURL" title="${message(code: 'general.admittedURL.label', default: 'Admitted URL')}" />
					
						<g:sortableColumn property="externalResources" title="${message(code: 'general.externalResources.label', default: 'External Resources')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${generalInstanceList}" status="i" var="generalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${generalInstance.id}">${fieldValue(bean: generalInstance, field: "timeLimit")}</g:link></td>
					
						<td>${fieldValue(bean: generalInstance, field: "autoSubmitTimeLimit")}</td>
					
						<td>${fieldValue(bean: generalInstance, field: "noContinuationText")}</td>
					
						<td>${fieldValue(bean: generalInstance, field: "passMark")}</td>
					
						<td>${fieldValue(bean: generalInstance, field: "admittedURL")}</td>
					
						<td>${fieldValue(bean: generalInstance, field: "externalResources")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${generalInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
