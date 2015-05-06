<%@ page import="com.assesmart.assesment.Proctor" %>



<div class="fieldcontain ${hasErrors(bean: proctorInstance, field: 'assessment', 'error')} required">
	<label for="assessment">
		<g:message code="proctor.assessment.label" default="Assessment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="assessment" name="assessment.id" from="${com.assesmart.assesment.Assessment.list()}" optionKey="id" required="" value="${proctorInstance?.assessment?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proctorInstance, field: 'isBookingRequire', 'error')} ">
	<label for="isBookingRequire">
		<g:message code="proctor.isBookingRequire.label" default="Is Booking Require" />
		
	</label>
	<g:checkBox name="isBookingRequire" value="${proctorInstance?.isBookingRequire}" />

</div>

<div class="fieldcontain ${hasErrors(bean: proctorInstance, field: 'isProctorRequire', 'error')} ">
	<label for="isProctorRequire">
		<g:message code="proctor.isProctorRequire.label" default="Is Proctor Require" />
		
	</label>
	<g:checkBox name="isProctorRequire" value="${proctorInstance?.isProctorRequire}" />

</div>

<div class="fieldcontain ${hasErrors(bean: proctorInstance, field: 'isTimeWhilePaused', 'error')} ">
	<label for="isTimeWhilePaused">
		<g:message code="proctor.isTimeWhilePaused.label" default="Is Time While Paused" />
		
	</label>
	<g:checkBox name="isTimeWhilePaused" value="${proctorInstance?.isTimeWhilePaused}" />

</div>

