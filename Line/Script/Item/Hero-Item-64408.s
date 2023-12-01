	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Hero-Item-64408.s
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
		
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 45
			BC( "screen", "player", -1, "You cannot use Crystal of EXP until LV45!" )
			return
		endif
		$re = GetPlayerInfo( -1 , "registertime" )
		if $re > 150
			$re = 150
		endif
		$time = GetPlayerVar( -1 , 3720 )
		$nowtime = GetSystemTime( "yday" )
		$round = GetPlayerVar( -1 , 3233 )
		$round = $round + 1
//----------------------------
		$a = $lv * $lv
		$a = $a * $lv
		$a1 = $a / 10
		$a2 = $a / 100
		
		$b = $re * 3
		$c = $b + 100
		
		$exp1 = $a1 * $c
		$exp2 = $a2 * $c
//----------------------------
		if $time != $nowtime
			if $round == 1
				AddPlayerInfo( -1 , "exp" , $exp1 )
			endif
			if $round >= 2
				if $round <= 9
					AddPlayerInfo( -1 , "exp" , $exp2 )
				endif
			endif
			if $round == 10
				$nfo = SubPlayerInfo( -1 , "item" , 64408 , 1 )
				if $nfo != 0
					return
				endif
				AddPlayerInfo( -1 , "exp" , $exp2 )
			endif
			SetPlayerVar( -1 , 3720 , $nowtime )
			SetPlayerVar( -1 , 3233 , $round )
		else
			BC( "screen", "player", -1, "You've already used Crystal of EXP today!" )
			return
		endif
	}

