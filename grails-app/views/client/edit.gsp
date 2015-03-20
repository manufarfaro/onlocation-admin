<%@ page import="com.onlocation.actor.Client" %>
<g:applyLayout name="main">
	<head>
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
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
				<g:message code="default.edit.label" args="[entityName]" />
			</li>
		</ol>
		<h1 class="col-md-5 ol-h1-title"><g:message code="default.edit.label" args="[entityName]" /></h1>
		
		<g:form url="[resource:clientInstance, action:'delete']" method="DELETE">
			<button class="btn btn-danger pull-right ol-btn" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
				<i class="fa fa-trash"></i>
				${message(code: 'default.button.delete.label', default: 'Delete')}
			</button>
		</g:form>
		<g:link class="btn btn-warning pull-right ol-btn" action="show" id="${clientInstance?.getId()}">
			<i class="fa fa-eye"></i>
			<g:message code="default.show.label" args="[entityName]" />
		</g:link>
		<g:link class="btn btn-primary pull-right ol-btn" action="create">
			<i class="fa fa-plus"></i>
			<g:message code="default.create.label" args="[entityName]" />
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
		<g:hasErrors bean="${clientInstance}">
			<div class="alert alert-info alert-dismissible" role="alert">
			  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
			  	<span aria-hidden="true">&times;</span>
			  </button>
			  <ul class="errors" role="alert">
				<g:eachError bean="${clientInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
						<g:message error="${error}"/>
					</li>
				</g:eachError>
			 </ul>
			</div>
		</g:hasErrors>
		<g:form url="[resource:clientInstance, action:'update']" method="PUT" >
			<div class="row">
				<div class="col-md-12">
					<g:hiddenField name="version" value="${clientInstance?.version}" />
					<fieldset class="form">
						<g:render template="form"/>
					</fieldset>
					<fieldset class="buttons">
						<g:actionSubmit class="btn btn-success btn-block" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					</fieldset>				
				</div>
			</div>
		</g:form>
	</body>
</g:applyLayout>
