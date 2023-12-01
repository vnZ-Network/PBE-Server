	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/10/24
	//		Author:???
	//		TaskName:PK-Item-59048.s
	//		TaskID:??
	//****************************************
	
	function OnUseItem(){
		
		$Title = HaveTitle( -1, 68 )
		if $Title == 0
			BC( "screen", "player", -1, "You already have this title." )
			return
		endif
		
		$nfo = SubPlayerInfo ( -1 , "item" , 59048, 1 )
		if $nfo != 0
			return
		endif
		
		AddTitle( -1, 68 )
		
	}

