<h3>Modificar</h3>
    <fieldset>
        <? echo form_open_multipart('empresa/modificar_empresa/'.$detalle['RutEmpresa']);?>
        <p><label>Rut Empresa:</label><?=$detalle['RutEmpresa']?><input type="hidden" class="text-long" name='txtRut' value='<?=$detalle['RutEmpresa']?>'/></p>
        <p><label>Nombre Empresa:</label><input type="text" class="text-long" name='txtNombre' value='<?=$detalle['NombreEmpresa']?>'/><div class='error' id='err_rut'><?=form_error('txtNombre')?></div></p>
        <p><label>Razon Social:</label><input type="text" class="text-long" name='txtRazonSocial' value='<?=$detalle['RazonSocial']?>'/><div class='error' id='err_rut'><?=form_error('txtRazonSocial')?></div></p>
        <p><label>Telefono:</label><input type="text" class="text-long" name='txtTelefono'  value='<?=$detalle['Telefono']?>'/><div class='error' id='err_rut'><?=form_error('txtTelefono')?></div></p>
        <p><label>Direccion:</label><input type="text" class="text-long" name='txtDireccion' value='<?=$detalle['Direccion']?>'/><div class='error' id='err_rut'><?=form_error('txtDireccion')?></div></p>
        <p><label>Tipo Empresa:</label>
        <select name='cboTipoEmpresa'>
            <option value=<?=$detalle['IdTipoempresa']?>><?=$detalle['TipoEmpresa']?></option>
            <?php foreach($tipo_empresa as $row):?>
            <option value='<?=$row['IdTipoempresa']?>'><?=$row['TipoEmpresa']?></option>
            <?php endforeach ?>
        </select>
        </p>
        
      <input type="submit" value="Guardar" />
  </form>
    </fieldset>