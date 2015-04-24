<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<form action="" method="POST">
	<p>Input Number(N)</p>
	<input type="text" name="value">
	<input type="submit" name="hitung" value="Show">
</form>
<?php
if(isset($_POST['hitung'])){
	$limit = trim($_POST['value']);
	$k = 0;
	$j1 = 2;
	$j2 = 2;
	
	while($k <= $limit){

		while($j2 <= $j1){
		
			$a=0;
			for($i=1;$i<=$j1; $i++){		
				if($j1 % $i == 0)
					$a++;						
			}
			
			if($a==2){
				echo "N = ".$k." Result Prima = ".$j1."<br>";
				$k++;
				$j2++;
				
			}
			$j2++;
			$j1++;
		}
		
		if($k<=$limit){
			$j2--;
		}
	}
}
?>
</body>
</html>