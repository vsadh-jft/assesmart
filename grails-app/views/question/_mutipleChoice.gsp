<% def count=4 %>
<g:each in="${(1..count).toList()}" var="c" >
    <div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'answer', 'error')} ">
        <label for="answer">
            <g:message code="answer.answer.label" default="Answer ${c}" />

        </label>
        <g:textField name="answer" value="${answerInstance?.answer}"/>
        <label for="correctAnswer">
            <g:message code="answer.correctAnswer.label" default="Correct Answer" />

        </label>
        <g:radio class="rb"  name="correctAnswer" value="${c}" />


    </div>
%{--
    <div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'correctAnswer', 'error')} ">
        <label for="correctAnswer">
            <g:message code="answer.correctAnswer.label" default="Correct Answer" />

        </label>
        <g:radio class="rb"  name="correctAnswer" value="${c}" />

    </div>--}%
</g:each>