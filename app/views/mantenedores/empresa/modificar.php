<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Proveedores</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<div class="panel panel-default">
    <div class="panel-heading">
                          Modificar Proveedor
    </div>
<?php echo form_open('modificar_empresa/'.$detalle['RutProveedor'],array('class'=>'form-horizontal'));?>
<div class="form-group">
    <input type="hidden" name='txtRut' value='<?=$detalle['RutProveedor']?>'/>
    <p><label  class="control-label col-sm-2">Rut Empresa </label><label  class="control-label col-sm-1"><strong><?=$detalle['RutProveedor']?></strong></label></p>
</div>
<div class="form-group">
    <label class="control-label col-sm-2" for="txtNombreEmpresa">Nombre Empresa</label>
    <div class="controls col-sm-4">
        <input type='text' class="form-control" name='txtNombreEmpresa' value='<?=$detalle['NombreProveedor']?>'/>
    </div>
    <label class="control-label col-sm-1">*</label>
    <div class="col-sm-5"> 
        <?php 
       
        if(form_error('txtNombreEmpresa')){
            ?>
            <div class='alert alert-warning alert-dismissable' id='err_rut'>
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <?=form_error('txtNombreEmpresa')?> 
            </div>
        <?php
        }
        ?>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-2" for="txtRazonSocial">Raz&oacute;n Social</label>
    <div class="controls col-sm-4">
        <input type='text' class="form-control" name='txtRazonSocial' value='<?=$detalle['RazonSocial']?>'/>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-2" for="txtTelefono">Telefono</label>
    <div class="controls col-sm-4">
        <input type='text' class="form-control" name='txtTelefono' value='<?=$detalle['Telefonocontacto1Proveedor']?>'/>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-2" for="txtDireccion">Direcci&oacute;n</label>
    <div class="controls col-sm-4">
        <input type='text' class="form-control" name='txtDireccion' value='<?=$detalle['Correocontacto1Proveedor']?>'/> 
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-2" for="cboRegion1">Ciudad</label>
    
    <div class="controls col-sm-4">
        <select id='cboRegion' name="cboRegion1" onchange='buscar_ciudad(this.value)' class="form-control">
	<?php foreach($region as $row):?>
	<option value='<?=$row['IdRegion']?>' 
       <?php if($row['IdRegion']==$IdRegion) echo " Selected"; ?>
        ><?=$row['NombreRegion']?></option>
	<?php endforeach ?>
		</select>*
                
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-2" for="cboCiudad1">Comuna</label>
    <div class="controls col-sm-4">
        <select id='cboCiudad' name="cboCiudad1" onchange='buscar_comuna(this.value)' disables class="form-control">
            <?php foreach($ciudad as $row):?>
                <option value='<?=$row['IdCiudad']?>'><?=$row['NombreCiudad']?></option>
	<?php endforeach ?>
		</select>*
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-2" for="cboComuna1">Regi&oacute;n</label>
    <div class="controls col-sm-4">
        <select id='cboComuna' name="cboComuna1"  class="form-control">
            <?php foreach($comuna as $row):?>
                <option value='<?=$row['IdComuna']?>'><?=$row['NombreComuna']?></option>
	<?php endforeach ?>
		</select>*
    </div>
</div>
			
    <p align="center"><button type='submit' value='Modificar' class="btn btn-outline btn-primary btn-lg" data-loading-text="Loading...">Modificar</button> 
        <button type="reset" class="btn btn-outline btn-primary btn-lg" data-oading-text="Cargando....">Limpiar</button></p>

</form>
</div>