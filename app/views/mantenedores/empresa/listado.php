
<a href="addempresa"><img src="<?=base_url()?>icons/bonus/icons-32/plus.png" /></a>
<table>
	<tr>
		<td>Rut Empresa</td>
		<td>Nombre Empresa</td>
		<td>Razon Social</td>
		<td>Telefono</td>
		<td>Direccion</td>
		<td>TIpo Empresa</td>
		<td>Sucursales</td>
		<td>Modificar</td>
		<td>Eliminar</td>
	</tr>
	<?php foreach ($listado as $value): ?>
	
	<tr>
		<td><?=$value['RutEmpresa']?></td>
		<td><?=$value['NombreEmpresa']?></td>
		<td><?=$value['RazonSocial']?></td>
		<td><?=$value['Telefono']?></td>
		<td><?=$value['Direccion']?></td>
		<td><?=$value['TipoEmpresa']?></td>
		<td><a href="<?=base_url()?>sucursal/listado_sucursal/<?=$value['RutEmpresa']?>">detalle</a></td>
		<td><a href="<?=base_url()?>empresa/modificar_empresa/<?=$value['RutEmpresa']?>">Modificar</a></td>
		<td><a href="<?=base_url()?>empresa/eliminar_empresa/<?=$value['RutEmpresa']?>">Eliminar</a></td>
	</tr>
	<?php endforeach ?>
</table>