<?php
	require_once($_SERVER['DOCUMENT_ROOT']."/classes/CProducts.php");
	$products=new CProducts("127.0.0.1","root","","Products","vedita_test");
	$products->UpdateQuantity($_GET['id'],$_GET['quantity']);
	echo $_GET['quantity'];
?>