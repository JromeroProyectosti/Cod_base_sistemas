<h3>Modificar</h3>
<fieldset>
    <? echo form_open_multipart('empresa/modificar_empresa/'.$detalle['RutProveedor']);?>
        <p><label>Rut Empresa:</label><?=$detalle['RutProveedor']?><input type="hidden" class="text-long" name='txtRut' value='<?=$detalle['RutEmpresa']?>'/></p>
        <p><label>Nombre Empresa:</label><input type="text" class="text-long" name='txtNombre' value='<?=$detalle['NombreProveedor']?>'/><div class='error' id='err_rut'><?=form_error('txtNombre')?></div></p>
        <p><label>Razon Social:</label><input type="text" class="text-long" name='txtRazonSocial' value='<?=$detalle['RazonSocial']?>'/><div class='error' id='err_rut'><?=form_error('txtRazonSocial')?></div></p>
        <p><label>Telefono:</label><input type="text" class="text-long" name='txtTelefono'  value='<?=$detalle['Telefonocontacto1Proveedor']?>'/><div class='error' id='err_rut'><?=form_error('txtTelefono')?></div></p>
        <p><label>Direccion:</label><input type="text" class="text-long" name='txtDireccion' value='<?=$detalle['Correocontacto1Proveedor']?>'/><div class='error' id='err_rut'><?=form_error('txtDireccion')?></div></p>    
        <p><label class="content">Region</label><select id='cboRegion' onchange='buscar_ciudad(this.value)' class="text-long">
	<?php foreach($region as $row):?>
	<option value='<?=$row['IdRegion']?>' 
       <?php if($row['IdRegion']==$IdRegion) echo " Selected"; ?>
        ><?=$row['NombreRegion']?></option>
	<?php endforeach ?>
        </select>*</p>
        <p><label class="content">Ciudad</label><select id='cboCiudad' disabled onchange='buscar_comuna(this.value)' class="text-long">
        <?php foreach($ciudad as $row):?>
                <option value='<?=$row['IdCiudad']?>'><?=$row['NombreCiudad']?></option>
	<?php endforeach ?>
        </select>*</p>
        <p><label class="content">Comuna</label><select id='cboComuna' name='cboComuna' disabled class="text-long">
                <?php foreach($comuna as $row):?>
                <option value='<?=$row['IdComuna']?>'><?=$row['NombreComuna']?></option>
	<?php endforeach ?>
        </select>*</p>
        <input type="submit" value="Guardar" />
    </form>
</fieldset>