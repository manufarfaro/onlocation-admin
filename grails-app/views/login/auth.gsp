<g:applyLayout name="non-auth">
	<head>
		<title><g:message code="springSecurity.login.title"/></title>
	</head>
	<body>
		<div id="ol-page-login" class="col-md-6 col-md-offset-3 ol-login-container">
			<div id='login' class="well">
				<div class="row">
					
				</div>
				<div class='inner'>
					<asset:image src="ol-logo-md.png"/>
			
					<g:if test='${flash.message}'>
						<div class="alert alert-danger alert-dismissible" role="alert">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							${flash.message}
						</div>
					</g:if>
			
					<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
						<div class="form-group">
					    	<label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
					    	<input type='text' class='form-control text_' name='j_username' id='username' placeholder="${ message(code:'springSecurity.login.username.label') }"/>
					  	</div>
			
						<div class="form-group">
							<label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
							<input type='password' class='form-control text_' name='j_password' id='password' placeholder="${ message(code:'springSecurity.login.password.label') }"/>
						</div>
		
						<div id="remember_me_holder" class="form-group">
							<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
							<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
						</div>
			
						<div class="form-group">
							<input type='submit' id="submit" class="btn btn-info btn-lg btn-block" value='${message(code: "springSecurity.login.button")}'/>
						</div>
						
						<div class="form-group">
							<p>&iquest;Olvidaste tu contrase&ntilde;a? Pod&eacute;s recuperarla haciendo click <a href="#">acá</a>.</p>
							<p>&iquest;No estás registrado? Hace click <a href="#">ac&aacute;</a> para registrarte.</p>
						</div>
					</form>
				</div>
			</div>
		</div>
		<script type='text/javascript'>
			(function() {
				document.forms['loginForm'].elements['j_username'].focus();
			})();
		</script>
	</body>
</g:applyLayout>