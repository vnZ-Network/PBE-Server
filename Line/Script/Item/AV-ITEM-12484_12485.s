	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/09
	//		Author:???
	//		TaskName:AV-ITEM-12484_12485.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 12484 )
		$item2 = GetPlayerInfo( -1, "item", 12485 )
		
		if $item1 < 5
			BC( "screen", "player", -1, "You need 5 Inferno Spirit." )
			return
		endif
		if $item2 < 1
			BC( "screen", "player", -1, "You need Seal Vallaroca Key." )
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 12484, 5 )
		if $SubItem1 != 0
			return
		endif
		$SubItem2 = SubPlayerInfo( -1, "item", 12485, 1 )
		if $SubItem2 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 12483, 1 )
		return
	}