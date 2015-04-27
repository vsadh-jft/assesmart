<%@ page import="com.assesmart.question.Answer" %>



<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'answer', 'error')} ">
	<label for="answer">
		<g:message code="answer.answer.label" default="Answer" />
		
	</label>
	<g:textField name="answer" value="${answerInstance?.answer}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'correctAnswer', 'error')} ">
	<label for="correctAnswer">
		<g:message code="answer.correctAnswer.label" default="Correct Answer" />
		
	</label>
	<g:checkBox name="correctAnswer" value="${answerInstance?.correctAnswer}" />

</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'question', 'error')} required">
	<label for="question">
		<g:message code="answer.question.label" default="Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="question" name="question.id" from="${com.assesmart.question.Question.list()}" optionKey="id" required="" value="${answerInstance?.question?.id}" class="many-to-one"/>

</div>

