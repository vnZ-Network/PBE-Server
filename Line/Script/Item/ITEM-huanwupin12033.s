	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/12/28
	//		Author:??
	//		TaskName:ITEM-huanwupin12033.s
	//		TaskID:????,????????
	//
	//****************************************
	
	
	
	function OnUseItem(){

		$count = GetPlayerInfo( -1, "item", 12033 )
		if $count < 5
			BC( "screen", "player", -1, "You need at least 5 Malt Candies!" )
			return
		endif

		$revalue = SubPlayerInfo( -1, "item", 12033, 5)
		if $revalue == 0					
			AddPlayerInfo( -1, "item", 64301, 1 )
		endif
								
	}