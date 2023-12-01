	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/09/24
	//		Author:???
	//		TaskName:Item-59675.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		
		$Item = GetPlayerInfo( -1, "item", 59675 )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 10
			BC( "screen", "player", -1, "Insufficient empty slots in your bag." )
			return
		endif
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		if $bag_count1 < 2
		  BC( "screen", "player", -1, "You do not have enough space in your Materials bag!" )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 59675, 1 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64386 , 4 )
		AddPlayerInfo( -1, "item", 9 , 200 )
		AddPlayerInfo( -1, "item", 63771 , 1 )
		AddPlayerInfo( -1, "item", 59840 , 3 )
		AddPlayerInfo( -1, "item", 5631 , 2 )
		AddPlayerInfo( -1, "item", 2221 , 50 )
		AddPlayerInfo( -1, "item", 59557 , 20 )
		AddPlayerInfo( -1, "item", 4950 , 50 )
		
	}