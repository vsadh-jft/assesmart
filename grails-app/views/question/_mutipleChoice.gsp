<g:if test="${questionInstance?.id>0}">
    <g:set var="i" value="${0}"/>
    <g:each in="${questionInstance.answers}" var="answerInstance">

        <div id="Exist ${i}" class="fieldcontain ${hasErrors(bean: answerInstance, field: 'answer', 'error')} ">
            <label for="answer">
                <g:message code="answer.answer.label" default="Answer ${i + 1}" />

            </label>
            <g:textField name="answer" value="${answerInstance?.answer}"/>
            <label for="correctAnswer">
                <g:message code="answer.correctAnswer.label" default="Correct Answer" />

            </label>
            <g:radio class="rb"  name="correctAnswer" value="${i + 1}" />
        </div>
      <a href="#" onclick="removeOption(${'Exist ' + i})" >Remove Option</a>
        <g:set var="i" value="${i+1}"/>
    </g:each>
</g:if>
<g:else>
    <div name="parent">
        <div id="Create_${answerIndex}" class="fieldcontain ${hasErrors(bean: answerInstance, field: 'answer', 'error')} ">
            <label for="answer">
                <g:message code="answer.answer.label" default="Answer ${Integer.valueOf(answerIndex) + 1}" />
            </label>
            <g:textField name="answer" value="${answerInstance?.answer}"/>
            <label for="correctAnswer">
                <g:message code="answer.correctAnswer.label" default="Correct Answer" />
            </label>
            <g:radio class="rb"  name="correctAnswer" value="${Integer.valueOf(answerIndex) + 1}" />
            <a href="#" onclick="removeOption( '${'Create_' + answerIndex}')" >Remove Option</a>
        </div>
    </div>

</g:else>