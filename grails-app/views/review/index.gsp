
<%@ page import="com.assesmart.assesment.Review" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'review.label', default: 'Review')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-review" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-review" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="review.assessment.label" default="Assessment" /></th>
					
						<g:sortableColumn property="isAllowAnswerChanging" title="${message(code: 'review.isAllowAnswerChanging.label', default: 'Is Allow Answer Changing')}" />
					
						<g:sortableColumn property="isShowAnytime" title="${message(code: 'review.isShowAnytime.label', default: 'Is Show Anytime')}" />
					
						<g:sortableColumn property="isShowAsFlow" title="${message(code: 'review.isShowAsFlow.label', default: 'Is Show As Flow')}" />
					
						<g:sortableColumn property="isShowNever" title="${message(code: 'review.isShowNever.label', default: 'Is Show Never')}" />
					
						<g:sortableColumn property="isShowOnce" title="${message(code: 'review.isShowOnce.label', default: 'Is Show Once')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${reviewInstanceList}" status="i" var="reviewInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${reviewInstance.id}">${fieldValue(bean: reviewInstance, field: "assessment")}</g:link></td>
					
						<td><g:formatBoolean boolean="${reviewInstance.isAllowAnswerChanging}" /></td>
					
						<td><g:formatBoolean boolean="${reviewInstance.isShowAnytime}" /></td>
					
						<td><g:formatBoolean boolean="${reviewInstance.isShowAsFlow}" /></td>
					
						<td><g:formatBoolean boolean="${reviewInstance.isShowNever}" /></td>
					
						<td><g:formatBoolean boolean="${reviewInstance.isShowOnce}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${reviewInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
