<g:if test="${questionInstance?.id>0}">
    <g:set var="i" value="${0}"/>
    <g:set var="count" value="${questionInstance.answers.size()}"/>
    <g:each in="${questionInstance.answers}" var="answerInstance">
        <div name="parent">
            <div id="Create_${i}" class="ans ${hasErrors(bean: answerInstance, field: 'answer', 'error')} ">
                <h3><g:message code="question.answer.label" args="[Integer.valueOf(i) +1]" /> </h3>
                <g:textField name="answer" class="ans-text" required="required" value="${answerInstance?.answer}"/>
                <div class="order-box">
                    <h3><g:message code="question.answer.order.label" default="Order" /></h3>
                    <input type="number" value="${answerInstance?.precedence}" required="required" name="order" min="1" max="" class="order">
                </div>
                <g:if test="${count-1==i}">
                    <div class="remove-box">
                        <a href="#" class="removeLink " onclick="removeOption( '${'Create_' + i}',false)"><img src="${resource(dir: 'images', file: 'Remove-icon.png')}" alt=""><span><g:message code="question.answer.remove" /></span></a>
                    </div>
                </g:if>
            </div>
        </div>
        <g:set var="i" value="${i+1}"/>
    </g:each>
</g:if>
<g:else>
    <div name="parent">
        <div id="Create_${answerIndex}" class="ans ${hasErrors(bean: answerInstance, field: 'answer', 'error')} ">
            <h3><g:message code="question.answer.label" args="[Integer.valueOf(answerIndex) +1]" /> </h3>
            <g:textField name="answer" class="ans-text" required="required" value="${answerInstance?.answer}"/>
            <div class="order-box">
                <h3><g:message code="question.answer.order.label" default="Order" /></h3>
                <input type="number" value="${answerInstance?.precedence}" required="required" name="order" min="1" max="" class="order">
            </div>
            <div class="remove-box">
                <a href="#" class="removeLink " onclick="removeOption( '${'Create_' + answerIndex}',true)"><img src="${resource(dir: 'images', file: 'Remove-icon.png')}" alt=""><span><g:message code="question.answer.remove" /></span></a>
            </div>
        </div>
    </div>
</g:else>