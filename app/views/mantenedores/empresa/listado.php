
<?php
echo form_open("addempresa",array('class'=>'jNice'));

?>
<fieldset>
<input type="submit" value="Nueva Empresa">
</fieldset>
<table>
	<tr>
		<td>Rut Empresa</td>
		<td>Nombre Empresa</td>

		<td></td>
	</tr>
	<?php foreach ($listado as $value): ?>
	
	<tr>
		<td><?=$value['RutEmpresa']?></td>
		<td><?=$value['NombreEmpresa']?></td>
		<td class="action"><a href="<?=base_url()?>sucursal/listado_sucursal/<?=$value['RutEmpresa']?>" class="view">detalle</a>
		<a href="<?=base_url()?>empresa/modificar_empresa/<?=$value['RutEmpresa']?>" class="edit">Modificar</a>
		<a href="<?=base_url()?>empresa/eliminar_empresa/<?=$value['RutEmpresa']?>" class="delete">Eliminar</a>
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
		<td>TIpo Empresa</td>
		<td></td>
	</tr>
		<tr>
		<td><?=$value['RutEmpresa']?></td>
		<td><?=$value['NombreEmpresa']?></td>
		<td><?=$value['RazonSocial']?></td>
		<td><?=$value['Telefono']?></td>
		<td><?=$value['Direccion']?></td>
		<td><?=$value['TipoEmpresa']?></td>
		<td class="action"><a href="<?=base_url()?>sucursal/listado_sucursal/<?=$value['RutEmpresa']?>" class="view">detalle</a>
		<a href="<?=base_url()?>empresa/modificar_empresa/<?=$value['RutEmpresa']?>" class="edit">Modificar</a>
		<a href="<?=base_url()?>empresa/eliminar_empresa/<?=$value['RutEmpresa']?>" class="delete">Eliminar</a>
		</td>
	</tr>
	
</table>-->
