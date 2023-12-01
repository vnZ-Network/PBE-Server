	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/07
	//		Author:???
	//		TaskName:HD-Pyramid-NPC-1794.s
	//		TaskID:??
	//
	//****************************************
	
	function OnRequest(){
		//??????
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3661 )
		$Task = IsTaskAccept( -1, 4429 )
		
		if $TaskVar == $time0
			DisableNpcOption(0)
		endif
		if $Task == 0
			DisableNpcOption(0)
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 65
			DisableNpcOption(0)
		endif
	}
	
	
	function OnOption0(){
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3661 )
		$Task = IsTaskAccept( -1, 4429 )
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 65
			BC( "dialogbox", "player", -1, "You are not LV65 yet." )
			return
		endif
		
		if $TaskVar == $time0
			BC( "dialogbox", "player", -1, "You have acquired the quest today. Please come back tomorrow." )
			return
		endif
		if $Task == 0
			BC( "dialogbox", "player", -1, "Hurry up and finish the quest assigned to you!" )
			return
		endif
		AcceptTask( -1, 4429 )
		SetPlayerVar( -1, 3661, $time0 )
	}