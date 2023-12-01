	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/22
	//		Author:??
	//		TaskName:Hero2-item-59070.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		
		$lv = GetPlayerInfo( -1 , "level" )
		$addexp1 = $lv * $lv
		$addexp2 = $addexp1 * $lv
		$addexp = $addexp2 * 7
		
		$time = GetPlayerVar( -1 , 3741 )
		$nowtime = GetSystemTime( "yday" )
		
		if $time != $nowtime
			$nfo = SubPlayerInfo( -1 , "item" , 59070 , 1 )
			if $nfo != 0
				return
			endif
			AddPlayerInfo( -1 , "exp" , $addexp )
			SetPlayerVar( -1 , 3741 , $nowtime )
		else
			BC( "screen", "player", -1, "You have used Holy Heart once today." )
			return
		endif
		
		
		
			
	}

