<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<title><?=$titulo?></title><!--
	<link href="<?=base_url();?>css/transdmin.css" rel="stylesheet" type="text/css" media="screen" />
	<script type="text/javascript" src='<?=base_url();?>js/jquery.js'></script>
	
	<script type="text/javascript" src="<?=base_url();?>js/jNice.js"></script>-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
        <link href="<?=base_url();?>css/bootstrap.css" rel="stylesheet" media="screen">
        <link href="<?=base_url();?>css/bootstrap-responsive.css" rel="stylesheet" media="screen">
        <script type="text/javascript" src='<?=base_url();?>js/ajax.js'></script>
        <script src="http://code.jquery.com/jquery.js"></script>
    <script src="<?=base_url();?>js/bootstrap.js"></script>

</head>
<body>
    
    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </a>
                
                
               <!-- Be sure to leave the brand out there if you want it shown -->
               <a class="brand" href="#">Sistema ON-LINE</a>
                <!-- Everything you want hidden at 940px or less, place within here -->
                <div class="nav-collapse collapse">
                    <ul class="nav nav-tabs">
                        <li><a href="<?=base_url()?>">DASHBROAD</a></li>
                        <li class="dropdown"><a href="<?=base_url()?>listado_empresas" class="dropdown-toggle" data-toggle="dropdown">Mantenedor <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="<?=base_url()?>listado_empresas">Proveedores</a></li>
                            <li><a href="#">Usuarios</a></li>
                            <li><a href="#">Permisos</a></li>
                            <li role="presentation" class="divider"></li>
                            <li><a href="#">Vendedores</a></li>
                        </ul>        
                        </li>
                        <li><a href="#">Usuarios</a></li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="span12"><h1>TITULO</h1></div>
        <div class="row-fluid">
            
            <!-- MENU-->
            
            <div class="span2">
                
                <h2>Menu</h2>
            </div>
            <!-- COntent -->
            <div class="span10">
       
        
 