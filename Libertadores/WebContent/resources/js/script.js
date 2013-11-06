$(document).ready(function() {

	//obtengo el context
	var context = $("#context").val();
	
	$('#btnBuscarTarjeta').click(function(){
		if($("input[name=txtNumeroTarjeta]").val() == ''){
			alert('Ingrese numero de tarjeta');
			$("input[name=txtNumeroTarjeta]").focus();
			return false;
		}else{
			$('#sectionInfoClient').show();
			$('#sectionTransactions').show();
		}
	});
	
	$('input[name=rbnComprobante]').click(function(){
//		alert($(this).val());
		if($(this).val() == 'B'){
			$('#sectionRuc').hide();
			$('#sectionRazonSocial').hide();
		}else if($(this).val() == 'F'){
			$('#sectionRuc').show();
			$('#sectionRazonSocial').show();
		}
	});
	
  //Agregando nuevos productos o materiales
  var index = 0;
  $('#addProductionDetail').click(function(){
	  var itemID = $("#itemID").val();
	  var name = $("input[name=name]").val();
	  var quantity = $("input[name=quantity]").val();
	  
	  if(itemID==""||name==""||quantity==""||parseInt(quantity)<1){
		  alert("Datos incorrectos");
		  return false;
	  }
	  
	  var itemNumber = parseInt($("table.toAddItem").find("tr:last td:first").text())+1;
	  if(isNaN(itemNumber))
		  itemNumber = 1;
	  
	  console.log(itemNumber);
	  
	  var hiddens = "";
	  if($("table.toAddItem").attr('id')=='productionOrderDetail'){
		  hiddens = addProductionOrderDetail(index, itemID, quantity, name);
	  }
	  
	  var button = '<a class="removeItem btn btn-danger" href="#"><i class="icon-trash icon-white"></i></a>';
	  $("table.toAddItem tbody").append('<tr>'+hiddens+'<td>'+itemNumber+'</td><td>'+quantity+'</td><td>'+name+'</td><td>'+button+'</td></tr>');
	  console.log($("table.toAddItem tbody"));
	  index++;
  });
  
  //Agregando materiales al detalle de requerimiento
  var index = 0;
  $('#addRequerimentDetail').click(function(){
	  var itemID = $("#IdMaterial").val();
	  var name = $("#IdMaterial option:selected").html();
	  var quantity = $("input[name=quantity]").val();
	  
	  if(itemID=="" || quantity=="" || parseInt(quantity)<1){
		  alert("Datos incorrectos");
		  return false;
	  }
	  
	  var itemNumber = parseInt($("table.toAddItem").find("tr:last td:first").text())+1;
	  if(isNaN(itemNumber))
		  itemNumber = 1;
	  
	  console.log(itemNumber);
	  
	  var hiddens = "";
	  if($("table.toAddItem").attr('id')=='tableMaterialRequerimentDetail'){
		  hiddens = addMaterialRequerimentDetail(index, itemID, quantity, name);
	  }
	  
	  var button = '<a class="removeItem btn btn-danger" href="#"><i class="icon-trash icon-white"></i></a>';
	  $("table.toAddItem tbody").append('<tr>'+hiddens+'<td>'+itemNumber+'</td><td>'+quantity+'</td><td>'+name+'</td><td>'+button+'</td></tr>');
	  console.log($("table.toAddItem tbody"));
	  index++;
  });
  
//Agregando materiales al detalle de waybill
  var index = 0;
  $('#addWaybillDetail').click(function(){
	  var itemID = $("#IdMaterial").val();
	  var name = $("#IdMaterial option:selected").html();
	  var quantity = $("input[name=quantity]").val();
	  
	  if(itemID=="" || quantity=="" || parseInt(quantity)<1){
		  alert("Datos incorrectos");
		  return false;
	  }
	  
	  var itemNumber = parseInt($("table.toAddItem").find("tr:last td:first").text())+1;
	  if(isNaN(itemNumber))
		  itemNumber = 1;
	  
	  console.log(itemNumber);
	  
	  var hiddens = "";
	  if($("table.toAddItem").attr('id')=='tableWaybillDetail'){
		  hiddens = addWaybillDetail(index, itemID, quantity, name);
	  }
	  
	  var button = '<a class="removeItem btn btn-danger" href="#"><i class="icon-trash icon-white"></i></a>';
	  $("table.toAddItem tbody").append('<tr>'+hiddens+'<td>'+itemNumber+'</td><td>'+quantity+'</td><td>'+name+'</td><td>'+button+'</td></tr>');
	  console.log($("table.toAddItem tbody"));
	  index++;
  });
  
  $('.removeItem').live('click',function(event){
	  event.preventDefault();
	  $(this).parents('tr').remove();
	  index--;
  });
  
  //Creacion de hiddens para los productos agregados a la orden de produccion
  function addProductionOrderDetail(index, idProduct, quantity, name ){
	  var hiddens = '';
	  hiddens+='<input type="hidden" value="'+idProduct+'" name="productionOrderDetail['+index+'].idProduct" />';
	  hiddens+='<input type="hidden" value="'+quantity+'" name="productionOrderDetail['+index+'].quantity" />';
	  hiddens+='<input type="hidden" value="'+name+'" name="productionOrderDetail['+index+'].name" />';
	  return hiddens;
  }
  
//Creacion de hiddens para los materiales de el requermiento de material
  function addMaterialRequerimentDetail(index, idMaterial, quantity, name ){
	  var hiddens = '';
	  hiddens+='<input type="hidden" value="'+idMaterial+'" name="materialRequerimentDetail['+index+'].idMaterial" />';
	  hiddens+='<input type="hidden" value="'+quantity+'" name="materialRequerimentDetail['+index+'].cant" />';
	  hiddens+='<input type="hidden" value="'+name+'" name="materialRequerimentDetail['+index+'].description" />';
	  return hiddens;
  }
  
//Creacion de hiddens para los materiales de el detalle de waybill
  function addWaybillDetail(index, idMaterial, quantity, name ){
	  var hiddens = '';
	  hiddens+='<input type="hidden" value="'+idMaterial+'" name="wayBillDetail['+index+'].idMaterial" />';
	  hiddens+='<input type="hidden" value="'+quantity+'" name="wayBillDetail['+index+'].cant" />';
	  hiddens+='<input type="hidden" value="'+name+'" name="wayBillDetail['+index+'].description" />';
	  return hiddens;
  }
  
  
  //Autocomplete de productos
  var id = "";
  $('.products').autocomplete({
	  
	  source: function( request, response ) {
	        $.ajax({
	          url: "http://localhost:8080"+context+"/product/get",
	          data: { term: $(".products").val()},
	          dataType: "json",
	          success: function( data ) {
	            response( $.map( data.productList, function( item ) {
	            	id = item.id;
	              return {
	                label: item.name                
	              }
	            }));
	          }
	        });
	      },
	    select: function( event, ui ) 
    	{           
	    	$("#itemID").val(id)
    	}

	});
  
  	$('.materials').autocomplete({
	  
	  source: function( request, response ) {
	        $.ajax({
	          url: "http://localhost:8080"+context+"/material/get",
	          data: { term: $(".materials").val()},
	          dataType: "json",
	          success: function( data ) {
	        console.log(data);
	            response( $.map( data.materials, function( item ) {
	            	id = item.id;
	              return {
	                label: item.name                
	              }
	            }));
	          }
	        });
	      },
	    select: function( event, ui ) 
    	{           
	    	$("#itemID").val(id);
    	}

	});

	// buscar productos por orden de produccion
	var options = "";
	$('#IdOrderProduction').change(function(){
		options = "";
		options+='<option value="0">-- Seleccione --</option>';
		$("#IdProduct").html('');
		$.ajax({
          url: "http://localhost:8080"+context+"/product/getProductsByOp",
          data: { idOrdenProduction: this.value},
          dataType: "json",
          success: function( data ) {
        	  $.each(data.productList, function(i,item){
        		  options+='<option value="'+item.id+'">'+item.name+'</option>';
              });
        	  $("#IdProduct").append(options);
          }
        });
	});
	
	// buscar materiales por producto
	var options = "";
	$('#IdProduct').change(function(){
		options = "";
		options+='<option value="0">-- Seleccione --</option>';
		$("#IdMaterial").html('');
		// jala los materiales por producto
		$.ajax({
          url: "http://localhost:8080"+context+"/material/getMaterialsByProduct",
          data: { idProduct: this.value},
          dataType: "json",
          success: function( data ) {
        	  $.each(data.materials, function(i,item){
        		  options+='<option value="'+item.id+'">'+item.name+'</option>';
              });
        	  $("#IdMaterial").append(options);
          }
        });
	});
	
	//datepicker
	$( ".date" ).datepicker({ minDate: +10});
	$( ".date" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
	$( ".date" ).datepicker( "option", $.datepicker.regional[ "es" ] );
	
	$(".toValid").submit(function(event){
		var msg = "";
		var isValid = true;
		$(".required").each(function(){
			if($(this).val()==""){
				$(this).parents(".control-group").addClass("error");
				isValid = false;
			}
			else{
				$(this).parents(".control-group").removeClass("error");
			}
		});
		
		$(".selectRequired").each(function(){
			if($(this).val()=="-1"){
				$(this).parents(".control-group").addClass("error");
				isValid = false;
			}
			else{
				$(this).parents(".control-group").removeClass("error");
			}
		});
		
		if($("tbody.valid1tr").length>0){
			if(!$("tbody.valid1tr").find("tr").length>0){
				msg = "y agrege items";
				$(this).parents(".control-group").addClass("error");
				console.log($(this).parents(".control-group"));
				isValid = false;
			}
		}
		
		if(!isValid){
			alert("Complete los campos marcados "+ msg);
		}
		
		return isValid;
	});
	
	// ocultar algunas campos cuando es sotkc de reserva o stock
	$('#typeStock').change(function(){
		if(this.value == '1'){
			$('.groupReserva').show();
			$('.groupStock').hide();
		}else if(this.value == 2){
			$('.groupReserva').hide();
			$('.groupStock').show();
		}
	});
	
	// buscar orden de produccion por proyecto
	var options = "";
	$('#IdProjectWaybill').change(function(){
		options = "";
		options+='<option value="0">-- Seleccione --</option>';
		$("#IdOrderProduction").html('');
		// jala los materiales por producto
		$.ajax({
          url: "http://localhost:8080"+context+"/production-order/getByProject",
          data: { idProject: this.value},
          dataType: "json",
          success: function( data ) {
        	  $.each(data.productionOrderList, function(i,item){
        		  options+='<option value="'+item.id+'">'+item.number+'</option>';
              });
        	  $("#IdOrderProduction").append(options);
          }
        });
	});
	
//	// jala la cantidad de material por producto, eso se define cuando creo la orden de produccion
//	$('#IdMaterial').change(function(){
//		$.ajax({
//	      url: "http://localhost:8080"+context+"/production-order/getCantByProduct",
//	      data: { idMaterial: this.value},
//	      dataType: "json",
//	      success: function( data ) {
//	    	  $('#quantityPermitied').val(data);
//	      }
//	    });
//	});
});