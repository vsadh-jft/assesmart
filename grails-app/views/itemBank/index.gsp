
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
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="list1">
                <div class="list-head">
                    <div class="list-shw2">
                        <img src="images/show2.png" alt="View">
                    </div>
                    <h2><g:sortableColumn property="name" title="${message(code:'itemBankList.name.label', default: 'Name')}" /> </h2>
                    <h2 class="noborder"><g:sortableColumn property="createdDate" title="${message(code:'itemBankList.date.label', default: 'Date Created')}" /> </h2>
                </div>
                <g:each in="${itemBankInstanceList}" status="i" var="itemBankInstance">
                    <div class="list-item">
                        <div class="list-shw">
                            <g:link action="show" id="${itemBankInstance.id}"> <img src="${resource(dir: 'images', file: 'show2.png')}" alt=""></g:link>
                        </div>
                        <div class="name1">
                            <p>${fieldValue(bean: itemBankInstance, field: "name")}</p>
                        </div>
                        <div class="date1">
                            <p>${fieldValue(bean: itemBankInstance, field: "createdDate")}</p>
                        </div>
                    </div>
                </g:each>
			<div class="pagination">
				<g:paginate total="${itemBankInstanceCount ?: 0}" />
			</div>
		</div>
		</div>
		</div>
	</body>
</html>
