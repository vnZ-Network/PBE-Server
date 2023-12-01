	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/3/11
	//		Author：司文博
	//		TaskName：Swb-Quest-3323.s
	//		TaskID：财富第一名
	//****************************************

	
	function OnTaskAccept(){
		
	}
	
	function OnTaskDone(){
		
		$lv = GetPlayerInfo ( -1 , "level" )
		$lv1 = $lv * $lv
		$a = $lv1 * 15
		$b = $a / 10
		$c = $b + 1000
		
		if $lv < 75
			$money = $c
		else
			$money = $c * 2
		endif
		AddPlayerInfo( -1 , "money" , $money )
		
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

