	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/08
	//		Author:???
	//		TaskName:Item-64293.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		$Status = IsExistStatus( -1, 10526 )
		if $Status == 0
			BC( "screen", "player", -1, "You already have your portable stash." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 64293, 1 )
		if $SubItem != 0
			return
		endif
		
		AddStatus( -1, 10526, 1 )
	}