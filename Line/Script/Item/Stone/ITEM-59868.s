	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/18
	//		Author:???
	//		TaskName:ITEM-59868.s
	//		TaskID:4???????
	//
	//****************************************
	
	function OnUseItem(){
		
		$Item = GetPlayerInfo( -1, "item", 59868 )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "You must have at least 2 free bag spaces." )
			return
		endif
		
		$Sub = SubPlayerInfo( -1, "item", 59868, 1 )
		if $Sub != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 5184, 1 )
		AddPlayerInfo( -1, "item", 59877, 1 )
		
	}