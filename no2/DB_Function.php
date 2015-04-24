<?php
class DB_Function {
	
	private $db;
	
	function __construct(){
		require_once 'DB_Connect.php';
		$this->db = new DB_Connect();
		$this->db->connect();
	}
	
	function __destruct(){
	
	}
	
	public function showall(){
		$array_result =array();
		$result = mysql_query("SELECT * FROM visit_article GROUP BY article_id");
		if($result){
			while($row = mysql_fetch_assoc($result)){
				$array_result[] = $row;
			}
			return $array_result;
		}else{
			return false;
		}
	}
	
	public function recomend($param1){
		$result = mysql_query("CALL getRecommended($param1)");
		if($result){
			return mysql_fetch_array($result);
		}else{
			return false;
		}
	}
}
?>