<%@ page import="com.assesmart.assesment.Review" %>



<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'assessment', 'error')} required">
	<label for="assessment">
		<g:message code="review.assessment.label" default="Assessment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="assessment" name="assessment.id" from="${com.assesmart.assesment.Assessment.list()}" optionKey="id" required="" value="${reviewInstance?.assessment?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'isAllowAnswerChanging', 'error')} ">
	<label for="isAllowAnswerChanging">
		<g:message code="review.isAllowAnswerChanging.label" default="Is Allow Answer Changing" />
		
	</label>
	<g:checkBox name="isAllowAnswerChanging" value="${reviewInstance?.isAllowAnswerChanging}" />

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'isShowAnytime', 'error')} ">
	<label for="isShowAnytime">
		<g:message code="review.isShowAnytime.label" default="Is Show Anytime" />
		
	</label>
	<g:checkBox name="isShowAnytime" value="${reviewInstance?.isShowAnytime}" />

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'isShowAsFlow', 'error')} ">
	<label for="isShowAsFlow">
		<g:message code="review.isShowAsFlow.label" default="Is Show As Flow" />
		
	</label>
	<g:checkBox name="isShowAsFlow" value="${reviewInstance?.isShowAsFlow}" />

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'isShowNever', 'error')} ">
	<label for="isShowNever">
		<g:message code="review.isShowNever.label" default="Is Show Never" />
		
	</label>
	<g:checkBox name="isShowNever" value="${reviewInstance?.isShowNever}" />

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'isShowOnce', 'error')} ">
	<label for="isShowOnce">
		<g:message code="review.isShowOnce.label" default="Is Show Once" />
		
	</label>
	<g:checkBox name="isShowOnce" value="${reviewInstance?.isShowOnce}" />

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'isShowRationale', 'error')} ">
	<label for="isShowRationale">
		<g:message code="review.isShowRationale.label" default="Is Show Rationale" />
		
	</label>
	<g:checkBox name="isShowRationale" value="${reviewInstance?.isShowRationale}" />

</div>

