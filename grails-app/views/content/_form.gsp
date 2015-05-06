<%@ page import="com.assesmart.assesment.Content" %>



<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'assessmentDescription', 'error')} ">
	<label for="assessmentDescription">
		<g:message code="content.assessmentDescription.label" default="Assessment Description" />
		
	</label>
	<g:textField name="assessmentDescription" value="${contentInstance?.assessmentDescription}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'assessmentText', 'error')} ">
	<label for="assessmentText">
		<g:message code="content.assessmentText.label" default="Assessment Text" />
		
	</label>
	<g:textField name="assessmentText" value="${contentInstance?.assessmentText}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'assessmentFailedMessage', 'error')} required">
	<label for="assessmentFailedMessage">
		<g:message code="content.assessmentFailedMessage.label" default="Assessment Failed Message" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="assessmentFailedMessage" required="" value="${contentInstance?.assessmentFailedMessage}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'assessmentPassedMessage', 'error')} required">
	<label for="assessmentPassedMessage">
		<g:message code="content.assessmentPassedMessage.label" default="Assessment Passed Message" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="assessmentPassedMessage" required="" value="${contentInstance?.assessmentPassedMessage}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'perQuestionReviewText', 'error')} ">
	<label for="perQuestionReviewText">
		<g:message code="content.perQuestionReviewText.label" default="Per Question Review Text" />
		
	</label>
	<g:textField name="perQuestionReviewText" value="${contentInstance?.perQuestionReviewText}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'messageUnscoredOrUnderReview', 'error')} required">
	<label for="messageUnscoredOrUnderReview">
		<g:message code="content.messageUnscoredOrUnderReview.label" default="Message Unscored Or Under Review" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="messageUnscoredOrUnderReview" required="" value="${contentInstance?.messageUnscoredOrUnderReview}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'assessment', 'error')} required">
	<label for="assessment">
		<g:message code="content.assessment.label" default="Assessment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="assessment" name="assessment.id" from="${com.assesmart.assesment.Assessment.list()}" optionKey="id" required="" value="${contentInstance?.assessment?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'isAgreementRequired', 'error')} ">
	<label for="isAgreementRequired">
		<g:message code="content.isAgreementRequired.label" default="Is Agreement Required" />
		
	</label>
	<g:checkBox name="isAgreementRequired" value="${contentInstance?.isAgreementRequired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'isDescriptionOnTop', 'error')} ">
	<label for="isDescriptionOnTop">
		<g:message code="content.isDescriptionOnTop.label" default="Is Description On Top" />
		
	</label>
	<g:checkBox name="isDescriptionOnTop" value="${contentInstance?.isDescriptionOnTop}" />

</div>

