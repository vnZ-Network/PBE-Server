	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/21
	//		Author:???
	//		TaskName:Item-HD-64384.s
	//		TaskID:?????
	//
	//****************************************
	
	
	
function OnUseItem(){
		$level = GetPlayerInfo( -1, "level" )
		if $level < 70
			BC( "screen", "player", -1, "You are not LV70 yet." )
			return
		endif
		
		$Title = HaveTitle( -1, 21 )
		if $Title != 0
			BC( "screen", "player", -1, "You don't have the 'Demi-god' title yet." )
			return
		endif
		
		$Sub = SubPlayerInfo( -1, "item", 64384, 1 )
		if $Sub != 0
			return
		endif
		
		AcceptTask ( -1, 4465 )
		
	}	