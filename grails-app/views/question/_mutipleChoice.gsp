<g:if test="${questionInstance?.id>0}">
    <g:set var="i" value="${0}"/>
    <g:set var="count" value="${questionInstance.answers.size()}"/>
    <g:each in="${questionInstance.answers}" var="answerInstance">
        <div name="parent">
            <div id="Create_${i}" class="ans ${hasErrors(bean: answerInstance, field: 'answer', 'error')} ">
                <h3>Answer1 :</h3>
                <g:textField name="answer" class="ans-text" required="required" value="${answerInstance?.answer}"/>
                <div class="radio-box">
                    <input class="radio1" name="correctAnswer" type="radio" name="radio" value="${i + 1}" checked="${answerInstance?.correctAnswer}"><label for="radio1"><span><span></span></span>Correct Answer</label>
                </div>
                <g:if test="${count-1==i}">
                    <a href="#" class="removeLink" onclick="removeOption('${'Create_' + i}',false)" ><g:message code="question.answer.remove" /></a>
                </g:if>
            </div>
        </div>

        <g:set var="i" value="${i+1}"/>
    </g:each>
</g:if>
<g:else>
    <div name="parent">
        <div id="Create_${answerIndex}" class="ans ${hasErrors(bean: answerInstance, field: 'answer', 'error')} ">
            <h3>Answer1 :</h3>
            <g:textField name="answer" class="ans-text" required="required" value="${answerInstance?.answer}"/>
            <div class="radio-box">
                <input class="radio1" name="correctAnswer" type="radio" name="radio" value="${answerIndex + 1}" checked="${answerInstance?.correctAnswer}"><label for="radio1"><span><span></span></span>Correct Answer</label>
            </div>
            <div class="remove-box">
                <a href="#" class="removeLink " onclick="removeOption( '${'Create_' + answerIndex}',true)"><img  src="../images/Remove-icon.png" alt=""><span><g:message code="question.answer.remove" /></span></a>
            </div>
        </div>
    </div>

</g:else>