<%@ page import="com.onlocation.actor.Client" %>


<div class="form-group ${hasErrors(bean: clientInstance, field: 'username', 'error')}">
	<label for="username">
		<g:message code="client.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" class="form-control" required="" value="${clientInstance?.username}" />
</div>

<div class="form-group ${hasErrors(bean: clientInstance, field: 'accountExpired', 'error')}">
	<g:checkBox name="accountExpired" value="${clientInstance?.accountExpired}" />
	<label for="accountExpired">
		<g:message code="client.accountExpired.label" default="Account Expired" />
		<span class="required-indicator">*</span>
	</label>
</div>

<div class="form-group ${hasErrors(bean: clientInstance, field: 'accountLocked', 'error')}">
	<g:checkBox name="accountLocked" value="${clientInstance?.accountLocked}" />
	<label for="accountExpired">
		<g:message code="client.accountLocked.label" default="Account Locked" />
	</label>
</div>

<div class="form-group ${hasErrors(bean: clientInstance, field: 'enabled', 'error')}">
	<g:checkBox name="enabled" value="${clientInstance?.enabled}" />
	<label for="accountExpired">
		<g:message code="client.enabled.label" default="Enabled" />
	</label>
</div>


<div class="form-group ${hasErrors(bean: clientInstance, field: 'passwordExpired', 'error')}">
	<g:checkBox name="passwordExpired" value="${clientInstance?.passwordExpired}" />
	<label for="accountExpired">
		<g:message code="client.passwordExpired.label" default="Password Expired" />
	</label>
</div>
