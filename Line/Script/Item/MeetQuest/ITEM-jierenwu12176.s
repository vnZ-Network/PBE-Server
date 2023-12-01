	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/09
	//		Author:??
	//		TaskName:ITEM-jierenwu12176.s
	//		TaskID:?????-??????
	//
	//****************************************
	
	
	
	function OnUseItem(){
		
		$level = GetPlayerInfo( -1, "level" )
		//???????
		if $level < 44
			BC( "screen", "player", -1, "Your level is not qualified for this quest." )
			return
		endif
		
		$task_count = GetTaskCount (-1)
		if $task_count >= 20
			BC( "screen", "player", -1, "Quest list is full. Cannot acquire new quests." )
			return
		endif
		
		$result = IsTaskAccept( -1, 1016 )
		if $result == 0
			BC( "screen", "player", -1, "You have that quest already." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 12176, 1 )
		if $result == 0
			AcceptTask ( -1, 1016 )
			BC( "messagebox", "player", -1, "You have already taken the quest Naga King Legend" )
		endif

	}