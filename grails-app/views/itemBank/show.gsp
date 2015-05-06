
<%@ page import="com.assesmart.question.ItemBank" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'itemBank.label', default: 'ItemBank')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="mid-sec">
        <div class="bl">
            <h2><g:message code="dashboard.itemBank.description" args="[itemBankInstance?.id]"/></h2>
        </div>
		<div class="mainContent" id="show-itemBank" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="item-shw">
                <div class="shw-block1">
                    <h2>NAME :</h2>
                    <p>${itemBankInstance?.name}</p>
                </div>
                <div class="shw-block1">
                    <h2>CREATED DATE :</h2>
                    <p>${itemBankInstance?.createdDate}</p>
                </div>
                <div class="shw-block1">
                    <h2>NO. OF QUESTIONS :</h2>
                    <p>${itemBankInstance?.questions.size()}</p>
                </div>
                <div class="clear"></div>
                <div class="view-all">
                    <g:link action="showByItemBank" resource="${itemBankInstance}"><g:message code="itemBank.view.questions" default="View All Questions" /></g:link>
                </div>
                <div class="clear"></div>

                <g:form url="[resource:itemBankInstance, action:'delete']" method="DELETE">
                    <fieldset class="buttons">
                        <g:link class="edit"  action="edit" resource="${itemBankInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="submitDelete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>
    </body>
</html>
