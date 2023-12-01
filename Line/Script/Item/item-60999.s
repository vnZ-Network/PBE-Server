	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-9-4
	//		Author:??
	//		TaskName:60999.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		$Sub = SubPlayerInfo( -1, "item", 60999, 1 )
		if $Sub != 0
			return
		endif
		AddPlayerInfo( -1, "item", 60712, 1 )

	}