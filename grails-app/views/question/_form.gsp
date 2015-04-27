<%@ page import="com.assesmart.question.Question;com.assesmart.enumeration.QuestionType" %>



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

<g:if test="${questionType==QuestionType.MULTIPLE_CHOICE.toString()}">
    <div id="multichoice">
        <g:render template="mutipleChoice" model="[answerIndex:1]"/>
    </div>
</g:if>
<g:elseif test="${questionType==QuestionType.MULTIPLE_SELECT.toString()}">
    <g:render template="multipleSelect" />
</g:elseif>

<a href="#" onclick="addAnswer('${questionType}');">
    Add Answer
</a>

<script type="text/javascript">

    function addAnswer(questionType) {
        console.debug("called...")
        console.debug(document.getElementsByName("answer").length)
        var i = document.getElementsByName("answer").length;
        $.ajax({
            url: '${createLink(controller: 'question', action: 'addAnswer')}',
            data: {answerIndex: i,questionType:questionType},
            cache: false,
            success: function(html) {
                $('div[id="multichoice"]').append(html);
            }
        });
    }

</script>
