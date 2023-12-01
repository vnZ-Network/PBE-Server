	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/27
	//		Author:???
	//		TaskName:???????
	//		TaskID:NPC-EXIT.s
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	function OnOption0(){
		
		$weizhi = GetPlayerVar(-1,3547)
		$itemnum = GetPlayerInfo( -1, "item", 44543)
		if $weizhi == 46
			if $itemnum == 1
				BC( "chat", "player", -1, "You've not taken your rewards!")
				BC( "screen", "player", -1, "You've not taken your rewards!")
				return
			endif
		endif
		
		FlyToMap(-1, 475, 77, 39)
	}