	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/09
	//		Author:???
	//		TaskName:AV-ITEM-12429.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 12429 )
		
		if $item1 < 5
			BC( "screen", "player", -1, "You need 5 Beast Emblem Shard." )
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 12429, 5 )
		if $SubItem1 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 12426, 1 )
		return
	}