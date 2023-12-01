	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/23
	//		Author:???
	//		TaskName:NPC-96-baoxiang.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$Item0 = GetPlayerInfo( -1, "item", 12411 )
		if $Item0 < 1
			BC( "dialogbox", "player", -1, "You need a Golden Key to open the Golden Treasure Chest." )
			return
		endif
		
		$Sub0 = SubPlayerInfo( -1, "item", 12411, 1 )
		if $Sub0 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 12406, 1 )
	}