	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/10
	//		Author:??
	//		TaskName:ITEM-huanwupin59047.s
	//		TaskID:?????????????????????????
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
		//????????????
		$fushi = GetPlayerInfo( -1, "item", 59074 )	
		if $fushi > 0
			SubPlayerInfo( -1, "item", 59074, -1)
			AddPlayerInfo( -1, "item", 36508, 1 )
		endif
}			