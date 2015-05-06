<%@ page import="com.assesmart.assesment.General" %>



<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'timeLimit', 'error')} ">
	<label for="timeLimit">
		<g:message code="general.timeLimit.label" default="Time Limit" />
		
	</label>
	<g:field name="timeLimit" type="number" value="${generalInstance.timeLimit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'autoSubmitTimeLimit', 'error')} ">
	<label for="autoSubmitTimeLimit">
		<g:message code="general.autoSubmitTimeLimit.label" default="Auto Submit Time Limit" />
		
	</label>
	<g:field name="autoSubmitTimeLimit" type="number" value="${generalInstance.autoSubmitTimeLimit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'noContinuationText', 'error')} ">
	<label for="noContinuationText">
		<g:message code="general.noContinuationText.label" default="No Continuation Text" />
		
	</label>
	<g:textField name="noContinuationText" value="${generalInstance?.noContinuationText}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'passMark', 'error')} ">
	<label for="passMark">
		<g:message code="general.passMark.label" default="Pass Mark" />
		
	</label>
	<g:field name="passMark" value="${fieldValue(bean: generalInstance, field: 'passMark')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'admittedURL', 'error')} ">
	<label for="admittedURL">
		<g:message code="general.admittedURL.label" default="Admitted URL" />
		
	</label>
	<g:textField name="admittedURL" value="${generalInstance?.admittedURL}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'externalResources', 'error')} ">
	<label for="externalResources">
		<g:message code="general.externalResources.label" default="External Resources" />
		
	</label>
	<g:textField name="externalResources" value="${generalInstance?.externalResources}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'assessment', 'error')} required">
	<label for="assessment">
		<g:message code="general.assessment.label" default="Assessment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="assessment" name="assessment.id" from="${com.assesmart.assesment.Assessment.list()}" optionKey="id" required="" value="${generalInstance?.assessment?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'isAllowChangeLanguage', 'error')} ">
	<label for="isAllowChangeLanguage">
		<g:message code="general.isAllowChangeLanguage.label" default="Is Allow Change Language" />
		
	</label>
	<g:checkBox name="isAllowChangeLanguage" value="${generalInstance?.isAllowChangeLanguage}" />

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'isDisableURLSecurity', 'error')} ">
	<label for="isDisableURLSecurity">
		<g:message code="general.isDisableURLSecurity.label" default="Is Disable URLS ecurity" />
		
	</label>
	<g:checkBox name="isDisableURLSecurity" value="${generalInstance?.isDisableURLSecurity}" />

</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'isHidePauseButton', 'error')} ">
	<label for="isHidePauseButton">
		<g:message code="general.isHidePauseButton.label" default="Is Hide Pause Button" />
	</label>
	<g:checkBox name="isHidePauseButton" value="${generalInstance?.isHidePauseButton}" />
</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'isSendMail', 'error')} ">
	<label for="isSendMail">
		<g:message code="general.isSendMail.label" default="Is Send Mail" />
	</label>
	<g:checkBox name="isSendMail" value="${generalInstance?.isSendMail}" />
</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'isStrictMode', 'error')} ">
    <label for="isStrictMode">
        <g:message code="general.isStrictMode.label" default="Is Strict Mode" />
    </label>
    <g:checkBox name="isStrictMode" value="${generalInstance?.isStrictMode}" />
</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'isTotalScore', 'error')} ">
	<label for="isTotalScore">
		<g:message code="general.isTotalScore.label" default="Is Total Score" />
	</label>
	<g:checkBox name="isTotalScore" value="${generalInstance?.isTotalScore}" />
</div>

<div class="fieldcontain ${hasErrors(bean: generalInstance, field: 'isVariableScore', 'error')} ">
	<label for="isVariableScore">
		<g:message code="general.isVariableScore.label" default="Is Variable Score" />
	</label>
	<g:checkBox name="isVariableScore" value="${generalInstance?.isVariableScore}" />
</div>

