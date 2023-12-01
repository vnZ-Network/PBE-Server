	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/22
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2245.s
	//		TaskID:??
	//
	//****************************************
	
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$ectype_id = GetEctypeID( -1 , 258 )
		
			
		$bag = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif	
		
		$a = GetPlayerInfo( -1, "item", 63715 )
		
		if $a < 1
			AddPlayerInfo( -1, "item", 63715 , 1 )
		else
			BC( "screen" , "player" , -1 ,  "You already have a Sunlit Badge." )
			return	
			
		endif
		
	}
		
		
		
		
		
		
		
	}