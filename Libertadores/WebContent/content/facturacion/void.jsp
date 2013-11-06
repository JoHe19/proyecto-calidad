<jsp:include page="../base/header.jsp">
	<jsp:param name="title" value="Crear Orden de produccion" />
</jsp:include>
<!--  -->
<div class="row">
	<h3>Anular Comprobante de pago</h3>
	<s:form cssClass="form-horizontal toValid" action="save" method="POST">
	<s:hidden name="productionOrder.idUser"></s:hidden>
	<s:hidden name="productionOrder.idCompany"></s:hidden>
	<s:hidden name="productionOrder.idEnterpriseEstablishment"></s:hidden>
		
		<fieldset>
			<legend>Informaci&oacute;n de Comprobante de Pago</legend>
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
			<div class="span6">
				<div class="control-group">
					<label class="control-label">Serie</label>
					<div class="controls">
						<input type="text" class="" name="txtNumeroTarjeta" value="001">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Numero</label>
					<div class="controls">
						<input type="text" class="" name="txtNumeroTarjeta" value="0005644">
					</div>
				</div>
			</div>
			<div class="span6">
				<button type="submit" class="btn" id="btnBuscarTarjeta">Buscar</button>
			</div>
		</fieldset>
		<div id="sectionInfoClient" style="display: none;">
			<fieldset>
				<legend>Tipo de comprobante de pago</legend>
				<div class="span6">
					<div class="control-group">
						Tipo de Comprobante : BOLETA
					</div>
				</div>
			</fieldset>
			<fieldset>
				<legend>Informaci&oacute;n del cliente</legend>
				<div class="span6">
					<div class="control-group">
						<label class="control-label">Nombres</label>
						<div class="controls">
							<input class="span2 products" id="appendedInputButton" name="name" placeholder="Sailor Farfan" type="text" readonly="readonly">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">DNI</label>
						<div class="controls">
							<input class="span2 products" id="appendedInputButton" name="name" placeholder="48965455" type="text" readonly="readonly">
						</div>
					</div>
					<div class="control-group" style="display: none;" id="sectionRuc">
						<label class="control-label">RUC</label>
						<div class="controls">
							<input class="span2 products" id="appendedInputButton" name="txtRuc" placeholder="20154865221" type="text" readonly="readonly">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Direccion</label>
						<div class="controls">
							<input class="span2 products" id="appendedInputButton" name="name" placeholder="Miraflore, Caller Berlin 546" type="text" readonly="readonly">
						</div>
					</div>
				</div>
				
				<div class="span6">
					<div class="control-group">
						<label class="control-label">Apellidos</label>
						<div class="controls">
							<input class="span2 products" id="appendedInputButton" name="name" placeholder="Sailor Farfan" type="text" readonly="readonly">
						</div>
					</div>
					<div class="control-group" style="display: none;" id="sectionRazonSocial">
						<label class="control-label">Razon Social</label>
						<div class="controls">
							<input class="span2 products" id="appendedInputButton" name="txtRazonSocial" placeholder="Los Libertadores" type="text" readonly="readonly">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Telefono</label>
						<div class="controls">
							<input class="span2 products" id="appendedInputButton" name="name" placeholder="488-6589" type="text" readonly="readonly">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Tipo Cliente</label>
						<div class="controls">
							<select class="filter-option pull-left" disabled="disabled">
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
					Sub Total <input class="span2 products" id="appendedInputButton" name="name" placeholder="200" type="text" readonly="readonly"> <br/>
					IGV <input class="span2 products" id="appendedInputButton" name="name" placeholder="36" type="text"readonly="readonly"> <br/>
					Total <input class="span2 products" id="appendedInputButton" name="name" placeholder="236" type="text" readonly="readonly"> <br/>
				</div>
			</fieldset>
			<fieldset>
				<legend>Forma de Pago</legend>
				<div class="span6">
					<div class="control-group">
						Tipo de Pago : Efectivo
					</div>
				</div>
			</fieldset>
		</div>
	</s:form>
</div>
<!--  -->

<jsp:include page="../base/footer.jsp" />