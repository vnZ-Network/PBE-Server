	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/10/24
	//		Author:???
	//		TaskName:PK-Item-59047.s
	//		TaskID:??
	//****************************************
	
	function OnUseItem(){
		
		$Title = HaveTitle( -1, 67 )
		if $Title == 0
			BC( "screen", "player", -1, "You already have this title." )
			return
		endif
		
		$nfo = SubPlayerInfo ( -1 , "item" , 59047, 1 )
		if $nfo != 0
			return
		endif
		
		AddTitle( -1, 67 )
		
	}

