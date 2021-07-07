<?php
class CProducts{
	public $host="";
	public $user="";
	public $password="";
	public $table="";
	public $db="";

	public function __construct($host,$user,$password,$table,$db){
		$this->host=$host;
		$this->user=$user;
		$this->password=$password;
		$this->table=$table;
		$this->db=$db;
	}

	public function GetFromTable($sort="ID", $asc=true, $item_count=0, $page_num=1, $show_hidden=false){

		$mysqli=new mysqli($this->host,$this->user,$this->password,$this->db);
		$mysqli->set_charset('utf8mb4');

		$order=$asc?"ASC":"DESC";

		$result=$mysqli->query("SELECT * FROM $this->table ORDER BY $sort $order") or die($mysqli->error);
		$mysqli->close();
		
		$arr=array();
		while ($row = $result->fetch_assoc())
			if(!$row['HIDDEN'] || $show_hidden)
				$arr[count($arr)]=$row;

		if($item_count>0 && ($item_count*($page_num-1))<count($arr)){
			$page=array();
			$i=$item_count*($page_num-1);
			while($i<$item_count*($page_num) && $i<count($arr)){
				$page[count($page)]=$arr[$i];
				$i++;
			}
			return $page;
		}else
			return $arr;
	}

	public function AddRecord($id,$name,$price,$article, $quantity, $date){
		$mysqli=new mysqli($this->host,$this->user,$this->password,$this->db);
		$mysqli->query("INSERT INTO $this->table (PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_ARTICLE,PRODUCT_QUANTITY,DATE_CREATE) VALUES( \"$id\", \"$name\", \"$price\", \"$article\", \"$quantity\", \"$date\")") or die($mysqli->error);
		$mysqli->close();
	}
	
	public function UpdateHidden($id, $hide){
		$mysqli=new mysqli($this->host,$this->user,$this->password,$this->db);
		$mysqli->query("UPDATE $this->table SET HIDDEN=\"$hide\" WHERE ID=\"$id\"") or die($mysqli->error);
		$mysqli->close();
	}
	
	public function UpdateQuantity($id, $quantity){
		$mysqli=new mysqli($this->host,$this->user,$this->password,$this->db);
		$mysqli->query("UPDATE $this->table SET PRODUCT_QUANTITY=\"".(int)$quantity."\" WHERE ID=\"$id\"") or die($mysqli->error);
		$mysqli->close();
	}
}
?>