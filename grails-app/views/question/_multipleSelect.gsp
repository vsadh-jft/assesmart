    <div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'answer', 'error')} ">
        <label for="answer">
            <g:message code="answer.answer.label" default="Answer ${Integer.valueOf(answerIndex) + 1}" />

        </label>
        <g:textField name="answer" value="${answerInstance?.answer}"/>
        <label for="correctAnswer">
            <g:message code="answer.correctAnswer.label" default="Correct Answer" />

        </label>
        <g:checkBox name="correctAnswer" value="${Integer.valueOf(answerIndex) + 1}" />
    </div>
