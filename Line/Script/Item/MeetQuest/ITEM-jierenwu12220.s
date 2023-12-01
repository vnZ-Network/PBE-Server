	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/27
	//		Author:??
	//		TaskName:ITEM-jierenwu12220.s
	//		TaskID:?????-????????
	//
	//****************************************
	
	
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		if $level < 37
			BC( "screen", "player", -1, "Your level is not qualified! " )
			return
		endif
		
		$result = IsTaskAccept( -1, 1078 )
		if $result == 0
			BC( "screen", "player", -1, "You have already acquired this quest. " )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 12220, 1 )
		if $result == 0
			AcceptTask ( -1, 1078 )
			BC( "messagebox", "player", -1, "You have already taken the quest Calypso's Last Words" )
		endif
		
	}