	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/13
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2169.s
	//		TaskID:??????
	//
	//****************************************
	
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$count = GetPlayerVar( -1 , 3980 )
		
		$bag = GetPlayerInfo( -1, "nullitem", 0 )
		
		if $bag < 2
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif	
		
		if $count == 0	
			AddPlayerInfo( -1, "item", 63719 , 1 )
			AddPlayerInfo( -1, "item", 63717 , 1 )
			SetPlayerVar( -1 , 3980 , 1 )
		else
			BC( "screen", "player", -1, "The Chest is empty." )
		endif
		
	}