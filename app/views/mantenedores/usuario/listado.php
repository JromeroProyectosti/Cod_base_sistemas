
            <?php
            echo form_open("crear_usuario",array('class'=>'form-horizontal'));

            ?>
            <input type="submit" value="Nuevo Usuario" class="btn btn-primary">
            </form>

            <table class="table table-striped  table-bordered table-hover">
                    <tr >
                            <th>Rut</th>
                            <th>Nombre</th>
                            <th>Correo</th>
                            <th>Usuario</th>
                            <th>Fecha Registro</th>
                            <th>Fecha ult. ingreso</th>
                            <th></th>
                            <th></th>
                    </tr>
                    <?php
                        $i=0;
                        foreach ($listado as $value): 

                        ?>

                    <tr >
                            <td><?=$value['RutUsuario']?></td>
                            <td><?=$value['NombreUsuario']." ".$value['ApellidoUsuario']?></td>
                            <td><?=$value['CorreoUsuario']?></td>
                            <td><?=$value['UsuarioUsuario']?></td>
                            <td><?=$value['FecharegistroUsuario']?></td>
                            <td><?=$value['FechaultimoingresoUsuario']?></td>
                           <td><a href="<?=base_url()?>modificar_usuario/<?=$value['RutUsuario']?>" ><i class="icon-edit"></i></a></td>
                            <td><a href="<?=base_url()?>eliminar_usuario/<?=$value['RutUsuario']?>" ><i class="icon-remove"></i></a></td>
                            </td>
                    </tr>
                    <?php endforeach ?>
            </table>

            <!--
            <table>
                    <tr>
                            <td>Rut Empresa</td>
                            <td>Nombre Empresa</td>
                            <td>Razon Social</td>
                            <td>Telefono</td>
                            <td>Direccion</td>
                            <td></td>
                    </tr>
                            <tr>
                            <td><?=$value['RutProveedor']?></td>
                            <td><?=$value['NombreProveedor']?></td>
                            <td><?=$value['RazonSocial']?></td>
                            <td><?=$value['Telefonocontacto1Proveedor']?></td>
                            <td><?=$value['Direccioncontacto1Proveedor']?></td>
                            <td class="action"><a href="<?=base_url()?>sucursal/listado_sucursal/<?=$value['RutProveedor']?>" class="view">detalle</a>
                            <a href="<?=base_url()?>empresa/modificar_empresa/<?=$value['RutProveedor']?>" class="edit">Modificar</a>
                            <a href="<?=base_url()?>empresa/eliminar_empresa/<?=$value['RutProveedor']?>" class="delete">Eliminar</a>
                            </td>
                    </tr>

            </table>-->
