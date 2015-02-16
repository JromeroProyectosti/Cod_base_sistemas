<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Proveedores</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<div class="panel panel-default">
    <div class="panel-heading">
                          Nuevo Proveedor
    </div>
<?php echo form_open('addempresa',array('class'=>'form-horizontal'));?>
<div class="form-group">
    <label class="control-label col-sm-2" for="txtRutEmpresa">Rut Empresa</label>
    <div class="controls col-sm-4">
        <input type='text' class="form-control" name='txtRutEmpresa' value='<?=set_value("txtRutEmpresa")?>' />
        
    </div> 
    <label class="control-label col-sm-1">*</label>
    <div class="col-sm-5"> 
        <?php 
        if(form_error('txtRutEmpresa')){
            ?>
        <div class='alert alert-warning alert-dismissable' id='err_rut' role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <?=form_error('txtRutEmpresa')?> 
        </div>
        <?php
        }
        ?>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-2" for="txtNombreEmpresa">Nombre Empresa</label>
    <div class="controls col-sm-4">
        <input type='text' class="form-control" name='txtNombreEmpresa' value='<?=set_value("txtNombreEmpresa")?>'/>
    </div>
     
    <label class="control-label col-sm-1">*</label>
    <div class="col-sm-5">
        <?php 
        if(form_error('txtNombreEmpresa')){
            ?>
        <div class='alert alert-warning alert-dismissable' id='err_rut' role="alert"> 
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
        <input type='text' class="form-control" name='txtRazonSocial' value='<?=set_value("txtRazonSocial")?>'/>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-2" for="txtTelefono">Telefono</label>
    <div class="controls col-sm-4">
        <input type='text' class="form-control" name='txtTelefono' value='<?=set_value("txtTelefono")?>'/>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-2" for="txtDireccion">Direccion</label>
    <div class="controls col-sm-4">
        <input type='text' class="form-control" name='txtDireccion' value='<?=set_value("txtDireccion")?>'/> 
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-2" for="cboRegion1">Ciudad</label>
    <div class="controls col-sm-4">
        <select id='cboRegion' name="cboRegion1" onchange='buscar_ciudad(this.value)' class="form-control" >
	<?php foreach($region as $row):?>
			<option value='<?=$row['IdRegion']?>'><?=$row['NombreRegion']?></option>
	<?php endforeach ?>
		</select>
                
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-2" for="cboCiudad1">Comuna</label>
    <div class="controls col-sm-4">
        <select id='cboCiudad' name="cboCiudad1" onchange='buscar_comuna(this.value)' class="form-control">
		</select>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-2" for="cboComuna1" >Regi&oacute;n</label>
    <div class="controls col-sm-4">
        <select id='cboComuna' name="cboComuna1"  class="form-control">
		</select>
        
        
    </div>
    <label class="control-label col-sm-1">*</label>
</div>		
    
	<p align="center"><button type='submit' value='Modificar' class="btn btn-outline btn-primary btn-lg" data-loading-text="Loading...">Crear</button> 
        <button type="reset" class="btn btn-outline btn-primary btn-lg" data-oading-text="Cargando....">Limpiar</button></p>

</form>
</div>