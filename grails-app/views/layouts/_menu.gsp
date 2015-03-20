<ul class="nav nav-pills nav-stacked well">
	<li role="presentation">
		<a href="#">
			<i class="fa fa-user"></i>
			Mi Perfil
		</a>
	</li>
	<sec:ifAnyGranted roles="ROLE_MUNICIPALITY">

		<li role="presentation" class="${ controllerName.equals('client') ? 'active' : ''  } ">
			<g:link controller="client" action="index">
				<i class="fa fa-users"></i>
				Clientes
			</g:link>
		</li>
	</sec:ifAnyGranted>
</ul>