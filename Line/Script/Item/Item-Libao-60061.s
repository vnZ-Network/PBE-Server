	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/30
	//		Author:???
	//		TaskName:Item-Libao-60061.s
	//		TaskID:??
	//
	//****************************************
	
	
	
function OnUseItem(){
		$level = GetPlayerInfo( -1, "level" )
		if $level < 60
			BC( "screen", "player", -1, "You are not LV60 yet." )
			return
		endif
		
		$PlayerVar = GetPlayerVar( -1, 3722 )
		$Time = GetSystemTime( "yday" )
		if $PlayerVar == $Time
			BC( "screen", "player", -1, "You cannot use that anymore today." )
			return
		endif
		
		$SubPlayer = SubPlayerInfo( -1, "item", 60061, 1 )
		if $SubPlayer != 0
			return
		endif
		
		SetPlayerVar( -1, 3722, $Time )
		AddPlayerInfo( -1, "exp", 360000 )
		AddPlayerInfo( -1, "money", 200000 )
		
	}	