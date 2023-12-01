	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/29
	//		Author:??
	//		TaskName:ITEM-jierenwu64604.s
	//		TaskID:?????-???-?????
	//
	//****************************************
	
	
	
function OnUseItem(){
		
		
		
		
		
		$today_time = GetSystemTime( "yday" )
		//??????????
		$use_number = GetPlayerVar( -1 , 3624 )
		//????????????
		$use_time = GetPlayerVar( -1 , 3623 )
		
		//????????????????,?????
		if $use_time == $today_time
			if $use_number >= 100
				BC( "screen", "player", -1, "You have already taken 100 crusade quests today. You cannot have anymore now." )
				return
			endif
		endif

		
		//------------------
		
		$level = GetPlayerInfo( -1, "level" )
		//???????
		if $level < 22
			BC( "screen", "player", -1, "Level too low to acquire this quest." )
			return
		endif
		
		if $level > 36
			BC( "screen", "player", -1, "Level too high to acquire this quest." )
			return
		endif
		
		$task_count = GetTaskCount (-1)
		if $task_count >= 20
			BC( "screen", "player", -1, "Quest list is full. Cannot acquire new quests." )
			return
		endif
		
		$result = IsTaskAccept( -1, 2404 )
		if $result == 0
			BC( "screen", "player", -1, "You have acquired that quest already." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64604, 1 )
		if $result == 0
			AcceptTask ( -1, 2404 )
				//???????????
			if $use_time == $today_time
				$number = GetPlayerVar( -1, 3624 )
				$number = $number + 1
				SetPlayerVar( -1, 3624, $number )
			else
				SetPlayerVar( -1, 3623, $today_time )
				$number = 1
SetPlayerVar( -1, 3624, $number )

			endif
			BC( "messagebox", "player", -1, "You have used ",$number," Crusade Orders. You have acquired the quest Crusade Order - Spartan Warrior" )
		endif
	}