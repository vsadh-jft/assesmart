<%@ page import="com.assesmart.question.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="mid-sec">
        <div class="bl">
            <h2><g:message code="dashboard.heading.list.questions"/></h2>
        </div>
		<div id="mainContent" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
						<g:sortableColumn property="description" title="${message(code: 'question.description.label', default: 'Description')}" />
						<th><g:message code="question.itemBank.label" default="Item Bank" /></th>
						<g:sortableColumn property="questionType" title="${message(code: 'question.questionType.label', default: 'Question Type')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${questionInstanceList}" status="i" var="questionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${questionInstance.id}">${fieldValue(bean: questionInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: questionInstance, field: "itemBank")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "questionType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${questionInstanceCount ?: 0}" />
			</div>
            </div>
		</div>
	</body>
</html>
