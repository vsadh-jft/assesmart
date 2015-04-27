<%@ page import="com.assesmart.question.Question" %>



<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'answers', 'error')} ">
	<label for="answers">
		<g:message code="question.answers.label" default="Answers" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${questionInstance?.answers?}" var="a">
    <li><g:link controller="answer" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="answer" action="create" params="['question.id': questionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'answer.label', default: 'Answer')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="question.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${questionInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'itemBank', 'error')} required">
	<label for="itemBank">
		<g:message code="question.itemBank.label" default="Item Bank" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="itemBank" name="itemBank.id" from="${com.assesmart.question.ItemBank.list()}" optionKey="id" required="" value="${questionInstance?.itemBank?.id}" class="many-to-one"/>

</div>
<g:hiddenField name="questionType" value="${questionType}" />

<g:if test="${questionType=='MULTIPLE_CHOICE'}">
    <g:render template="mutipleChoice"/>

</g:if>
<g:elseif test="${questionType=='MULTIPLE SELECT'}">
    <g:render template="multipleSelect" />
</g:elseif>

