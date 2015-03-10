<g:applyLayout name="non-auth">
	<head>
		<title><g:if env="development">Grails Runtime Exception</g:if><g:else>Error</g:else></title>
	</head>
</g:applyLayout>
<html>
	<body>
		<div id="ol-error-login" class="well col-md-12 ol-login-container">
			<asset:image src="ol-logo-md.png"/>
			<g:if env="development">
				<g:renderException exception="${exception}" />
			</g:if>
			<g:else>
				<div class="row">
					<div class="col-md-12 text-center ol-error-text">
						<p class="ol-error-status">
							${request.getAttribute('javax.servlet.error.status_code')}
						</p>
						<p class="ol-error-message">
							<g:if test="${request.getAttribute('javax.servlet.error.status_code') == 500}">
								Oops... Ha ocurrido un error.
							</g:if>
							<g:if test="${request.getAttribute('javax.servlet.error.status_code') == 404}">
								Oops... Página no encontrada.
							</g:if>
						</p>
					</div>
				</div>
			</g:else>
		</div>
	</body>
</html>
