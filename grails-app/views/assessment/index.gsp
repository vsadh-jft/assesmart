
<%@ page import="com.assesmart.assesment.Assessment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'assessment.label', default: 'Assessment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-assessment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-assessment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'assessment.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'assessment.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="isRuleBased" title="${message(code: 'assessment.isRuleBased.label', default: 'Is Rule Based')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'assessment.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${assessmentInstanceList}" status="i" var="assessmentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${assessmentInstance.id}">${fieldValue(bean: assessmentInstance, field: "name")}</g:link></td>
					
						<td><g:formatDate date="${assessmentInstance.dateCreated}" /></td>
					
						<td><g:formatBoolean boolean="${assessmentInstance.isRuleBased}" /></td>
					
						<td><g:formatDate date="${assessmentInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${assessmentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
