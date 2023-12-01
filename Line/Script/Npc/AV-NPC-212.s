	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/15
	//		Author:???
	//		TaskName:AV-NPC-212.s
	//		TaskID:??
	//
	//****************************************
	
	function OnRequest(){		
		
	}
	
	
	function OnOption0(){
		$Item1 = GetPlayerInfo( -1, "item", 12417 )
		if $Item1 < 1
			BC( "dialogbox", "player", -1, "You don't have any Adventure Coins." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 12417, 1 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 50026, 1 )
	}
	
	function OnOption1(){
		$Item1 = GetPlayerInfo( -1, "item", 12417 )
		if $Item1 < 1
			BC( "dialogbox", "player", -1, "You don't have any Adventure Coins." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 12417, 1 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 50025, 1 )
	}