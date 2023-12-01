	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/12/28
	//		Author:??
	//		TaskName:ITEM-huanwupin12030.s
	//		TaskID:??????,????????
	//
	//****************************************
	
	
	
	function OnUseItem(){

		$count = GetPlayerInfo( -1, "item", 12030 )
		if $count < 1
			return
		endif
		
		$count = GetPlayerInfo( -1, "item", 12032 )
		if $count == 0
			BC( "screen", "player", -1, "You don't have Malt Candy!" )
			return
		endif
		
		$count = GetPlayerInfo( -1, "item", 17397 )
		if $count == 0
			BC( "screen", "player", -1, "You don't have Grapes!" )
			return
		endif

		SubPlayerInfo( -1, "item", 12030, 1)
		SubPlayerInfo( -1, "item", 12032, 1)
		SubPlayerInfo( -1, "item", 17397, 1)					
		AddPlayerInfo( -1, "item", 64301, 1 )
								
	}