	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-175-lever.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$Item = GetPlayerInfo( -1, "item", 12559 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "You don't have Dark Ice Key." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 12559, 1 )
		if $SubItem != 0
			return
		endif
		
		AddStatus( -1, 10660, 1 )
	}