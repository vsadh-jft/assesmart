
<%@ page import="com.assesmart.assesment.Content" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'content.label', default: 'Content')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-content" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-content" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="assessmentDescription" title="${message(code: 'content.assessmentDescription.label', default: 'Assessment Description')}" />
					
						<g:sortableColumn property="assessmentText" title="${message(code: 'content.assessmentText.label', default: 'Assessment Text')}" />
					
						<g:sortableColumn property="assessmentFailedMessage" title="${message(code: 'content.assessmentFailedMessage.label', default: 'Assessment Failed Message')}" />
					
						<g:sortableColumn property="assessmentPassedMessage" title="${message(code: 'content.assessmentPassedMessage.label', default: 'Assessment Passed Message')}" />
					
						<g:sortableColumn property="perQuestionReviewText" title="${message(code: 'content.perQuestionReviewText.label', default: 'Per Question Review Text')}" />
					
						<g:sortableColumn property="messageUnscoredOrUnderReview" title="${message(code: 'content.messageUnscoredOrUnderReview.label', default: 'Message Unscored Or Under Review')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${contentInstanceList}" status="i" var="contentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${contentInstance.id}">${fieldValue(bean: contentInstance, field: "assessmentDescription")}</g:link></td>
					
						<td>${fieldValue(bean: contentInstance, field: "assessmentText")}</td>
					
						<td>${fieldValue(bean: contentInstance, field: "assessmentFailedMessage")}</td>
					
						<td>${fieldValue(bean: contentInstance, field: "assessmentPassedMessage")}</td>
					
						<td>${fieldValue(bean: contentInstance, field: "perQuestionReviewText")}</td>
					
						<td>${fieldValue(bean: contentInstance, field: "messageUnscoredOrUnderReview")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${contentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
