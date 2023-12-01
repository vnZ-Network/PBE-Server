	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/22
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2137.s
	//		TaskID:????
	//
	//****************************************
	
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
			
		$lv = GetPlayerInfo( -1 , "level" )
		$rond = GetPlayerVar( -1 , 3275 )
		$nowtime = GetSystemTime( "yday" )
		$nowtime = $nowtime + 1
		$time = GetPlayerVar( -1 , 3985 )
		
		
	
		//????????????
		$result1 = IsTaskAccept( -1 , 1711 )
		$result2 = IsTaskAccept( -1 , 1712 )
		$result3 = IsTaskAccept( -1 , 1713 )
		$result4 = IsTaskAccept( -1 , 1714 )
		$result5 = IsTaskAccept( -1 , 1715 )
		$result6 = IsTaskAccept( -1 , 1716 )
		
		if $result1 == 0
			BC( "screen", "player", -1, "You've received the Count's Invitation quest." )	
			return
		endif
		
		if $result2 == 0
			BC( "screen", "player", -1, "You've received the Count's Invitation quest." )
			return
		endif
		
		
		if $result3 == 0
			BC( "screen", "player", -1, "You've received the Count's Invitation quest." )
			return
		endif
		
		
		if $result4 == 0
			BC( "screen", "player", -1, "You've received the Count's Invitation quest." )
			return
		endif
		
		
		if $result5 == 0
			BC( "screen", "player", -1, "You've received the Count's Invitation quest." )
			return
		endif
		
		
		if $result6 == 0
			BC( "screen", "player", -1, "You've received the Count's Invitation quest." )
			return
		endif
		
		
		//?????????
		
		if $nowtime == $time
			BC( "screen", "player", -1, "You've received the Count's Invitation quest already." )
			return
		endif
		
		//????????
		if $lv >= 70
			if $lv < 80
				AcceptTask( -1 , 1711 )
				SetPlayerVar( -1 , 3985 , $nowtime )
			endif
		endif
				
		if $lv >= 80
			if $lv < 90
				AcceptTask( -1 , 1712 )
				SetPlayerVar( -1 , 3985 , $nowtime )
			endif
		endif
		
		if $lv >= 90
			if $lv < 100
				AcceptTask( -1 , 1713 )
				SetPlayerVar( -1 , 3985 , $nowtime )
			endif
		endif

		if $lv >= 100
			if $lv < 110
				AcceptTask( -1 , 1714 )
				SetPlayerVar( -1 , 3985 , $nowtime )
			endif
		endif
		
		if $lv >= 110
			if $lv < 120
				AcceptTask( -1 , 1715 )
				SetPlayerVar( -1 , 3985 , $nowtime )
			endif
		endif
		
		if $lv >= 120
			AcceptTask( -1 , 1716 )
			SetPlayerVar( -1 , 3985 , $nowtime )
		endif
		
	}