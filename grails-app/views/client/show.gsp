<%@ page import="com.onlocation.actor.Client" %>
<g:applyLayout name="main">
	<head>
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<ol class="breadcrumb">
			<li>
				<a class="home" href="${createLink(controller: 'dashboard', action: 'index')}">
					<g:message code="default.home.label"/>
				</a>
			</li>
			<li>
				<a class="home" href="${createLink(controller: 'client', action: 'show')}">
					<g:message code="default.list.label" args="[entityName]" />
				</a>
			</li>
			<li class="active">
				<g:message code="default.show.label" args="[entityName]" />
			</li>
		</ol>
		<h1 class="col-md-5 ol-h1-title"><g:message code="default.show.label" args="[entityName]" /></h1>

		<g:form url="[resource:clientInstance, action:'delete']" method="DELETE">
			<button class="btn btn-danger pull-right ol-btn" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
				<i class="fa fa-trash"></i>
				${message(code: 'default.button.delete.label', default: 'Delete')}
			</button>
		</g:form>
		<g:link class="btn btn-warning pull-right ol-btn" action="edit" id="${clientInstance?.getId()}">
			<i class="fa fa-pencil"></i>
			<g:message code="default.edit.label" args="[entityName]" />
		</g:link>
		<g:link class="btn btn-primary pull-right ol-btn" action="resetPassword" id="${clientInstance?.getId()}">
			<i class="fa fa-key"></i>
			Resetear Contrase&ntilde;a
<%--			<g:message code="default.create.label" args="[entityName]" />--%>
		</g:link>
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
		<div class="row">
			<div class="col-md-12">
				<ul class="ol-property-list client well">
					<li class="ol-fieldavatar">
						<img src="https://placehold.it/150x150/f0ad4e/ffffff" />					
					</li>
					<li class="ol-fieldcontain">
						<span id="username-label" class="property-label">
							<strong>
								<g:message code="client.username.label" default="Username" />
							</strong>
						</span>
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${clientInstance}" field="username"/></span>
					</li>

					<li class="ol-fieldcontain">
						<span id="password-label" class="property-label">
							<strong>
								<g:message code="client.password.label" default="Password" />
							</strong>
						</span>
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${clientInstance}" field="password"/></span>
					</li>

					<li class="ol-fieldcontain">
						<span id="accountExpired-label" class="property-label">
							<strong>
								<g:message code="client.accountExpired.label" default="Account Expired" />
							</strong>
						</span>
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${clientInstance?.accountExpired}" /></span>
					</li>

					<li class="ol-fieldcontain">
						<span id="accountLocked-label" class="property-label">
							<strong>
								<g:message code="client.accountLocked.label" default="Account Locked" />
							</strong>
						</span>
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${clientInstance?.accountLocked}" /></span>
					</li>

					<li class="ol-fieldcontain">
						<span id="enabled-label" class="property-label">
							<strong>
								<g:message code="client.enabled.label" default="Enabled" />
							</strong>
						</span>
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${clientInstance?.enabled}" /></span>
					</li>

					<li class="ol-fieldcontain">
						<span id="passwordExpired-label" class="property-label">
							<strong>
								<g:message code="client.passwordExpired.label" default="Password Expired" />
							</strong>
						</span>
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${clientInstance?.passwordExpired}" /></span>
					</li>
				</ul>
			</div>
		</div>
	</body>
</g:applyLayout>
