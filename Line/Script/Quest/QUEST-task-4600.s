	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/09/02
	//		Author：司文博
	//		TaskName：QUEST-task-4600.s
	//		TaskID：冰封要塞奖励脚本
	//
	//****************************************
	
	
	function OnTaskDone(){
	
		$lv = GetPlayerInfo( -1 , "level" )
		
		$a = $lv * $lv 
		$a = $a * 45
		
		$b = $lv * 4
		$c = $b - 76
		$d = $c / 100
		
		$exp1 = $a
		$exp2 = $a * $d
		
		$ectype_id = GetEctypeID( -1 , 25 )
		$a = GetEctypeVar( $ectype_id , 111 )
		$a = $a + 1
		SetEctypeVar( $ectype_id , 111 , $a )
		if $lv < 45
			AddPlayerInfo( -1 , "exp" , $exp1 )
			return
		else
			AddPlayerInfo( -1 , "exp" , $exp2 )
			return
		endif
		
	}
	
	
	
	
	