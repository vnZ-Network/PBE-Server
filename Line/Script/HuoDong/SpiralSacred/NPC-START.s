	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/06
	//		Author:???
	//		TaskName:????
	//		TaskID:NPC-904.s
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	function OnOption0(){
		$weizhi = GetPlayerVar(-1,3547)
		$itemnum = GetPlayerInfo( -1, "item", 44543)
		if $weizhi == 1
			if $itemnum == 0
				AddPlayerInfo( -1, "item", 44543,1)
				BC( "chat", "player", -1, "Please take this precious dice and start your adventure!")
				BC( "screen", "player", -1, "Please take this precious dice and start your adventure!")
				return
			endif
		endif
		
		BC( "chat", "player", -1, "Warrior, good luck to you!")
		BC( "screen", "player", -1, "Warrior, good luck to you!")
	}