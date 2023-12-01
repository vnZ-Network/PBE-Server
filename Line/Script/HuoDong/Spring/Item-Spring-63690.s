	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/01
	//		Author:???
	//		TaskName:ITEM-huanwupin63690.s
	//		TaskID:?????????????
	//
	//****************************************
	
	function OnUseItem(){
	
		//????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		
		//??????
		$result = SubPlayerInfo( -1 , "item" , 63690 , 1 )
		if $result == 0
				
			AddPlayerInfo( -1, "item", 63685, 2 )
			AddPlayerInfo( -1, "item", 63689, 5 )
		endif
		
		
		
	}