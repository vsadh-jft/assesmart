<%@ page import="com.assesmart.question.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="mid-sec">
        <div class="bl">
            <h2><g:message code="dashboard.heading.edit.question"/></h2>
        </div>
		<div id="edit-question" class="content scaffold-edit" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${questionInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${questionInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:questionInstance, action:'save']" >
				<g:hiddenField name="version" value="${questionInstance?.version}" />
				<fieldset class="form">
					<g:render template="form" model="[sources:sources,destinations:destination]"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" onclick="return validate('${questionType}');" action="save" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </div>
    <script type="text/javascript">
        function validate(questionType){
            var order;
            var returnFlag=true;
            var answerLength = document.getElementsByName("answer").length;
            var values = [];
            if(questionType=='MATCHING'){
                $('.src-quant').each(function() {
                    if($(this).val()>answerLength || $(this).val()<1){
                        returnFlag = false;
                    }
                    order = $(this).val();
                    values.push(order);
                });
            }else{
                $('.order').each(function() {
                    order = $(this).val();
                    values.push(order);
                });
            }
            var len = values.length;
            if(len> ($.unique(values).length)){
                alert("Order should be unique")
                return false;
            }else if(returnFlag==false){
                alert("Order should be in range")
                return false;
            }else{
                return true;
            }
        }
    </script>
	</body>
</html>
