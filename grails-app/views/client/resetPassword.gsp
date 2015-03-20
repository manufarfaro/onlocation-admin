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

		<g:link class="btn btn-primary pull-right ol-btn" action="show" id="${clientInstance?.id}">
			<i class="fa fa-arrow-left"></i>
			<g:message code="default.go_back.label" args="[entityName]" />
		</g:link>
		<div class="row">
			<div class="col-md-12">
				<div class="alert alert-success alert-dismissible" role="alert">
				  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
				  	<span aria-hidden="true">&times;</span>
				  </button>
				  Se ha cambiado la Contrase&ntilde;a...
				</div>
				<div class="well">
					<p class="ol-user-code text-center">
						<i class="fa fa-key"></i>
						<span>${passwordGenerated}</span>
					</p>
					<a class="btn btn-warning btn-block">
						<i class="fa fa-envelope"></i>
						Enviar correo de contraseña.
					</a>
				</div>
			</div>
		</div>
	</body>
</g:applyLayout>