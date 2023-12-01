	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2184.s
	//		TaskID:????
	//
	//****************************************
	
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$count = GetPlayerVar( -1 , 3979 )
		
		$bag = GetPlayerInfo( -1, "nullitem", 0 )
		
		if $bag < 3
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif	
		
		if $count == 0	
			AddPlayerInfo( -1, "item", 6631 , 1 )
			AddPlayerInfo( -1, "item", 6632 , 1 )
			AddPlayerInfo( -1, "item", 63717 , 1 )
			SetPlayerVar( -1 , 3979 , 1 )
		else
			BC( "screen", "player", -1, "I have already given you all I can!" )
		endif
		
	}