<?php
	require_once($_SERVER['DOCUMENT_ROOT']."/classes/CProducts.php");
	$products=new CProducts("127.0.0.1","root","","Products","vedita_test");

	$sort=empty($_GET['sort'])?"ID":$_GET['sort'];
	$order=empty($_GET['order'])?true:$_GET['order'];
	$item_count=empty($_GET['item_count'])?0:$_GET['item_count'];
	$page=empty($_GET['page'])?1:$_GET['page'];
	$show_hidden=empty($_GET['show_hidden'])?false:$_GET['show_hidden'];
?>
<!DOCTYPE html>
<html>
<?php
	require_once($_SERVER['DOCUMENT_ROOT']."/include/head.php");
?>
<body>	
<?php
	require_once($_SERVER['DOCUMENT_ROOT']."/include/content.php");
?>
</body>
</html>