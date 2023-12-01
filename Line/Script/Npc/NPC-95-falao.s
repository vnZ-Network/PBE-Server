	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/23
	//		Author:???
	//		TaskName:NPC-95-falao.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$Item0 = GetPlayerInfo( -1, "item", 12412 )
		if $Item0 < 1
			BC( "dialogbox", "player", -1, "Unable to open Pharaoh's coffin. It seems a mysterious power is sealing the coffin. {#ffff002a=A Soul of the Dead is required.#}" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$Sub0 = SubPlayerInfo( -1, "item", 12412, 1 )
		if $Sub0 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 12410, 1 )
	}