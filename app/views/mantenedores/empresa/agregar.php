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
	
    
	<p align="center"><button type='submit' value='Modificar' class="btn btn-outline btn-primary btn-lg" data-loading-text="Loading...">Crear</button> 
        <button type="reset" class="btn btn-outline btn-primary btn-lg" data-oading-text="Cargando....">Limpiar</button></p>

</form>
</div>