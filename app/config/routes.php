<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

$route['default_controller'] = "home";

$route['login']="usuarios";
/*$route['empresa']="empresa/view";
$route['empresa/(:any)']="empresa/view/$1";*/
$route['guardar_empresa']="empresa/guardarempresa";
$route['listado_empresas']="sec_empresa/listado_empresas";
$route['addempresa']="sec_empresa/addempresa";
$route['modificar_empresa/(:any)']="sec_empresa/modificar_empresa/$1";
$route['detalle_empresa/(:any)']="sec_empresa/detalle_empresa/$1";
$route['eliminsr_empresa/(:any)']="sec_empresa/eliminar_empresa/$1";

$route['crear_usuario']="sec_usuario/crear";
$route['modificar_usuario/(:any)']="sec_usuario/modificar/$1";
$route['listado_usuarios']="sec_usuario/listar";
$route['permiso_usuario/(:any)']="sec_usuario/permiso/$1";
$route['listado_sucursal']="listado_sucursal";
$route['listado_productos']="sec_productos/listar";
$route['crear_producto']="sec_productos/crear";
$route['modificar_producto/(:num)']="sec_productos/modificar/$1";
$route['eliminar_producto/(:num)']="sec_productos/eliminar/$1";
$route['listado_compras']="sec_ingreso/listar";
$route['ingresar_factura']="sec_ingreso/factura";

$route['ingresar_factura/(:any)']="sec_ingreso/factura/$1";
$route['ingresar_producto/(:num)']="sec_ingreso/producto/$1";
$route['ingresar_producto/(:num)']="sec_ingreso/producto/$1";
$route['finalizar_compra']="sec_ingreso/finaliza";




$route['comun/generaoptionciudad']="comun/generaoptionciudad";
$route['comun/generaoptioncomuna']="comun/generaoptioncomuna";
$route['comun/generajsonproductos/(:any)']="comun/generajsonproductos/$1";
//$route['404_override'] = '';


/* End of file routes.php */
/* Location: ./application/config/routes.php */