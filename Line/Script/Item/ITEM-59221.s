	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/10
	//		Author:??
	//		TaskName:ITEM-huanwupin59221.s
	//		TaskID:???????????????
	//
	//****************************************

	function OnUseItem(){
	
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
				
		//??????
		$revalue = SubPlayerInfo( -1, "item", 59221, 1)

		//??????
		if $revalue == 0 
			AddPlayerInfo( -1, "item", 36507, 1 )
		endif
	}