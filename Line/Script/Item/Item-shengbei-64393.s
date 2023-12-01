	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/30
	//		Author:???
	//		TaskName:Item-shengbei-64393.s
	//		TaskID:?????(12?)
	//
	//****************************************
	
	
	
function OnUseItem(){
	
		$Item = GetPlayerInfo( -1, "item", 64393 )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$SubPlayer = SubPlayerInfo( -1, "item", 64393, 1 )
		if $SubPlayer != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64390, 12 )
		
	}	