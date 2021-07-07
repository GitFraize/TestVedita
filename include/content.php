<center>
	<table cellspacing="0">
<?php
$result=$products->GetFromTable($sort, $order, $item_count, $page, $show_hidden);
?>
<form method="GET">
	<div id="settings" class="settings settingsOpen">
		<p>Макс. строк: <input type="number" name="item_count" value="<?php echo $item_count; ?>"/></p>
		<p>Страница: <input type="number" name="page" value="<?php echo $page; ?>"/></p>
		<p>Отображать скрытые строки: <input type="checkbox" name="show_hidden" <?php if($show_hidden) echo "checked"; ?>/></p>
		<p><input type="submit" name="apply" value="Применить"/></p>
		<div type="submit" name="panel" class="open_hide" title="Показать/Спрятать" onClick="openHide()" >≣</div>
	</div>
	<tr>
<?php
foreach($result[0] as $key =>$value)
	if($key!="HIDDEN")
			echo "<th>
				<input type=\"submit\" name=\"sort\" id=\"sort\" value=\"$key\"/>
			</th>";
	else
		echo "<th></th>";
?>
	</tr>
</form>
<?php
	for($i=0; $i<count($result); $i++){
		echo "<tr class=\"".($result[$i]['HIDDEN']?"hidden":"not_hidden")."\" id=\"".$result[$i]['ID']."\">";
		
		foreach($result[$i] as $key =>$value){
			switch ($key) {
				case 'HIDDEN':
					break;
				case 'PRODUCT_QUANTITY':
					echo "<td>
						<input class=\"quantity_minus\" type=\"submit\" value=\"-\" onClick=\"minusQuantity('q".$result[$i]['ID']."')\"/>
						<input class=\"quantity\" id=\"q".$result[$i]['ID']."\" type=\"text\" value=\"$value\" disabled/>
						<input class=\"quantity_plus\" type=\"submit\" value=\"+\" onClick=\"plusQuantity('q".$result[$i]['ID']."')\"/>
					</td>";
					break;			
				default:
					echo "<td>$value</td>";
					break;
			}
		}
?>
			<td>
				<input class="add_delete material-icons" 
					title="<?php echo($result[$i]['HIDDEN']?"Показать":"Скрыть"); ?>" type="submit" 
					onclick="switchItemVisibility(<?php echo $result[$i]['ID']; ?>,this, <?php echo (empty($_GET['show_hidden'])?false:($_GET['show_hidden']=="on"?true:false)); ?> )" 
					value="<?php echo($result[$i]['HIDDEN']?"visibility_off":"visibility"); ?>"/>
			</td></tr>
<?php
	}
?>
	</table>
</center>