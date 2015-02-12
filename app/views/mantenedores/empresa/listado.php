
<?php
echo form_open("addempresa",array('class'=>'jNice'));

?>
<fieldset>
<input type="submit" value="Nueva Empresa" class="btn btn-primary">
</fieldset>
<table class="table table-striped">
	<tr >
		<th>Rut Empresa</th>
                <th>Nombre Empresa</th>
                <th>Razon Social</th>
		<th></th>
                <th></th>
                <th></th>
	</tr>
	<?php
            $i=0;
            foreach ($listado as $value): 
                
            ?>
	
	<tr >
		<td><?=$value['RutProveedor']?></td>
		<td><?=$value['NombreProveedor']?></td>
                
		<td><?=$value['RazonSocial']?></td>
                <td class="action"><a href="<?=base_url()?>detalle_empresa/<?=$value['RutProveedor']?>" ><i class="icon-eye-open"></i></a></td>
                <td><a href="<?=base_url()?>modificar_empresa/<?=$value['RutProveedor']?>" ><i class="icon-edit"></i></a></td>
                <td><a href="<?=base_url()?>empresa/eliminar_empresa/<?=$value['RutProveedor']?>" ><i class="icon-remove"></i></a></td>
		</td>
	</tr>
	<?php endforeach ?>
</table>
</form>
<!--
<table>
	<tr>
		<td>Rut Empresa</td>
		<td>Nombre Empresa</td>
		<td>Razon Social</td>
		<td>Telefono</td>
		<td>Direccion</td>
		<td></td>
	</tr>
		<tr>
		<td><?=$value['RutProveedor']?></td>
		<td><?=$value['NombreProveedor']?></td>
		<td><?=$value['RazonSocial']?></td>
		<td><?=$value['Telefonocontacto1Proveedor']?></td>
		<td><?=$value['Direccioncontacto1Proveedor']?></td>
		<td class="action"><a href="<?=base_url()?>sucursal/listado_sucursal/<?=$value['RutProveedor']?>" class="view">detalle</a>
		<a href="<?=base_url()?>empresa/modificar_empresa/<?=$value['RutProveedor']?>" class="edit">Modificar</a>
		<a href="<?=base_url()?>empresa/eliminar_empresa/<?=$value['RutProveedor']?>" class="delete">Eliminar</a>
		</td>
	</tr>
	
</table>-->
