	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/11
	//		Author:???
	//		TaskName:ITEM-onetime-59361.s
	//		TaskID:????????????
	//
	//****************************************
	
	function OnUseItem(){
	
	
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "You do not have enough slots in your Bag." )
			return
		endif
		
		if $bag_count2 < 1
			BC( "screen", "player", -1, "You do not have enough slots in your Bag." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 59361, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 9 , 60 )
		AddPlayerInfo( -1 , "item" , 2221 , 10 )
		AddPlayerInfo( -1 , "item" , 2337 , 1 )
		
	}
		