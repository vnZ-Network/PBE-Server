
	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/3/11
	//		Author：司文博
	//		TaskName：Swb-Quest-3322.s
	//		TaskID：等级第一名
	//****************************************
	
	
	function OnTaskAccept(){
		
	}
	
	function OnTaskDone(){
		
		$lv = GetPlayerInfo( -1 , "level" )
		
//----------(lv-60)^3*2 + 180*lv*lv-----
		$lv1 = $lv * $lv
		$a = $lv - 60
		$b = $a * $a
		$c = $b * $a
		$d = $c * 2
		
		$g = 180 * $lv1
		
		$exp = $d + $g 
	
		AddPlayerInfo( -1 , "exp" , $exp )
	

	}