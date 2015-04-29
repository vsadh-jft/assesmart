<%@ page import="com.assesmart.question.Question;com.assesmart.enumeration.QuestionType" %>



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

<g:hiddenField name="questionType" value="${questionType!=null?questionType:questionInstance.questionType}" />
<g:if test="${questionInstance?.id>0}">
    <g:set var="questionType" value="${questionInstance.questionType.toString()}"></g:set>
</g:if>
<g:if test="${questionType==QuestionType.MULTIPLE_CHOICE.toString()}">
    <div id="multichoice">
        <g:render template="mutipleChoice" model="[answerIndex:0]"/>
    </div>
    <a href="#" onclick="addAnswer('${questionType}');">
        <g:message code="question.add.answer.label" default="Add Answer" />
    </a>
</g:if>
<g:elseif test="${questionType==QuestionType.MULTIPLE_SELECT.toString()}">
    <div id="multipleSelect">
        <g:render template="multipleSelect" model="[answerIndex:0]" />
    </div>
    <a href="#" onclick="addAnswer('${questionType}');">
        <g:message code="question.add.answer.label" default="Add Answer" />
    </a>
</g:elseif>
<g:elseif test="${questionType==QuestionType.ESSAY.toString()}">
    <div id="essay">
        <g:render template="essay" model="[answerIndex:0]" />
    </div>
</g:elseif>
<g:elseif test="${questionType==QuestionType.SINGLE_RESPONSE.toString()}">
    <div id="singleResponse">
        <g:render template="singleResponse" model="[answerIndex:0]" />
    </div>
    <input type="number" name="points" required="required" value="${questionInstance?.points}"/>
    <a href="#" onclick="addAnswer('${questionType}');">
        <g:message code="question.add.answer.label" default="Add Answer" />
    </a>
</g:elseif>

<script type="text/javascript">

    function addAnswer(questionType) {
        $('.removeLink').remove();
        var links = document.getElementsByClassName('removeLink');
        var i = document.getElementsByName("answer").length;
        $.ajax({
            url: '${createLink(controller: 'question', action: 'addAnswer')}',
            data: {answerIndex: i,questionType:questionType},
            cache: false,
            success: function(html) {
                if(questionType=='MULTIPLE_CHOICE'){
                    $('div[id="multichoice"]').append(html);
                }else if(questionType=='MULTIPLE_SELECT'){
                    $('div[id="multipleSelect"]').append(html);
                }

            }
        });

    }

    function removeOption(id,isCreate){
console.debug(id)
        var i = document.getElementsByName("answer").length;
        i=i-2
        var j = document.getElementsByClassName("fieldcontain").length;
        j=j-2
        console.debug(i)
        if(isCreate && i>=1){
            $(".fieldcontain:eq(" + j + ")").append("<a href=# class=removeLink onclick=removeOption(" + "'" + 'Create_' + i +  "'"  + ",true" + ") >Remove Option</a>");
        }else if(!isCreate && i>=1){
            $(".fieldcontain:eq(" + j + ")").append("<a href=# class=removeLink onclick=removeOption(" + "'" + 'Exist_' + i +  "'"  + ",false" + ") >Remove Option</a>");
        }
        if(i>=0){
            return (elem=document.getElementById(id)).parentNode.removeChild(elem);
        }
    }

</script>
