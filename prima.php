<?php
$i=0;
$limit=3;
$start=0;
$ii=2;
$jj=0;

while($start < $limit){
	
	for($i=2;$i<=$ii;$i++){
		
		$a = 0;
		
		for($j=1;$j<=$i;$j++){
			if($i % $j == 0){
				$a++;
			}
		}
		
		if($a == 2){
			echo $start." -> ".$i.'<br/>';
			$ii++;
			$start++;
			//$jj++;
		}
		
	}
	
	//echo $ii."<br>";
	//$start++;
}//*/
?>