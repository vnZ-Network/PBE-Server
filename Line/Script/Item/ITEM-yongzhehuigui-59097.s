	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/27
	//		Author:??
	//		TaskName:ITEM-yongzhehuigui-59097.s
	//		TaskID:?????
	//
	//****************************************

	function OnUseItem(){
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59097, 1 )
		if $result == 0
			AddPlayerInfo( -1, "item", 12720, 30 )
		endif
}			