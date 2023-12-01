	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/30
	//		Author:??
	//		TaskName:ITEM-jierenwu64504.s
	//		TaskID:?????-??????
	//
	//****************************************
	
	
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 25
			BC( "screen", "player", -1, "You cannot acquire that quest until LV25. " )
			return
		endif
			
		$task_count = GetTaskCount (-1)
		if $task_count >= 20
			BC( "screen", "player", -1, "Quest list is full. Cannot acquire new quests." )
			return
		endif
		
		$result = IsTaskAccept( -1, 881 )
		if $result == 0
			BC( "screen", "player", -1, "You have that quest already." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64504, 1 )
		if $result == 0
			AcceptTask ( -1, 881 )
			BC( "messagebox", "player", -1, "You have already taken the quest Shield Forge Scroll" )
		endif

	}