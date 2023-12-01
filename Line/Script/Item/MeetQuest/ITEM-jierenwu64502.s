	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/15
	//		Author:??
	//		TaskName:ITEM-jierenwu64502.s
	//		TaskID:?????-????-???
	//
	//****************************************
	
	
	
	function OnUseItem(){
		
		$level = GetPlayerInfo( -1, "level" )
		//???????
		if $level < 13
			BC( "screen", "player", -1, "Your level is not qualified for this quest." )
			return
		endif
		
		$result = IsTaskDone( -1, 833 )
		if $result == 0
			BC( "screen", "player", -1, "You have already finished that quest. " )
			return 
		endif
		
		$task_count = GetTaskCount (-1)
		if $task_count >= 20
			BC( "screen", "player", -1, "Quest list is full. Cannot acquire new quests." )
			return
		endif
		
		$result = IsTaskAccept( -1, 833 )
		if $result == 0
			BC( "screen", "player", -1, "You have that quest already." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64502, 1 )
		if $result == 0
			AcceptTask ( -1, 833 )
			BC( "messagebox", "player", -1, "You have now activated the True Colors quest." )
		endif

	}