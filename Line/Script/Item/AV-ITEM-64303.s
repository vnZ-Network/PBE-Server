	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/09
	//		Author:???
	//		TaskName:AV-ITEM-64303.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 64303 )
		if $item1 < 1
			return
		endif
		
		$map = GetPlayerInfo( -1, "mapid" )
		if $map != 188
			BC( "screen", "player", -1, "It must be used only in Cave of Haze." )
			return
		endif
		
		
		$SubItem1 = SubPlayerInfo( -1, "item", 64303, 1 )
		if $SubItem1 != 0
			return
		endif
		
		$Random = RandomNumber( 1, 2 )
		if $Random == 1
			AddStatus( -1, 10569, 1 )
			return
		else
			AddStatus( -1, 10570, 1 )
			return
		endif
		
	}