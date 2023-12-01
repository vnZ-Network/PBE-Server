	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/25
	//		Author:??
	//		TaskName:ITEM-63739.s
	//		TaskID:?????(??????)
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 5
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
	
		$del_count = SubPlayerInfo( -1, "item", 63739, 1 )
		//????????
		
		if $del_count == 0			
			AddPlayerInfo( -1, "item", 6653, 1 )
			AddPlayerInfo( -1, "item", 6654, 1 )
			AddPlayerInfo( -1, "item", 6655, 1 )
			AddPlayerInfo( -1, "item", 6656, 1 )
			AddPlayerInfo( -1, "item", 6657, 1 )			
		endif
		
	}
