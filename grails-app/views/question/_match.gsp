<g:if test="${questionInstance?.id>0}">
    <g:set var="i" value="${0}"/>
    <g:set var="count" value="${sources.size()}"/>
    <g:each in="${sources}" var="source">
        <div name="parent">
            <div id="Create_${i}" class="fieldcontain ${hasErrors(bean: answerInstance, field: 'answer', 'error')} ">
                <label for="source">
                    <g:message code="question.answer.source" args="[Integer.valueOf(i)+1]" default="Source ${Integer.valueOf(i) + 1}" />
                </label>
                <g:textField name="answer" required="required" value="${sources?.get(i).answer}"/>
                <input type="number" class="link" name="link" style="margin-right:5%;width: 4%" required="required" value="${sources?.get(i).destinationId}"/>
                    <g:message code="question.answer.destination" args="[Integer.valueOf(i)+1]" default="Answer ${Integer.valueOf(i) + 1}" />
                <g:textField name="destination" required="required" value="${destinations?.get(i).answer}"/>${i+1}
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
        <div id="Create_${answerIndex}" class="fieldcontain ${hasErrors(bean: answerInstance, field: 'answer', 'error')} ">
            <label for="source">
                <g:message code="question.answer.source" args="[Integer.valueOf(answerIndex)+1]" default="Source ${Integer.valueOf(answerIndex) + 1}" />
            </label>
            <g:textField name="answer" required="required" value="${answerInstance?.answer}"/>
            <input type="number" class="link" style="margin-right: 5%;width: 4%" name="link" required="required" />
                <g:message code="question.answer.destination" args="[Integer.valueOf(answerIndex)+1]" default="Answer ${Integer.valueOf(answerIndex) + 1}" />
            <g:textField  name="destination" required="required" value="${answerInstance?.answer}"/> ${Integer.valueOf(answerIndex)+1}
            <a href="#" class="removeLink" onclick="removeOption( '${'Create_' + answerIndex}',true)" ><g:message code="question.answer.remove" /></a>
        </div>
    </div>
</g:else>