	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/17
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2143.s
	//		TaskID:????
	//
	//****************************************
	
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
	
		$a = GetPlayerInfo( -1, "item", 63716 )
		$bag = GetPlayerInfo( -1, "nullitem", 0 )
		
		if $bag < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif	
		
		
		if $a < 1
			AddPlayerInfo( -1, "item", 63716 , 1 )
		else
			BC( "screen" , "player" , -1 , "You have the Crescent Badge already." )
			return
		endif
				
		
	}