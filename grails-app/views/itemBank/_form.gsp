<%@ page import="com.assesmart.question.ItemBank" %>


<div class="ans ${hasErrors(bean: itemBankInstance, field: 'name', 'error')} required">

        <h3><g:message code="itemBank.name.label" default="Name" /></h3>

    <g:textField name="name" required="required" class="ans-text" value="${itemBankInstance?.name}"/>

</div>


