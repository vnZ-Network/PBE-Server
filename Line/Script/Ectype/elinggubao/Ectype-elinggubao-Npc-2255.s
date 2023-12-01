	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/24
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2255.s
	//		TaskID:????????
	//
	//****************************************
	
	
	
	function OnRequest(){
		$ectype_id = GetEctypeID( -1 , 258 )
		$posX = GetPlayerInfo( -1, "mapposx" )
		$posY = GetPlayerInfo( -1, "mapposy" )
		if $posX < 134
			BC( "screen", "player", -1, "Move closer" )
			return
		endif
		if $posX > 142
			BC( "screen", "player", -1, "Move closer" )
			return
		endif
		
		if $posY < 56
			BC( "screen", "player", -1, "Move closer" )
			return
		endif
		if $posY > 64
			BC( "screen", "player", -1, "Move closer" )
			return
		endif
		FlyToMap( -1, $ectype_id, 55, 19 )
	}