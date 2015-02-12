<h3>Agregar Proveedor</h3>
<?php echo form_open('addempresa',array('class'=>'form-horizontal'));?>
<div class="control-group">
    <label class="control-label" for="txtRutEmpresa">Rut Empresa</label>
    <div class="controls">
        <input type='text' class="text-long" name='txtRutEmpresa' value='<?=set_value("txtRutEmpresa")?>' />* 
        <?php 
        if(form_error('txtRutEmpresa')){
            ?>
            <div class='alert alert-error' id='err_rut'><a href="#" class="close" data-dismiss="alert">&times;</a><?=form_error('txtRutEmpresa')?> </div>
        <?php
        }
        ?>
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="txtNombreEmpresa">Nombre Empresa</label>
    <div class="controls">
        <input type='text' class="text-long" name='txtNombreEmpresa' value='<?=set_value("txtNombreEmpresa")?>'/>* 
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
        <input type='text' class="text-long" name='txtRazonSocial' value='<?=set_value("txtRazonSocial")?>'/>
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="txtTelefono">Telefono</label>
    <div class="controls">
        <input type='text' class="text-long" name='txtTelefono' value='<?=set_value("txtTelefono")?>'/>
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="txtDireccion">Direcci&oacute;n</label>
    <div class="controls">
        <input type='text' class="text-long" name='txtDireccion' value='<?=set_value("txtDireccion")?>'/> 
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="cboRegion1">Ciudad</label>
    <div class="controls">
        <select id='cboRegion' name="cboRegion1" onchange='buscar_ciudad(this.value)' >
	<?php foreach($region as $row):?>
			<option value='<?=$row['IdRegion']?>'><?=$row['NombreRegion']?></option>
	<?php endforeach ?>
		</select>*
                
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="cboCiudad1">Comuna</label>
    <div class="controls">
        <select id='cboCiudad' name="cboCiudad1" onchange='buscar_comuna(this.value)' >
		</select>*
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="cboComuna1">Regi&oacute;n</label>
    <div class="controls">
        <select id='cboComuna' name="cboComuna1"  >
		</select>*
    </div>
</div>
		
		
		
<p><input type='submit' value='Enviar' class="btn btn-primary" data-loading-text="Loading..."></p>
	
</form>