<h3>Modificar</h3>
<fieldset>
    <p><label>Rut Empresa: <?=$detalle['RutProveedor']?></label><label></label></p>
    <p><label>Nombre Empresa: <?=$detalle['NombreProveedor']?></label><label></label></p>
    <p><label>Razon Social: <?=$detalle['RazonSocial']?></label><label></label></p>
    <p><label>Telefono: <?=$detalle['Telefonocontacto1Proveedor']?></label><label></label></p>
    <p><label>Direccion: <?=$detalle['Correocontacto1Proveedor']?></label><label></label></p>    
        <p><label class="content">Region</label><select id='cboRegion'  class="text-long" disabled>
	<?php foreach($region as $row):?>
	<option value='<?=$row['IdRegion']?>' 
        <?php if($row['IdRegion']==$IdRegion) echo " Selected"; ?>
        ><?=$row['NombreRegion']?></option>
	<?php endforeach ?>
        </select>*</p>
        <p><label class="content">Ciudad</label><select id='cboCiudad' disabled  class="text-long">
        <?php foreach($ciudad as $row):?>
                <option value='<?=$row['IdCiudad']?>'><?=$row['NombreCiudad']?></option>
	<?php endforeach ?>
        </select>*</p>
        <p><label class="content">Comuna</label><select id='cboComuna' name='cboComuna' disabled class="text-long">
                <?php foreach($comuna as $row):?>
                <option value='<?=$row['IdComuna']?>'><?=$row['NombreComuna']?></option>
	<?php endforeach ?>
        </select>*</p>
        
</fieldset>