	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/15
	//		Author:???
	//		TaskName:god-task-item-64800.s
	//		TaskID:???64800
	//
	//****************************************
	
	
	
function OnUseItem(){
		
		$today_time = GetSystemTime( "yday" )
		//??????????
		$use_number = GetPlayerVar( -1, 3265 )
		//????????????
		$use_time = GetPlayerVar( -1, 3959 )
		
		//????????????????,?????
		if $use_time == $today_time
			if $use_number >= 15
				BC( "screen", "player", -1, "Sorry! You can only take 15 Campaign Order quests a day." )
				return
			endif
		endif
		
		$Title = HaveTitle( -1, 21 )
		if $Title != 0
		   BC( "screen", "player", -1, "Sorry! You can't take a Campaign Order quest unless you have the Demigod or higher title." )
			 return
		endif
		
		$godvalue = GetGodValue( -1 )
		$godvaluemax = GetGodValueMax( -1 )
		if $godvalue == $godvaluemax
			BC( "screen", "player", -1, "Sorry! Your Deity is at its maximum. You are unable to take a Campaign Order quest. Please, try again after improving your rank as a god." )
			return
		endif
		//------------------
		
		$level = GetPlayerInfo( -1, "level" )
		//???????
		if $level < 95
			BC( "screen", "player", -1, "Sorry! Come back after reaching LV95." )
			return
		endif
		
		$task_count = GetTaskCount (-1)
		if $task_count >= 20
			BC( "screen", "player", -1, "Sorry! Your Quest Log is full. Try again after clearing up some space." )
			return
		endif
		
		$result = IsTaskAccept( -1, 2538 )
		if $result == 0
			BC( "screen", "player", -1, "You have acquired that quest already." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64800, 1 )
		if $result == 0
			AcceptTask ( -1, 2538 )
				//???????????
			if $use_time == $today_time
				$number = GetPlayerVar( -1, 3265 )
				$number = $number + 1
				SetPlayerVar( -1, 3265, $number )
			else
				SetPlayerVar( -1, 3959, $today_time )
				$number = 1
				SetPlayerVar( -1, 3265, $number )
			endif
			BC( "messagebox", "player", -1, "You have used ",$number," Campaign Orders. You've received the Campaign Order-Bleat Slayer quest." )
		endif
		
		//??-START
		$TJ_join_number = GetGlobalVar(977)
		$TJ_join_number = $TJ_join_number + $team_count
		SetGlobalVar( 977, $TJ_join_number )
		//??-END
	}