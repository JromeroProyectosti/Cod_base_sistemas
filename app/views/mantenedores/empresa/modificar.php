<h3>Modificar</h3>


<?php echo form_open('empresa/modificar_empresa/',array('class'=>'form-horizontal'));?>
<div class="control-group">
    <input type="hidden" class="text-long" name='txtRut' value='<?=$detalle['RutEmpresa']?>'/>
    <p><label>Rut Empresa: <strong><?=$detalle['RutProveedor']?></strong></label></p>
</div>
<div class="control-group">
    <label class="control-label" for="txtNombreEmpresa">Nombre Empresa</label>
    <div class="controls">
        <input type='text' class="text-long" name='txtNombreEmpresa' value='<?=$detalle['NombreProveedor']?>'/>* 
        <?php 
        if(form_error('txtNombreEmpresa')){
            ?>
            <div class='alert alert-error' id='err_rut'><a href="#" class="close" data-dismiss="alert">&times;</a><?=form_error('txtNombreEmpresa')?> </div>
        <?php
        }
        ?>
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="txtRazonSocial">Raz&oacute;n Social</label>
    <div class="controls">
        <input type='text' class="text-long" name='txtRazonSocial' value='<?=$detalle['RazonSocial']?>'/>
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="txtTelefono">Telefono</label>
    <div class="controls">
        <input type='text' class="text-long" name='txtTelefono' value='<?=$detalle['Telefonocontacto1Proveedor']?>'/>
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="txtDireccion">Direcci&oacute;n</label>
    <div class="controls">
        <input type='text' class="text-long" name='txtDireccion' value='<?=$detalle['Correocontacto1Proveedor']?>'/> 
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="cboRegion1">Ciudad</label>
    <div class="controls">
        <select id='cboRegion' name="cboRegion1" onchange='buscar_ciudad(this.value)' >
	<?php foreach($region as $row):?>
	<option value='<?=$row['IdRegion']?>' 
       <?php if($row['IdRegion']==$IdRegion) echo " Selected"; ?>
        ><?=$row['NombreRegion']?></option>
	<?php endforeach ?>
		</select>*
                
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="cboCiudad1">Comuna</label>
    <div class="controls">
        <select id='cboCiudad' name="cboCiudad1" onchange='buscar_comuna(this.value)' disables >
            <?php foreach($ciudad as $row):?>
                <option value='<?=$row['IdCiudad']?>'><?=$row['NombreCiudad']?></option>
	<?php endforeach ?>
		</select>*
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="cboComuna1">Regi&oacute;n</label>
    <div class="controls">
        <select id='cboComuna' name="cboComuna1"  disabled>
            <?php foreach($comuna as $row):?>
                <option value='<?=$row['IdComuna']?>'><?=$row['NombreComuna']?></option>
	<?php endforeach ?>
		</select>*
    </div>
</div>
			
<p><input type='submit' value='Modificar' class="btn btn-primary" data-loading-text="Loading..."></p>
<button type="button" class="btn btn-primary" data-oading-text="Cargando....">Modificar</button>
</form>