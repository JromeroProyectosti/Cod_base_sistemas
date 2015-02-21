            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Compras</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="panel panel-default">
                <div class="panel-body">
                <div class="col-lg-4">
                    <p class="text-center">
                        <button type="button" class="btn btn-primary btn-circle btn-xl" ><i class="fa fa-check"></i></button>
                        <br>
                        <label>Ingresar Factura</label>
                    </p>
                </div>
                <div class="col-lg-4">
                    <p class="text-center">
                        <button type="button" class="btn btn-default btn-circle btn-xl">2</button>
                        <br>
                        <label>Ingresar Productos</label>
                    </p>
                </div>
                <div class="col-lg-4">
                    <p class="text-center">
                        <button type="button" class="btn btn-primary btn-circle btn-xl">3</button>
                        <br>
                        <label>Finalizar Compra</label>
                    </p>
                </div>
                </div>
            </div>
            <div class="panel panel-info">
                <div class="panel-heading">
                          Datos Generales de Factura
                </div>
               
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tr>
                                <td><strong>Rut Empresa</strong></td>
                                <td><?=$compra['RutProveedor']?></td>
                                <td><strong>Nombre Empresa</strong></td>
                                <td><?=$compra['NombreProveedor']?></td>
                            </tr>
                            <tr>
                                <td><strong>Numero Factura</strong></td>
                                <td><?=$compra['NumeroCompra']?></td>
                                <td><strong>Monto</strong></td>
                                <td><?=$compra['Monto']?></td>
                            </tr>
                            <tr>
                                <td><strong>Fecha Factura</strong></td>
                                <td><?=$compra['FecharegistroCompra']?></td>
                                <td>

                                </td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel panel-yellow">
                <div class="panel-heading">
                          Agregar Producto
                </div>
                <div class="panel-body">
                    <?= form_open("agregar_producto_compra",array('class'=>'form-horizontal'))?>
                    <?= form_hidden("hdCompra",$id_compra)?>
                        <div class="form-group">
                            <label class="control-label col-lg-1" for="txtCodigo">Codigo</label>
                            <div class="controls  col-lg-2">
                                <input type='text' class="form-control" name='txtCodigo' id='txtCodigo' />
                            </div> 
                            <div class="controls col-lg-1">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button" onclick="javascript:cargar_producto()"><i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                            <label class="control-label  col-lg-1" for="txtCodigoCatalogo">Codigo Catalogo</label>
                            <div class="controls  col-lg-3">
                                <input type='text' class="form-control" name='txtCodigoCatalogo' id='txtCodigoCatalogo' disabled  />
                            </div> 
                            <label class="control-label  col-lg-1" for="txtDescripcion">Descripcion</label>
                            <div class="controls  col-lg-3">
                                <input type='text' class="form-control" name='txtDescripcion' id='txtDescripcion'  disabled/>
                            </div> 
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-1" for="txtCantidad">Cantidad</label>
                            <div class="controls  col-lg-3">
                                <input type='text' class="form-control" name='txtCantidad' id='txtCantidad'  disabled/>
                            </div>
                            <label class="control-label col-lg-1" for="txtCosto">Costo</label>
                            <div class="controls  col-lg-3">
                                <input type='text' class="form-control" name='txtCosto' id='txtCosto'  disabled/>
                            </div> 
                            <label class="control-label  col-lg-1" for="txtPrecioCatalogo">Precio Catalogo</label>
                            <div class="controls  col-lg-3">
                                <input type='text' class="form-control" name='txtPrecioCatalogo' id='txtPrecioCatalogo' disabled />
                            </div> 

                        </div>
                        <p class="text-center">
                            <button type="submit" class="btn btn-primary">Agregar</button>
                       
                            <button class="btn btn-primary">Cancelar</button>
                    </p>
                    </form>
                </div>
            </div>
            <div class="panel panel-success">
                <div class="panel-heading">
                          Detalle
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped  table-bordered table-hover table-condensed" width="100%" id="datatable-productos">
                        <thead>
                            <tr>
                                <th>Cantidad</th>
                                <th>Codigo</th>
                                <th>Codigo Catalogo</th>
                                <th>Descripcion</th>
                                <th >Costo &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                <th>Precio Catalogo</th>
                                <th>Iva</th>
                                <th>Neto</th>
                                <th>Comision(30%)</th>
                                <th>Retencion(10%)</th>
                                <th>A Pagar</th>
                                <th>Ganancia</th>
                                <th>Utilidad Empresa</th>
                                <th>Modificar</th>
                                <th>Eliminar</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php 
                        $i=1;
                        foreach ($this->cart->contents() as $items): ?>
                        <?=form_hidden('hdId[]', $items['rowid'])?>
                        <?php 
                        $i++;
                        ?>
                        <tr>
                            <td><?=form_input(array('name' => 'txtCantidad[]', 'value' => $items['qty'], 'maxlength' => '3', 'size' => '5'))?>
                                <td><?=$items['id']?></td>
                                <td>Codigo Catalogo</td>
                                <td><?=$items['name']?></td>
                                <td><?=form_input(array('name' => 'txtPrecio[]', 'value' => $items['price'], 'maxlength' => '3', 'size' => '5'))?></td>
                                <td><?=form_input(array('name' => 'txtPrecioCatalogo[]', 'value' => $items['catalogo'], 'maxlength' => '3', 'size' => '5'))?></td>
                                <td><?=$items['iva']?></td>
                                <td><?=$items['neto']?></td>
                                <td><?=$items['comision']?></td>
                                <td><?=$items['retencion']?></td>
                                <td><?=$items['apagar']?></td>
                                <td><?=$items['ganancia']?></td>
                                <td><?=$items['utilidad']?></td>
                                
               
                                <td>Modificar</td>
                                <td>Eliminar</td>
                            </tr>
                        <?php endforeach; ?>
                        </tbody>
                        </table>
                    </div>
                </div>
            </div>

<script>
function cargar_producto(){
    
    $.post("<?=base_url()?>comun/generajsonproductos/"+$("#txtCodigo").val(), 
    {'nom1' : "valor1", 'nom2' :" valor2"},
    function(data){
      
        if(data!="false"){
            $("#txtCantidad").attr('disabled',false);
            $("#txtCosto").attr('disabled',false);
            $("#txtPrecioCatalogo").attr('disabled',false);
            $.each(data, function(i, val){
                //$(".contenedor_json").append('<li>' + val.provincia + '</li>');
                $("#txtCodigoCatalogo").attr('value',val.CodigocatalogoProducto);
                $("#txtDescripcion").attr('value',val.DescripcionProducto);
                $("#txtCosto").attr('value',val.PreciocompraProducto);
                $("#txtPrecioCatalogo").attr('value',val.PrecioventaProducto);
            });
            
        }
    }, "json"
   );
}

</script>