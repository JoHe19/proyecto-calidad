<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Libertadores | Sistema de Facturaci&oacute;n</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link href="resources/css/bootstrap.css" rel="stylesheet">
<style type="text/css">
body {
	padding-top: 120px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

footer {
	text-align: center;
}
</style>

<link
	href="resources/css/bootstrap-responsive.css"
	rel="stylesheet">

<link href="resources/css/style.css"
	rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>

<div class="container">
	<form class="form-signin" action="${pageContext.request.contextPath}/content/index.jsp" method="POST">
		<img src="resources/img/imaginativa-logo.png" />
		<input type="text" name="txtLogin" id="txtLogin" class="input-block-level"/>
		<input type="password" name="txtPassword" id="txtPassword" class="input-block-level"/>
		<button class="btn btn-primary" type="submit">Ingresar</button>
	</form>
	<footer>
		<p>&copy; Imaginativa 2013</p>
	</footer>

</div>
<!-- /container -->
<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
