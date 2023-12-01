	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/24
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2254.s
	//		TaskID:????????
	//
	//****************************************
	
	
	
	function OnRequest(){
		$ectype_id = GetEctypeID( -1 , 258 )
		$posX = GetPlayerInfo( -1, "mapposx" )
		$posY = GetPlayerInfo( -1, "mapposy" )
		if $posX < 202
			BC( "screen", "player", -1, "Move closer" )
			return
		endif
		if $posX > 208
			BC( "screen", "player", -1, "Move closer" )
			return
		endif
		
		if $posY < 53
			BC( "screen", "player", -1, "Move closer" )
			return
		endif
		if $posY > 62
			BC( "screen", "player", -1, "Move closer" )
			return
		endif
		FlyToMap( -1, $ectype_id, 82, 17 )
	}