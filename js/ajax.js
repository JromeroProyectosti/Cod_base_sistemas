<!-- Controles de Comuna Region y Ciudad-->
var URL_BASE="http://localhost/codPTV/";
function buscar_ciudad(id_region){
	
	$.ajax({
		type:"POST",
		url: URL_BASE+"comun/generaoptionciudad/",
		data:'region='+id_region,
		success: function(resp){
			
			$('select#cboCiudad').attr('disabled',false).html(resp);
		}
	});
}
function buscar_comuna(id_ciudad){
	$.ajax({
		type:"POST",
		url: URL_BASE+"comun/generaoptioncomuna/",
		data:'ciudad='+id_ciudad,
		success: function(resp){
			$('select#cboComuna').attr('disabled',false).html(resp);
		}
	});
}

<!-- validacion rut-->

function valida_rut(rut){
	$.ajax({
		type:"POST",
		url: URL_BASE+"empresa/valida_rut/",
		data:'ciudad='+rut,
		success: function(resp){
			if(resp==false){

			}else{
				
			}
			$('input#txtRutEmpresa').html(resp);
		}
	});
}
