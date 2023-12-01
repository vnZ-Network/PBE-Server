	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/28
	//		Author:???
	//		TaskName:ITEM-44278.s
	//		TaskID:
	//
	//****************************************
	
	function OnUseItem(){
	
	  $field = GetFieldLevel( -1 )
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????
		if $field < 1
		  BC( "screen", "player", -1, "You need to be at least Exalted LV1 to use that." )
		  return
		endif
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//??
		$del_count = SubPlayerInfo( -1, "item", 44278, 1 )
		//??????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 44279, 1 )
		
	}
