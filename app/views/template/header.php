<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


	<title><?=$titulo?></title>
	<link href="<?=base_url();?>css/transdmin.css" rel="stylesheet" type="text/css" media="screen" />
	<script type="text/javascript" src='<?=base_url();?>js/jquery.js'></script>
	<script type="text/javascript" src='<?=base_url();?>js/ajax.js'></script>
	<script type="text/javascript" src="<?=base_url();?>js/jNice.js"></script>
</head>
<body>
<div id="wrapper">
<!-- h1 tag stays for the logo, you can use the a tag for linking the index page -->
	<h1><a href="#"><span>Sistema Base</span></a></h1>
	

	 <!-- You can name the links with lowercase, they will be transformed to uppercase by CSS, we prefered to name them with uppercase to have the same effect with disabled stylesheet -->
	<ul id="mainNav">
		<li><a href="#" class="active">EMPRESAS</a></li> <!-- Use the "active" class for the active menu item -->
		<li><a href="#">ADMINISTRATION</a></li>
		<li><a href="#">DESIGN</a></li>
		<li><a href="#">OPTION</a></li>
		<li><a href="#"><?=$nombre_completo?></a></li>
		<li class="logout"><a href="#">LOGOUT</a></li>
	</ul>
	 <!-- // #end mainNav -->
	<div id="containerHolder">
		<div id="container">
			<div id="sidebar">
				<ul class="sideNav">
					<li><a href="#">Exchange</a></li>
					<li><a href="#" class="active">Print resources</a></li>
					<li><a href="#">Training &amp; Support</a></li>
					<li><a href="#">Books</a></li>
					<li><a href="#">Safari books online</a></li>
					<li><a href="#">Events</a></li>
				</ul>
				<!-- // .sideNav -->
			</div>
			<!-- // #sidebar -->
			<!-- h2 stays for breadcrumbs -->
			<h2><a href="#">Dashboard</a> &raquo; <a href="#" class="active">Print resources</a></h2>
			<div id="main">