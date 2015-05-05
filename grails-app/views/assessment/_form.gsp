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

