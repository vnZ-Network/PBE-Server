	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/25
	//		Author:??
	//		TaskName:HD-leishengjitan.s
	//		TaskID:????NPC????
	//
	//****************************************
	
	//??????
	function OnRequest(){
	
		$time = GetSystemTime( "week" )
		if $time != 0
			if $time != 6
				DisableNpcOption(0)
			endif
		endif
		
		$level = GetPlayerInfo(-1,"level")
		if $level < 30
			DisableNpcOption(0)
		endif
		
	}
	
	//??????
	
	function OnOption0(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????
		if $level < 30
			BC( "screen", "player", -1, "You can enter Thor Shrine above level 30." )
			BC( "chat", "player", -1, "You can enter Thor Shrine above level 30." )
			return
		endif
		//????????
		$time = GetSystemTime( "week" )
		
		if $time != 0
			if $time != 6
				BC( "screen", "player", -1, "You can not enter, today is not weekend." )
				BC( "chat", "player", -1, "You can not enter, today is not weekend." )
				return
			endif
		endif
		
		$result = FlyToMap( -1, 112, 64, 56,1 )
	}
	
	//??????