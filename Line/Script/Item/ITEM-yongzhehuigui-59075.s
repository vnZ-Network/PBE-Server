	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/27
	//		Author:??
	//		TaskName:ITEM-yongzhehuigui-59075.s
	//		TaskID:?????????????
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
		
		$count = GetPlayerInfo( -1, "item", 59075 )
			if $count < 4
				BC( "screen", "player", -1, "You don't have 4 Return of the Warriors Gems." )
			return
		endif
		
		//??????
		$revalue = SubPlayerInfo( -1, "item", 59075, 4)
		
		//??????
		if $revalue == 0
			AddPlayerInfo( -1, "item", 59097, 1 )
		endif
}

				