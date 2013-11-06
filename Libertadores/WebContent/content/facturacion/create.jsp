<jsp:include page="../base/header.jsp">
	<jsp:param name="title" value="Crear Orden de produccion" />
</jsp:include>
<!--  -->
<div class="row">
	<h3>Crear Comprobante de pago</h3>
	<s:form cssClass="form-horizontal toValid" action="save" method="POST">
	<s:hidden name="productionOrder.idUser"></s:hidden>
	<s:hidden name="productionOrder.idCompany"></s:hidden>
	<s:hidden name="productionOrder.idEnterpriseEstablishment"></s:hidden>
		
		<fieldset>
			<legend>Informaci&oacute;n de Tarjeta Hotelera</legend>
			<div class="span6">
				<div class="control-group">
					<label class="control-label">N&uacute;mero de tarjeta del cliente</label>
					<div class="controls">
						<input type="text" class="" name="txtNumeroTarjeta" value="4555789654358954">
						<button type="submit" class="btn" id="btnBuscarTarjeta">Buscar</button>
					</div>
				</div>
			</div>
		</fieldset>
		<div id="sectionInfoClient" style="display: none;">
			<fieldset>
				<legend>Tipo de comprobante de pago</legend>
				<div class="span6">
					<div class="control-group">
						<label class="control-label">Tipo de Comprobante</label>
						<label class="radio">
						  <input type="radio" name="rbnComprobante" value="B"checked="checked">
						  Boleta
						</label>
						<label class="radio">
						  <input type="radio" name="rbnComprobante" value="F">
						  Factura
						</label>
					</div>
				</div>
			</fieldset>
			<fieldset>
				<legend>Información del cliente</legend>
				<div class="span6">
					<div class="control-group">
						<label class="control-label">Nombres</label>
						<div class="controls">
							<input class="span2 products" id="appendedInputButton" name="name" placeholder="Sailor Farfan" type="text">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">DNI</label>
						<div class="controls">
							<input class="span2 products" id="appendedInputButton" name="name" placeholder="48965455" type="text">
						</div>
					</div>
					<div class="control-group" style="display: none;" id="sectionRuc">
						<label class="control-label">RUC</label>
						<div class="controls">
							<input class="span2 products" id="appendedInputButton" name="txtRuc" placeholder="20154865221" type="text">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Direccion</label>
						<div class="controls">
							<input class="span2 products" id="appendedInputButton" name="name" placeholder="Miraflore, Caller Berlin 546" type="text">
						</div>
					</div>
				</div>
				
				<div class="span6">
					<div class="control-group">
						<label class="control-label">Apellidos</label>
						<div class="controls">
							<input class="span2 products" id="appendedInputButton" name="name" placeholder="Sailor Farfan" type="text">
						</div>
					</div>
					<div class="control-group" style="display: none;" id="sectionRazonSocial">
						<label class="control-label">Razon Social</label>
						<div class="controls">
							<input class="span2 products" id="appendedInputButton" name="txtRazonSocial" placeholder="Los Libertadores" type="text">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Telefono</label>
						<div class="controls">
							<input class="span2 products" id="appendedInputButton" name="name" placeholder="488-6589" type="text">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Tipo Cliente</label>
						<div class="controls">
							<select class="filter-option pull-left">
							    <option>Super Vip</option>
							    <option>Vip</option>
							    <option>Normal</option>
							  </select>
						</div>
					</div>
				</div>
			</fieldset>
		</div>
		<div id="sectionTransactions" style="display: none;">
			<fieldset>
				<legend>Movimientos del cliente</legend>
				<div class="control-group">
					<label class="control-label">Productos</label>
					<div class="controls">
					
						<table class="table table-bordered toAddItem" id="productionOrderDetail">
							<thead>
								<tr>
									<th>#</th>
									<th>Descripcion</th>
									<th>Cantidad</th>
									<th>Precio</th>
									<th>IGV</th>
									<th>SubTotal</th>
									<th>Total</th>
<!-- 									<th></th> -->
								</tr>
								<tr>
									<td>1</td>
									<td>Servicio de Piscina</td>
									<td>1</td>
									<td>100</td>
									<td>18</td>
									<td>118</td>
									<td>118</td>
<!-- 									<td><a class="removeItem btn btn-danger" href="#"><i class="icon-trash icon-white"></i></a></td> -->
								</tr>
								<tr>
									<td>2</td>
									<td>Vino</td>
									<td>1</td>
									<td>100</td>
									<td>18</td>
									<td>118</td>
									<td>118</td>
<!-- 									<td><a class="removeItem btn btn-danger" href="#"><i class="icon-trash icon-white"></i></a></td> -->
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
						<div class="hiddens">
						</div>
					</div>
				</div>
				<div class="control-group" align="right">
					Sub Total <input class="span2 products" id="appendedInputButton" name="name" placeholder="200" type="text"> <br/>
					IGV <input class="span2 products" id="appendedInputButton" name="name" placeholder="36" type="text"> <br/>
					Total <input class="span2 products" id="appendedInputButton" name="name" placeholder="236" type="text"> <br/>
				</div>
			</fieldset>
			<fieldset>
				<legend>Forma de Pago</legend>
				<div class="span6">
					<div class="control-group">
						<label class="radio">
						  <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
						  Efectivo
						</label>
						<label class="radio">
						  <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
						  Tarjeta de Credito
						</label>
						<label class="radio">
						  <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
						  Tarjeta de D&eacute;bito
						</label>
					</div>
				</div>
			</fieldset>
			<button type="submit" class="btn btn-primary">Generar Factura</button>
		</div>
	</s:form>
</div>
<!--  -->

<jsp:include page="../base/footer.jsp" />