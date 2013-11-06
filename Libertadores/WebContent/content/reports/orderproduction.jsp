<jsp:include page="../base/header.jsp">
	<jsp:param name="title" value="Crear Proyecto" />
</jsp:include>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">

      // Load the Visualization API and the piechart package.
      google.load('visualization', '1.0', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
          ['Producido', 80],
          ['No Producido', 20]
        ]);

        // Set chart options
        var options = {'title':'Prueba de reporte',
                       'width':600,
                       'height':400};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
</script>
<div class="row">
<h3>Reporte de Orden de Produccion</h3>
<s:form cssClass="form-horizontal" action="order-production-report" method="POST">
<fieldset>
		<legend>Informaci&oacute;n b&aacute;sica</legend>
			<div class="control-group">
				<label class="control-label">Orden de Produccion</label>
				<div class="controls">
					<s:select headerKey="-1" headerValue="-- Seleccione --"
							list="orderProductionList" name="orderProduction.id" listKey="id"
							listValue="number" cssClass="selectRequired"/>
					<s:submit></s:submit>
				</div>
			</div>
			<div class="control-group" align="center">
				<s:if test='flag == 1'>
					<div id="chart_div"></div>
				</s:if>
			</div>
	</fieldset>
</s:form>
</div>
<jsp:include page="../base/footer.jsp" />