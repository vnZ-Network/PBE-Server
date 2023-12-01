
	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/3/11
	//		Author：司文博
	//		TaskName：Swb-Quest-3324.s
	//		TaskID：职业第一名
	//****************************************
	
	
	function OnTaskAccept(){
		
	}
	
	function OnTaskDone(){
	
		SubPlayerInfo( -1 , "money", 1000 )
		$lv = GetPlayerInfo ( -1 , "level" )
//---(lv-30)^3*2+lv^2*12
		$lv1 = $lv * $lv
		$a = $lv - 30
		$b = $a * $a 
		$c = $b * $a
		$e = 2 * $c
		$d = $lv1 * 12
		
		$exp = $e + $d
		
		AddPlayerInfo( -1 , "exp" , $exp )
		
	}