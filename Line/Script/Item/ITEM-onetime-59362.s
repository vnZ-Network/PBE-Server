	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/11
	//		Author:???
	//		TaskName:ITEM-onetime-59362.s
	//		TaskID:????????????
	//
	//****************************************
	
	function OnUseItem(){
	
	
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "screen", "player", -1, "You do not have enough slots in your Bag." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 59362, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 59839 , 8 )
		AddPlayerInfo( -1 , "item" , 2211 , 8 )
		AddPlayerInfo( -1 , "item" , 2263 , 4 )
		
	}
		