<?php
$server ='localhost';
$user ='root';
$pass ='';
$db='Article';

$connect = mysql_connect($server,$user,$pass) or die(mysql_error());
$select = mysql_select_db($db);

$query ="CALL getRecommended(3);";
$d_query = mysql_query($query)or die(mysql_error());
$data = mysql_fetch_object($d_query);

//while($data = mysql_fetch_array($d_query)){
	//echo $data['article_id']." ".$data['jumlah']."<br>";
//}

?>