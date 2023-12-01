	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/16
	//		Author:??
	//		TaskName:HD-shiluodeyiji-NPC1.s
	//		TaskID:?????-???????
	//
	//****************************************
	
	//??????
	function OnRequest(){
	//??????2??6?????
		$week = GetSystemTime( "week" )
		if $week != 6
			DisableNpcOption(0)
			return
		endif
		
		$time = GetSystemTime( "hour" )
		if $time < 14
			DisableNpcOption(0)
			return
		endif
		if $time > 17 
			DisableNpcOption(0)
			return
		endif
		
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 30
			DisableNpcOption(0)
			return
		endif
	}
	//??NPC1????????,????
	
	function OnOption0(){
		
		$week = GetSystemTime( "week" )
		if $week != 6
			BC( "chat", "player", -1, "Please come on Saturday." )
			return
		endif
		
		$time = GetSystemTime( "hour" )
		if $time < 14
			BC( "chat", "player", -1, "The event has not started yet." )
			return
		endif
		if $time > 17 
			BC( "chat", "player", -1, "The event has not started yet." )
			return
		endif
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 30
			BC( "chat", "player", -1, "Please come above level 30." )
			return
		endif
		FlyToMap( -1,132, 55 , 60 ,1)
	}

