<%@ page import="com.assesmart.assesment.Assessment" %>



<div class="fieldcontain ${hasErrors(bean: assessmentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="assessment.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${assessmentInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: assessmentInstance, field: 'assessmentForms', 'error')} ">
    <label for="assessmentForms">
        <g:message code="assessment.assessmentForms.label" default="Assessment Forms" />

    </label>

    <ul class="one-to-many">
        <g:each in="${assessmentInstance?.assessmentForms?}" var="a">
            <li><g:link controller="assessmentForm" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="assessmentForm" action="create" params="['assessment.id': assessmentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'assessmentForm.label', default: 'AssessmentForm')])}</g:link>
        </li>
    </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: assessmentInstance, field: 'isRuleBased', 'error')} ">
	<label for="isRuleBased">
		<g:message code="assessment.isRuleBased.label" default="Is Rule Based" />
		
	</label>
	<g:checkBox name="isRuleBased" value="${assessmentInstance?.isRuleBased}" />

</div>
Content:
<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'assessmentDescription', 'error')} ">
    <label for="assessmentDescription">
        <g:message code="content.assessmentDescription.label" default="Assessment Description" />

    </label>
    <g:textField name="contentCO.assessmentDescription" value="${assessmentInstance?.contentCO?.assessmentDescription}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'assessmentText', 'error')} ">
    <label for="assessmentText">
        <g:message code="content.assessmentText.label" default="Assessment Text" />

    </label>
    <g:textField name="contentCO.assessmentText" value="${contentInstance?.assessmentText}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'assessmentFailedMessage', 'error')} required">
    <label for="assessmentFailedMessage">
        <g:message code="content.assessmentFailedMessage.label" default="Assessment Failed Message" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="contentCO.assessmentFailedMessage" required="" value="${contentInstance?.assessmentFailedMessage}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'assessmentPassedMessage', 'error')} required">
    <label for="assessmentPassedMessage">
        <g:message code="content.assessmentPassedMessage.label" default="Assessment Passed Message" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="contentCO.assessmentPassedMessage" required="" value="${contentInstance?.assessmentPassedMessage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'perQuestionReviewText', 'error')} ">
    <label for="perQuestionReviewText">
        <g:message code="content.perQuestionReviewText.label" default="Per Question Review Text" />

    </label>
    <g:textField name="contentCO.perQuestionReviewText" value="${contentInstance?.perQuestionReviewText}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'messageUnscoredOrUnderReview', 'error')} required">
    <label for="messageUnscoredOrUnderReview">
        <g:message code="content.messageUnscoredOrUnderReview.label" default="Message Unscored Or Under Review" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="contentCO.messageUnscoredOrUnderReview" required="" value="${contentInstance?.messageUnscoredOrUnderReview}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'isAgreementRequired', 'error')} ">
    <label for="isAgreementRequired">
        <g:message code="content.isAgreementRequired.label" default="Is Agreement Required" />

    </label>
    <g:checkBox name="contentCO.isAgreementRequired" value="${contentInstance?.isAgreementRequired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'isDescriptionOnTop', 'error')} ">
    <label for="isDescriptionOnTop">
        <g:message code="content.isDescriptionOnTop.label" default="Is Description On Top" />

    </label>
    <g:checkBox name="contentCO.isDescriptionOnTop" value="${contentInstance?.isDescriptionOnTop}" />
</div>

General:



<%@ page import="com.assesmart.assesment.General" %>



<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'timeLimit', 'error')} ">
    <label for="timeLimit">
        <g:message code="general.timeLimit.label" default="Time Limit" />

    </label>
    <g:field name="generalCO.timeLimit" type="number" value="${generalInstance?.timeLimit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'autoSubmitTimeLimit', 'error')} ">
    <label for="autoSubmitTimeLimit">
        <g:message code="general.autoSubmitTimeLimit.label" default="Auto Submit Time Limit" />

    </label>
    <g:field name="generalCO.autoSubmitTimeLimit" type="number" value="${generalInstance?.autoSubmitTimeLimit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'noContinuationText', 'error')} ">
    <label for="noContinuationText">
        <g:message code="general.noContinuationText.label" default="No Continuation Text" />

    </label>
    <g:textField name="generalCO.noContinuationText" value="${generalInstance?.noContinuationText}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'passMark', 'error')} ">
    <label for="passMark">
        <g:message code="general.passMark.label" default="Pass Mark" />

    </label>
    <g:textField name="generalCO.passMark" value="${fieldValue(bean: generalInstance, field: 'passMark')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'admittedURL', 'error')} ">
    <label for="admittedURL">
        <g:message code="general.admittedURL.label" default="Admitted URL" />

    </label>
    <g:textField name="generalCO.admittedURL" value="${generalInstance?.admittedURL}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'externalResources', 'error')} ">
    <label for="externalResources">
        <g:message code="general.externalResources.label" default="External Resources" />

    </label>
    <g:textField name="generalCO.externalResources" value="${generalInstance?.externalResources}"/>

</div>



<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'isAllowChangeLanguage', 'error')} ">
    <label for="isAllowChangeLanguage">
        <g:message code="general.isAllowChangeLanguage.label" default="Is Allow Change Language" />

    </label>
    <g:checkBox name="generalCO.isAllowChangeLanguage" value="${generalInstance?.isAllowChangeLanguage}" />

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'isDisableURLSecurity', 'error')} ">
    <label for="isDisableURLSecurity">
        <g:message code="general.isDisableURLSecurity.label" default="Is Disable URLS ecurity" />

    </label>
    <g:checkBox name="generalCO.isDisableURLSecurity" value="${generalInstance?.isDisableURLSecurity}" />

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'isHidePauseButton', 'error')} ">
    <label for="isHidePauseButton">
        <g:message code="general.isHidePauseButton.label" default="Is Hide Pause Button" />

    </label>
    <g:checkBox name="generalCO.isHidePauseButton" value="${generalInstance?.isHidePauseButton}" />

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'isSendMail', 'error')} ">
    <label for="isSendMail">
        <g:message code="general.isSendMail.label" default="Is Send Mail" />

    </label>
    <g:checkBox name="generalCO.isSendMail" value="${generalInstance?.isSendMail}" />

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'isStrictMode', 'error')} ">
    <label for="isStrictMode">
        <g:message code="general.isStrictMode.label" default="Is Strict Mode" />

    </label>
    <g:checkBox name="generalCO.isStrictMode" value="${generalInstance?.isStrictMode}" />

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'isTotalScore', 'error')} ">
    <label for="isTotalScore">
        <g:message code="general.isTotalScore.label" default="Is Total Score" />

    </label>
    <g:checkBox name="generalCO.isTotalScore" value="${generalInstance?.isTotalScore}" />

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'isVariableScore', 'error')} ">
    <label for="generalCO.isVariableScore">
        <g:message code="general.isVariableScore.label" default="Is Variable Score" />

    </label>
    <g:checkBox name="generalCO.isVariableScore" value="${generalInstance?.isVariableScore}" />

</div>

Proctor:


<div class="fieldcontain ${hasErrors(bean: proctorInstance, field: 'isBookingRequire', 'error')} ">
    <label for="isBookingRequire">
        <g:message code="proctor.isBookingRequire.label" default="Is Booking Require" />

    </label>
    <g:checkBox name="proctorCO.isBookingRequire" value="${proctorInstance?.isBookingRequire}" />

</div>

<div class="fieldcontain ${hasErrors(bean: proctorInstance, field: 'isProctorRequire', 'error')} ">
    <label for="isProctorRequire">
        <g:message code="proctor.isProctorRequire.label" default="Is Proctor Require" />

    </label>
    <g:checkBox name="proctorCO.isProctorRequire" value="${proctorInstance?.isProctorRequire}" />

</div>

<div class="fieldcontain ${hasErrors(bean: proctorInstance, field: 'isTimeWhilePaused', 'error')} ">
    <label for="isTimeWhilePaused">
        <g:message code="proctor.isTimeWhilePaused.label" default="Is Time While Paused" />

    </label>
    <g:checkBox name="proctorCO.isTimeWhilePaused" value="${proctorInstance?.isTimeWhilePaused}" />

</div>


Review:



<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'isAllowAnswerChanging', 'error')} ">
    <label for="isAllowAnswerChanging">
        <g:message code="review.isAllowAnswerChanging.label" default="Is Allow Answer Changing" />

    </label>
    <g:checkBox name="reviewCO.isAllowAnswerChanging" value="${reviewInstance?.isAllowAnswerChanging}" />

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'isShowAnytime', 'error')} ">
    <label for="isShowAnytime">
        <g:message code="review.isShowAnytime.label" default="Is Show Anytime" />

    </label>
    <g:checkBox name="reviewCO.isShowAnytime" value="${reviewInstance?.isShowAnytime}" />

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'isShowAsFlow', 'error')} ">
    <label for="isShowAsFlow">
        <g:message code="review.isShowAsFlow.label" default="Is Show As Flow" />

    </label>
    <g:checkBox name="reviewCO.isShowAsFlow" value="${reviewInstance?.isShowAsFlow}" />

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'isShowNever', 'error')} ">
    <label for="isShowNever">
        <g:message code="review.isShowNever.label" default="Is Show Never" />

    </label>
    <g:checkBox name="reviewCO.isShowNever" value="${reviewInstance?.isShowNever}" />

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'isShowOnce', 'error')} ">
    <label for="isShowOnce">
        <g:message code="review.isShowOnce.label" default="Is Show Once" />

    </label>
    <g:checkBox name="reviewCO.isShowOnce" value="${reviewInstance?.isShowOnce}" />

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'isShowRationale', 'error')} ">
    <label for="isShowRationale">
        <g:message code="review.isShowRationale.label" default="Is Show Rationale" />

    </label>
    <g:checkBox name="reviewCO.isShowRationale" value="${reviewInstance?.isShowRationale}" />

</div>




