	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/05/14
	//		Author:???
	//		TaskName:ITEM-59305.s
	//		TaskID: ????
	//
	//****************************************

	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 59305, 1 )
		//??????????
		
		if $del_count == 0
			AddPlayerInfo( -1, "item", 4667 , 200 )
		endif
			

		
	}
