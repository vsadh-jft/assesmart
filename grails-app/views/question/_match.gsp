<g:if test="${questionInstance?.id>0}">
    <g:set var="i" value="${0}"/>
    <g:set var="count" value="${sources.size()}"/>
    <g:each in="${sources}" var="source">
        <div name="parent">
            <div id="Create_${i}">
                <div class="block1">
                    <div class="source-block">
                        <input type="text" required="required" name="answer" value="${sources?.get(i).answer}" class="match-text">
                        <input type="number" required="required" value="${sources?.get(i).destinationId}" name="link" min="1" max="" class="src-quant">
                    </div>
                    <div class="target-block">
                        <input type="text" required="required" value="${destinations?.get(i).answer}" name="destination" class="match-text"><span class="serial-match">${Integer.valueOf(i)+1}</span>
                        <div class="remove-box">
                            <a href="#" class="removeLink " onclick="removeOption( '${'Create_' + i}',true)"><img src="${resource(dir: 'images', file: 'Remove-icon.png')}" alt=""><span><g:message code="question.answer.remove" /></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <g:set var="i" value="${i+1}"/>
    </g:each>
</g:if>
<g:else>
    <div name="parent">
        <div id="Create_${answerIndex}">
            <div class="block1">
                <div class="source-block">
                    <input type="text" required="required" name="answer" class="match-text">
                    <input type="number" required="required" name="link" min="1" max="" class="src-quant">
                </div>
                <div class="target-block">
                    <input type="text" required="required" name="destination" class="match-text"><span class="serial-match">${Integer.valueOf(answerIndex)+1}</span>
                    <div class="remove-box">
                        <a href="#" class="removeLink " onclick="removeOption( '${'Create_' + answerIndex}',true)"><img src="${resource(dir: 'images', file: 'Remove-icon.png')}" alt=""><span><g:message code="question.answer.remove" /></span></a>
                    </div>
                </div>

            </div>
        </div>
    </div>
</g:else>