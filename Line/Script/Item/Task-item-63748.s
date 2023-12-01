	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/05/14
	//		Author:???
	//		TaskName:Task-item-63748.s
	//		TaskID:????-??
	//
	//****************************************
	
	
	
function OnUseItem(){
		
		$today_time = GetSystemTime( "yday" )
		//??????????
		$use_number = GetPlayerVar( -1, 3277 )
		//????????????
		$use_time = GetPlayerVar( -1, 3975 )
		
		//????????????????,?????
		if $use_time == $today_time
			if $use_number >= 100
				BC( "screen", "player", -1, "Sorry! The Bounty Quest - Boneyard can only be taken 100 times a day." )
				return
			endif
		endif

		//------------------
		
		$level = GetPlayerInfo( -1, "level" )
		//???????
		if $level < 30
			BC( "screen", "player", -1, "Sorry! Come back after reaching at least LV30." )
			return
		endif
		
		$task_count = GetTaskCount (-1)
		if $task_count >= 20
			BC( "screen", "player", -1, "Sorry! Your Quest Log is full. Try again after clearing up some space." )
			return
		endif
		
		$result = IsTaskAccept( -1, 2546 )
		if $result == 0
			BC( "screen", "player", -1, "You've already acquired that quest!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63748, 1 )
		if $result == 0
			AcceptTask ( -1, 2546 )
				//???????????
			if $use_time == $today_time
				$number = GetPlayerVar( -1, 3277 )
				$number = $number + 1
				SetPlayerVar( -1, 3277, $number )
			else
				SetPlayerVar( -1, 3975, $today_time )
				$number = 1
				SetPlayerVar( -1, 3277, $number )
			endif
			BC( "messagebox", "player", -1, "You have completed the Bounty Quest - Boneyard ",$number," times." )
		endif
		
	}