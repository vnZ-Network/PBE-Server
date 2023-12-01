	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/09/22
	//		Author:???
	//		TaskName:ITEM-59144.s
	//		TaskID:59144
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
    
		$del_count = SubPlayerInfo( -1, "item", 59144, 1 )
		//??????????
		
		if $del_count != 0
			return
		endif
	
		AddPlayerInfo( -1, "item", 59193, 1 )
					
	}
