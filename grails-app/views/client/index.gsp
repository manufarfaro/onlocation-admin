<%@ page import="com.onlocation.actor.Client" %>
<g:applyLayout name="main">
	<head>
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<ol class="breadcrumb">
			<li>
				<a class="home" href="${createLink(controller: 'dashboard', action: 'index')}">
					<g:message code="default.home.label"/>
				</a>
			</li>
			<li class="active">
				<g:message code="default.list.label" args="[entityName]" />
			</li>
		</ol>
		<h1 class="col-md-6 ol-h1-title"><g:message code="default.list.label" args="[entityName]" /></h1>

		<g:link class="btn btn-primary pull-right ol-btn" action="create">
			<i class="fa fa-plus"></i>
			<g:message code="default.create.label" args="[entityName]" />
		</g:link>

		<g:if test="${flash.message}">
			<div class="alert alert-info alert-dismissible" role="alert">
			  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
			  	<span aria-hidden="true">&times;</span>
			  </button>
			  ${flash.message}
			</div>
		</g:if>

		<table class="table">
			<thead>
				<tr>
					<g:sortableColumn property="username" title="${message(code: 'client.username.label', default: 'Username')}" />

					<g:sortableColumn property="accountExpired" title="${message(code: 'client.accountExpired.label', default: 'Account Expired')}" />
				
					<g:sortableColumn property="accountLocked" title="${message(code: 'client.accountLocked.label', default: 'Account Locked')}" />
					
						<g:sortableColumn property="enabled" title="${message(code: 'client.enabled.label', default: 'Enabled')}" />
					
						<g:sortableColumn property="passwordExpired" title="${message(code: 'client.passwordExpired.label', default: 'Password Expired')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clientInstanceList}" status="i" var="clientInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${clientInstance.id}">${fieldValue(bean: clientInstance, field: "username")}</g:link></td>
					
						<td><g:formatBoolean boolean="${clientInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${clientInstance.accountLocked}" /></td>
					
						<td><g:formatBoolean boolean="${clientInstance.enabled}" /></td>
					
						<td><g:formatBoolean boolean="${clientInstance.passwordExpired}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination center-block">
				<div class="text-center">
					<bootstrap:paginate total="${clientInstanceCount ?: 0}" />
				</div>
			</div>
	</body>
</g:applyLayout>
