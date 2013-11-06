<jsp:include page="../base/header.jsp">
	<jsp:param name="title" value="Requerimientos de materiales" />
</jsp:include>
<!--  -->
<div class="row">
<div class="span12">
	<h3>Facturas y Boletas</h3>
	
<form class="form-search">
  	<fieldset>
		<legend>Buscar</legend>
	    
	    <label>Tipo de Comprobante</label>
		<div class="input-append">
			<select class="selectpicker">
				<option>Factura</option>
				<option>Boleta</option>
			</select>
		</div>
	</fieldset>
</form>
	</div>
	<div class="span12">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>#</th>
					<th>Serie</th>
					<th>N&uacute;mero</th>
					<th>Cliente</th>
					<th>Fecha</th>
					<th>Estado</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>001</td>
					<td>0000005</td>
					<td>Cesar Herrera Davila</td>
					<td>2012-05-12</td>
					<td><span class="label label-success">Entregada</span></td>
					<td><div class="btn-group">
						<button class="btn dropdown-toggle" data-toggle="dropdown">
							Acci&oacute;n <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Ver</a></li>
							<li class="divider"></li>
							<li><a href="#">Anular</a></li>
						</ul>
					</div></td>
				</tr>
				<tr>
					<td>2</td>
					<td>001</td>
					<td>0000006</td>
					<td>Jose Negron Ruiz</td>
					<td>2013-07-02</td>
					<td><span class="label label-important">Anulada</span></td>
					<td><div class="btn-group">
						<button class="btn dropdown-toggle" data-toggle="dropdown">
							Acci&oacute;n <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Ver</a></li>
						</ul>
					</div></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<!--  -->

<jsp:include page="../base/footer.jsp" />