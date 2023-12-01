	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/12/9
	//		Author:???
	//		TaskName:ITEM-44151.s
	//		TaskID:???????
	//
	//****************************************
	
	function OnUseItem(){
	
	
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 5
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		if $bag_count2 < 1
			BC( "screen", "player", -1, "You do not have enough bag space." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 44151, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 5 , 6 )
		AddPlayerInfo( -1 , "item" , 63675 , 1 )
		AddPlayerInfo( -1 , "item" , 64401 , 1 )
		AddPlayerInfo( -1 , "item" , 6672 , 1 )
		AddPlayerInfo( -1 , "item" , 6674 , 1 )
		AddPlayerInfo( -1 , "item" , 44152 , 1 )
		
		
	}
		