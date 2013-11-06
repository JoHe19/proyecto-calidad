<jsp:include page="../base/header.jsp">
	<jsp:param name="title" value="Proyectos" />
</jsp:include>
<!--  -->
<div class="row">
<div class="span12">
	<h3>Reporte de Kardex</h3>
	
<form class="form-search" action="kardex-report"  method="POST">
<fieldset>
		<div class="control-group">
			<div class="controls">
				<label class="control-label">Material</label>
				&nbsp;
				<s:select headerKey="-1" headerValue="-- Seleccione --"
					list="materialList" name="material.id" listKey="id"
					listValue="name" cssClass="selectRequired"/>
				&nbsp;
				<s:submit></s:submit>
			</div>
		</div>
</fieldset>
</form>
	</div>
	<div class="span12">
		<table border="1" class="table table-striped">
			<thead>
				<tr>
					<th rowspan="2">#</th>
					<th rowspan="2">FECHA</th>
					<th rowspan="2">NUM. DOC.</th>
					<th rowspan="2">TIPO OPE.</th>
					<th colspan="2"><div align="center">ENTRADA</div></th>
					<th colspan="2"><div align="center">SALIDA</div></th>
					<th colspan="2"><div align="center">SALDOS</div></th>
				</tr>
				<tr>
					<th>CANT.</th>
					<th>P.U.</th>
					<th>CANT.</th>
					<th>P.U.</th>
					<th>CANT.</th>
					<th>P.U.</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="kardexList">
					<tr>
						<td></td>
						<td><s:property value="date"/></td>
						<td>
							<s:if test='type.equals("1")'>
								<s:property value="idWaybill"/>
							</s:if>
							<s:else>
								<s:property value="idMaterialRequeriment"/>
							</s:else>
						</td>
						<td>
							<s:if test='type.equals("1")'>
								ENTRADA
							</s:if>
							<s:else>
								SALIDA
							</s:else>
						</td>
						<s:if test='type.equals("1")'>
							<td><s:property value="cant"/></td>
							<td>S/. 0</td>
						</s:if>
						<s:else>
							<td>0</td>
							<td>S/. 0</td>
						</s:else>
						<s:if test='type.equals("2")'>
							<td><s:property value="cant"/></td>
							<td>S/. 0</td>
						</s:if>
						<s:else>
							<td>0</td>
							<td>S/. 0</td>
						</s:else>
						<td>---</td>
						<td>---</td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</div>
</div>
<!--  -->

<jsp:include page="../base/footer.jsp" />