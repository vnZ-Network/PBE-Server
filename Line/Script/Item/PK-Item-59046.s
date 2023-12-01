	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/10/24
	//		Author:???
	//		TaskName:PK-Item-59046.s
	//		TaskID:??
	//****************************************
	
	function OnUseItem(){
		
		$Title = HaveTitle( -1, 66 )
		if $Title == 0
			BC( "screen", "player", -1, "You already have this title." )
			return
		endif
		
		$nfo = SubPlayerInfo ( -1 , "item" , 59046, 1 )
		if $nfo != 0
			return
		endif
		
		AddTitle( -1, 66 )
		
	}

