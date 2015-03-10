<%@page import="org.h2.command.ddl.CreateLinkedTable"%>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
  	<div class="navbar-header">
  		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".ol-header-collapse">
	      <span class="sr-only">Desplegar navegación</span>
	      <span class="icon-bar"></span>
	      <span class="icon-bar"></span>
	      <span class="icon-bar"></span>
	    </button>
    	<a class="navbar-brand" href="#">
    		<asset:image src="ol-logo-md-inverse.png" class="ol-header-brand"/>
    	</a>
    </div>
    <ul class="nav navbar-nav navbar-right collapse navbar-collapse ol-header-collapse">
        <li>
        	<g:link controller='logout'>
        		<i class="fa fa-power-off"></i>
        		Logout
        	</g:link>
        </li>
    </ul>
  </div>
</nav>
