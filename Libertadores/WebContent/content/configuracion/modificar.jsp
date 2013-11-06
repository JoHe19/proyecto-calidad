<jsp:include page="../base/header.jsp">
	<jsp:param name="title" value="Crear Orden de produccion" />
</jsp:include>
<!--  -->

<div class="row">
	
	<h3>Configuraci&oacute;n del Sistema</h3>
	<s:form cssClass="form-horizontal toValid" action="save" method="POST">
		<s:hidden name="productionOrder.idUser"></s:hidden>
		<s:hidden name="productionOrder.idCompany"></s:hidden>
		<s:hidden name="productionOrder.idEnterpriseEstablishment"></s:hidden>
		
		<fieldset>
			<legend>IGV</legend>
			<div class="span6">
				<div class="control-group">
					<label class="control-label">IGV</label>
					<div class="controls">
						<input type="text" class="" name="txtIgv" value="18">
					</div>
				</div>
			</div>
		</fieldset>
		<fieldset>
			<legend>Series y Números</legend>
			<div class="span6">
				<div class="control-group">
					<label class="control-label">Serie Boleta</label>
					<div class="controls">
						<input class="span2 products" id="appendedInputButton" name="name" placeholder="001" type="text">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Numero Boleta</label>
					<div class="controls">
						<input class="span2 products" id="appendedInputButton" name="name" placeholder="000456" type="text">
					</div>
				</div>
			</div>
			<div class="span6">
				<div class="control-group">
					<label class="control-label">Serie Factura</label>
					<div class="controls">
						<input class="span2 products" id="appendedInputButton" name="name" placeholder="005" type="text">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Numero Factura</label>
					<div class="controls">
						<input class="span2 products" id="appendedInputButton" name="name" placeholder="045508" type="text">
					</div>
				</div>
			</div>
			
			<div align="center">
				<button type="submit" class="btn btn-primary">Guardar</button>
			</div>
			
		</fieldset>
		
	</s:form>

</div>

<!--  -->
<jsp:include page="../base/footer.jsp" />