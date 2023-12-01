	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/06/22
	//		Author:???
	//		TaskName:Save-Item-63760.s
	//		TaskID:?????
	//
	//****************************************
	
	
	
function OnUseItem(){
		
		$today_time = GetSystemTime( "yday" )
		//??????????
		$use_time = GetPlayerVar( -1, 4064 )
		
		//????????????????,?????
		if $use_time == $today_time
			BC( "screen", "player", -1, "Sorry! Trill of the Harp can only be obtained once a day." )
			return
		endif
		
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
		
		$result = IsTaskAccept( -1, 1629 )
		if $result == 0
			BC( "screen", "player", -1, "You have acquired that quest already." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63760, 1 )
		if $result == 0
			AcceptTask ( -1, 1629 )
			SetPlayerVar( -1, 4064, $today_time )
			BC( "messagebox", "player", -1, "You've received the Trill of the Harp quest." )
		endif
		
	}