	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/09/22
	//		Author���콨��
	//		TaskName��task-1742.s
	//		TaskID��       
	//
	//****************************************
	
		function OnTaskDone(){ 
		$lv = GetPlayerInfo ( -1 , "level" )
		$lv2 = $lv * $lv
		$a = $lv2 * 10
		$b = $lv * 4
		$c = $b - 76
		$d = $a * $c
		$e = $d / 100
		$f = $e * 5
		$exp = $f / 2
		AddPlayerInfo( -1 , "exp" , $exp )
	                               	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){        
		               
  }                              
