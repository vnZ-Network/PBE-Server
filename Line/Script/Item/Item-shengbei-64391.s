	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/30
	//		Author:???
	//		TaskName:Item-shengbei-64391.s
	//		TaskID:?????(5?)
	//
	//****************************************
	
	
	
function OnUseItem(){
	
		$Item = GetPlayerInfo( -1, "item", 64391 )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$SubPlayer = SubPlayerInfo( -1, "item", 64391, 1 )
		if $SubPlayer != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64390, 5 )
		
	}	