	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/30
	//		Author:???
	//		TaskName:Item-Libao-60062.s
	//		TaskID:??
	//
	//****************************************
	
	
	
function OnUseItem(){
		$level = GetPlayerInfo( -1, "level" )
		if $level < 75
			BC( "screen", "player", -1, "You are not LV75 yet." )
			return
		endif
		
		$PlayerVar = GetPlayerVar( -1, 3723 )
		$Time = GetSystemTime( "yday" )
		if $PlayerVar == $Time
			BC( "screen", "player", -1, "You cannot use that anymore today." )
			return
		endif
		
		$SubPlayer = SubPlayerInfo( -1, "item", 60062, 1 )
		if $SubPlayer != 0
			return
		endif
		
		SetPlayerVar( -1, 3723, $Time )
		AddPlayerInfo( -1, "exp", 1800000 )
		AddPlayerInfo( -1, "money", 360000 )
		
	}	