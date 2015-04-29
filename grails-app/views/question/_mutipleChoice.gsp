<g:if test="${questionInstance?.id>0}">
    <g:set var="i" value="${0}"/>
    <g:set var="count" value="${questionInstance.answers.size()}"/>
    <g:each in="${questionInstance.answers}" var="answerInstance">
        <div name="parent">
            <div id="Exist_${i}" class="fieldcontain ${hasErrors(bean: answerInstance, field: 'answer', 'error')} ">
                <label for="answer">
                    <g:message code="question.answer.label" args="[i+1]" default="Answer ${i + 1}" />
                </label>
                <span class="required-indicator">*</span>
                <g:textField name="answer" required="required" value="${answerInstance?.answer}"/>
                <label for="correctAnswer">
                    <g:message code="answer.correctAnswer.label" default="Correct Answer" />

                </label>
                <g:radio class="rb"  name="correctAnswer" checked="${answerInstance?.correctAnswer}" value="${i + 1}" />
                <g:if test="${count-1==i}">
                    <a href="#" class="removeLink" onclick="removeOption('${'Exist_' + i}',false)" >Remove Option</a>
                </g:if>
            </div>
        </div>

        <g:set var="i" value="${i+1}"/>
    </g:each>
</g:if>
<g:else>
    <div name="parent">
        <div id="Create_${answerIndex}" class="fieldcontain ${hasErrors(bean: answerInstance, field: 'answer', 'error')} ">
            <label for="answer">
                <g:message code="question.answer.label" args="[Integer.valueOf(answerIndex)+1]" default="Answer ${Integer.valueOf(answerIndex) + 1}" />
            </label>
            <span class="required-indicator">*</span>
            <g:textField name="answer" required="required" value="${answerInstance?.answer}"/>
            <label for="correctAnswer">
                <g:message code="answer.correctAnswer.label" default="Correct Answer" />
            </label>
            <g:radio class="rb"  name="correctAnswer" value="${Integer.valueOf(answerIndex) + 1}" />
            <a href="#" class="removeLink" onclick="removeOption( '${'Create_' + answerIndex}',true)" >Remove Option</a>
        </div>
    </div>

</g:else>