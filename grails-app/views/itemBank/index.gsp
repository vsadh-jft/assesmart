
<%@ page import="com.assesmart.question.ItemBank" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'itemBank.label', default: 'ItemBank')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="mid-sec">
        <div class="bl">
            <h2><g:message code="dashboard.heading.list.itemBanks"/></h2>
        </div>
		<div id="mainContent" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
                <thead>
                <tr>
                    <g:sortableColumn property="name" title="${message(code: 'itemBank.name.label', default: 'Name')}" />
                </tr>
                </thead>
                <tbody>
                <g:each in="${itemBankInstanceList}" status="i" var="itemBankInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><g:link action="show" id="${itemBankInstance.id}">${fieldValue(bean: itemBankInstance, field: "name")}</g:link></td>
                    </tr>
                </g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${itemBankInstanceCount ?: 0}" />
			</div>
		</div>
		</div>
	</body>
</html>
