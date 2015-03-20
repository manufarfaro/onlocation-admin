<%@ page import="com.onlocation.actor.Client" %>
<g:applyLayout name="main">
	<head>
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<ol class="breadcrumb">
			<li>
				<a class="home" href="${createLink(controller: 'dashboard', action: 'index')}">
					<g:message code="default.home.label"/>
				</a>
			</li>
			<li>
				<a class="home" href="${createLink(controller: 'client', action: 'index')}">
					<g:message code="default.list.label" args="[entityName]" />
				</a>
			</li>
			<li class="active">
				<g:message code="default.create.label" args="[entityName]" />
			</li>
		</ol>

		<h1 class="col-md-6 ol-h1-title"><g:message code="default.create.label" args="[entityName]" /></h1>

		<g:link class="btn btn-info pull-right ol-btn" action="index">
			<i class="fa fa-list"></i>
			<g:message code="default.list.label" args="[entityName]" />
		</g:link>

		<g:if test="${flash.message}">
			<div class="alert alert-info alert-dismissible" role="alert">
			  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
			  	<span aria-hidden="true">&times;</span>
			  </button>
			  ${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${clientInstance}">
			<div class="alert alert-info alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<ul class="errors" role="alert">
					<g:eachError bean="${clientInstance}" var="error">
						<li<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
							<g:message error="${error}"/>
						</li>
					</g:eachError>
				</ul>
			</div>
		</g:hasErrors>
		
		<div class="row">
			<div id="create-client" class="col-md-12" role="main">
				<g:form url="[resource:clientInstance, action:'save']" >
					<fieldset class="form">
						<div class="form-group ${hasErrors(bean: clientInstance, field: 'username', 'error')}">
							<label for="username">
								<g:message code="client.username.label" default="Username" />
								<span class="required-indicator">*</span>
							</label>
							<g:textField name="username" class="form-control" required="" value="${clientInstance?.username}" />
						</div>

						<div class="form-group ${hasErrors(bean: clientInstance, field: 'password', 'error')}">
							<label for="password">
								<g:message code="client.password.label" default="Password" />
								<span class="required-indicator">*</span>
							</label>
							<g:passwordField name="password" class="form-control" required="" value="${clientInstance?.password}" />
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
					</fieldset>
					<fieldset class="buttons">
						<g:submitButton name="create" class="btn btn-success btn-block" value="${message(code: 'default.button.create.label', default: 'Create')}" />
					</fieldset>
				</g:form>
			</div>
		</div>
	</body>
</g:applyLayout>
