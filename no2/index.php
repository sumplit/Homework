<?php
require_once "DB_Function.php";

$db_func = new DB_Function();
$result = $db_func->showall();

//print_r($result);
$no =1;
foreach($result as $data){
	echo $no." ".$data['article_id']."<br>";
	$no++;
}

echo "I'm Reading Article Id = 3<br>";
echo "Recommmended Article<br>";

$recom = $db_func-> recomend(3);
echo "Id Article = ".$recom['article_id']." User Red Article = ".$recom['jumlah'];

?>