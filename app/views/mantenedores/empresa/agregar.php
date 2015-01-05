<?php echo form_open_multipart('guardar_empresa');?>
	<p><label class="content">Rut Empresa</label><input type='text' class="box" name='txtRutEmpresa' value='<?=set_value("txtRutEmpresa")?>' />* <div class='error' id='err_rut'><?=form_error('txtRutEmpresa')?></div></p>
	<p><label class="content">Nombre Empresa</label><input type='text' class="box" name='txtNombreEmpresa' value='<?=set_value("txtNombreEmpresa")?>'/>* <div class='error' id='err_nomb'><?=form_error('txtNombreEmpresa')?></div></p>
	<p><label class="content">Razon Social</label><input type='text' class="box" name='txtRazonSocial' value='<?=set_value("txtRazonSocial")?>'/>* <div class='error' id='err_razon'><?=form_error('txtRazonSocial')?></div></p>
	<p><label class="content">Telefono</label><input type='text' class="box" name='txtTelefono' value='<?=set_value("txtTelefono")?>'/> <div class='error' id='err_razon'><?=form_error('txtTelefono')?></div></p>
	<p><label class="content">Direcci&oacute;n</label><input type='text' class="box" name='txtDireccion' value='<?=set_value("txtDireccion")?>'/><div class='error' id='err_razon'><?=form_error('txtDireccion')?></div></p>
	<p><label class="content">Tipo Empresa</label><select name='cboTipoEmpresa' >
<?php foreach($tipo_empresa as $row):?>
		<option value='<?=$row['IdTipoempresa']?>'><?=$row['TipoEmpresa']?></option>
<?php endforeach ?>
	</select>*</p>
	<p><label class="content">Region</label><select id='cboRegion' onchange='buscar_ciudad(this.value)'>
<?php foreach($region as $row):?>
		<option value='<?=$row['IdRegion']?>'><?=$row['NombreRegion']?></option>
<?php endforeach ?>
	</select>*</p>
	<p><label class="content">Ciudad</label><select id='cboCiudad' disabled onchange='buscar_comuna(this.value)' >
	</select>*</p>
	<p><label class="content">Comuna</label><select id='cboComuna' disabled >
	</select>*</p>
	<p><input type='submit' value='Enviar'></p>
	
</form>