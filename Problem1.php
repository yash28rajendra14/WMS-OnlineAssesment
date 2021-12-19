<?php

	// to find the Quarter from given array
	function findQuarter($quarter,$month){
	  $i=0;
	  $size = count($quarter);
	  for(; $i < $size; $i++)
	  {
	        $date = DateTime::createFromFormat("m-d", $quarter[$i]["start"]);
	        $startMonth = $date->format("m");
	        $date = DateTime::createFromFormat("m-d", $quarter[$i]["ends"]);
	        $endMonth = $date->format("m");
	        
	        if($startMonth == $month || ($month >$startMonth &&  $month <= $endMonth)){
	          echo ($i + 1) . " Quarter"; 
	          break;
	        }
	        else if($startMonth > $endMonth && $month >=1 &&  $month <= $endMonth) {
	          echo (1) . " Quarter"; 
	          break;
	        }
	  }
	  if($i>3) echo "please enter valid month!";  
	}
	
	//Given Array 
		
	$quarter = [
					['start' => '12-01', 'ends' => '02-28'],
					['start' => '03-01', 'ends' => '05-31'],
					['start' => '06-01', 'ends' => '08-31'],
					['start' => '09-01', 'ends' => '11-31'],
			   ];

	// user input for month
	fscanf(STDIN, "%d\n", $month);
	// function to find quarter
	findQuarter($quarter,$month);

?>
