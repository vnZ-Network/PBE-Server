	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/09
	//		Author:???
	//		TaskName:AV-ITEM-64304.s
	//		TaskID:???
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 64304 )
		if $item1 < 1
			return
		endif
		
		$map = GetPlayerInfo( -1, "mapid" )
		if $map != 188
			BC( "screen", "player", -1, "It must be used only in Cave of Haze." )
			return
		endif
		
		
		$SubItem1 = SubPlayerInfo( -1, "item", 64304, 1 )
		if $SubItem1 != 0
			return
		endif
		
		FlyToMap( -1, 188, 50, 74 )
		
	}