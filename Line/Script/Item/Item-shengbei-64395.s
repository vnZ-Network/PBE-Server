	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/30
	//		Author:???
	//		TaskName:Item-shengbei-64395.s
	//		TaskID:?????(27?)
	//
	//****************************************
	
	
	
function OnUseItem(){
	
		$Item = GetPlayerInfo( -1, "item", 64395 )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$SubPlayer = SubPlayerInfo( -1, "item", 64395, 1 )
		if $SubPlayer != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64390, 27 )
		
	}	