	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/21
	//		Author:???
	//		TaskName:Item-kill-50038.s
	//		TaskID:?????-?????
	//
	//****************************************
	
	
	
function OnUseItem(){
		$Levelmin = 90
		$Levelmax = 200
		$QuestId = 2514
		$ItemId1 = 50038
		#MonsterName = " Burning Eyes."
				
		$today_time = GetSystemTime( "yday" )
		//??????????
		$use_number = GetPlayerVar( -1, 3644 )
		//????????????
		$use_time = GetPlayerVar( -1, 3645 )
		
		//????????????????,?????
		if $use_time == $today_time
			if $use_number >= 20
				BC( "screen", "player", -1, "You have already taken 20 Wanted quests. You cannot have more today." )
				return
			endif
		endif
		
		//------------------
		
		$level = GetPlayerInfo( -1, "level" )
		//???????
		if $level < $Levelmin
			BC( "screen", "player", -1, "Level too low to acquire this quest." )
			return
		endif
		
		if $level > $Levelmax
			BC( "screen", "player", -1, "Level too high to acquire this quest." )
			return
		endif
		
		$task_count = GetTaskCount ( -1 )
		if $task_count >= 20
			BC( "screen", "player", -1, "Quest list is full. Cannot acquire new quests." )
			return
		endif
		
		$result = IsTaskAccept( -1, $QuestId )
		if $result == 0
			BC( "screen", "player", -1, "You have acquired that quest already." )
			return	
		endif
		
		$result = SubPlayerInfo( -1, "item", $ItemId1, 1 )
		if $result == 0
			AcceptTask ( -1, $QuestId )
				//???????????
			if $use_time == $today_time
				$number = GetPlayerVar( -1, 3644 )
				$number = $number + 1
				SetPlayerVar( -1, 3644, $number )
			else
				SetPlayerVar( -1, 3645, $today_time )
				$number = 1
				SetPlayerVar( -1, 3644, $number )
			endif
			BC( "messagebox", "player", -1, "You have accepted ",$number," Wanted quests so far, today.\nComplete this one by killing ",#MonsterName,"" )
		endif
	}	