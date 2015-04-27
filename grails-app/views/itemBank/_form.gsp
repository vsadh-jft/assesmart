<%@ page import="com.assesmart.question.ItemBank" %>



<div class="fieldcontain ${hasErrors(bean: itemBankInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="itemBank.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${itemBankInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemBankInstance, field: 'questions', 'error')} ">
	<label for="questions">
		<g:message code="itemBank.questions.label" default="Questions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${itemBankInstance?.questions?}" var="q">
    <li><g:link controller="question" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="question" action="create" params="['itemBank.id': itemBankInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'question.label', default: 'Question')])}</g:link>
</li>
</ul>


</div>

