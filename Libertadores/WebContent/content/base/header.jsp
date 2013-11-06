<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Los Libertadores | Sistema de Facturación</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css"
	rel="stylesheet">

<style type="text/css">
body {
	padding-top: 60px;
	padding-bottom: 40px;
}
</style>

<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap-responsive.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/smoothness/jquery-ui-1.10.0.custom.min.css"
	rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    
</head>

<body>

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="#">Los Libertadores</a>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li class="active"><a href="#">Inicio</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Usuarios<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Listar</a></li>
								<li><a href="#">Crear</a></li>
								<li><a href="#">Asignar Permisos</a></li>
							</ul>
						</li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Configuraci&oacute;n<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/content/configuracion/modificar.jsp">Configuraci&oacute;n</a></li>
							</ul>
						</li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Facturaci&oacute;n<b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/content/facturacion/list.jsp">Listar</a></li>
								<li><a href="${pageContext.request.contextPath}/content/facturacion/create.jsp">Crear</a></li>
								<li><a href="${pageContext.request.contextPath}/content/facturacion/void.jsp">Anular</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Reportes<b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/content/reports/kardex.jsp">Facturas por Cliente</a></li>
								<li><a href="${pageContext.request.contextPath}/content/reports/order-production.jsp">Facturas por fecha</a></li>
							</ul>
						</li>
					</ul>
					
					<ul class="nav pull-right">
                      <li class="divider-vertical"></li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Sailor Farfan<b class="caret"></b></a>
                        <ul class="dropdown-menu">
<!--                           <li><a href="#">Editar</a></li> -->
<!--                           <li class="divider"></li> -->
                          <li><a href="#">Salir</a></li>
                        </ul>
                      </li>
                    </ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>

	<div class="container">