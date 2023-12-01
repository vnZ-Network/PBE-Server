	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/18
	//		Author:??
	//		TaskName:HD-yunshidekuijia-NPC.s
	//		TaskID:?????NPC??
	//
	//****************************************
	//3621 ?????????
	//3622 ??????????
	//??????
	//2012-3-13??:?????
	function OnRequest(){
	//???????,?????????
	
		$today_time = GetSystemTime( "yday" )
		$time_hour = GetSystemTime( "hour" )
		$time_minute = GetSystemTime( "minute" )
		//?????
		//$temp_a = $time_hour % 2
		
		DisableNpcOption(0)
		
		if $time_hour != 2
			if $time_hour != 9
				if $time_hour != 15
					if $time_hour != 21
						DisableNpcOption(0)
						return
					else
						if $time_minute < 30
							DisableNpcOption(0)
							return
						endif
					endif
				endif
			endif
		endif
		
		

		$player_days =  GetPlayerVar( -1, 3621 )
		$player_time =  GetPlayerVar( -1, 3622 )
		
		if $player_days == $today_time
			if $player_time == $time_hour
			//	BC( "chat", "player", -1, "GUID:05180000000" )
				DisableNpcOption(0)
				return
			endif
		endif
		
		$level = GetPlayerInfo (-1 , "level")
		if $level < 30
			DisableNpcOption(0)
			return
		endif

	}
	//?????
	function OnOption0(){
		
		$time_hour = GetSystemTime( "hour" )
		$time_minute = GetSystemTime( "minute" )
		$today_time = GetSystemTime( "yday" )
		//????????


		$player_days =  GetPlayerVar( -1, 3621 )
		$player_time =  GetPlayerVar( -1, 3622 )
		
		if $player_days == $today_time
			if $player_time == $time_hour
				BC( "dialogbox", "player", -1, "You had finished the event,please come next time." )
				return
			endif
		endif
		//???????????
		CancelTask (-1, 4389 )
		CancelTask (-1, 4390 )
		CancelTask (-1, 4391 )
		CancelTask (-1, 4392 )
		CancelTask (-1, 4393 )
		CancelTask (-1, 4394 )
		CancelTask (-1, 4395 )
		//
		$level = GetPlayerInfo (-1 , "level")
		if $level < 30
			BC( "chat", "player", -1, "Level below 30, no quest for you.")
			return
		endif
		
		if $level >= 30 
			if $level <= 35
				$quest_id = 4389
			endif
		endif		
				
		if $level >= 36
			if $level <= 50
				$quest_id = 4390
			endif
		endif
		
		if $level >= 51 
			if $level <= 65
				$quest_id = 4391
			endif
		endif
		
		
		if $level >= 66 
			if $level <= 80
				$quest_id = 4392
			endif
		endif
		
		
		if $level >= 81 
			if $level <= 95
				$quest_id = 4393
			endif
		endif
		
		if $level >= 96 
			BC( "chat", "player", -1, "Level above 96, no quest for you.")
			return
		endif
		
		$revalue = AcceptTask(-1 , $quest_id)
		if $revalue == 0
			SetPlayerVar( -1, 3621, $today_time )
			SetPlayerVar( -1, 3622, $time_hour )
	   		//????-START
			$TJ_join_number = GetGlobalVar(938)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(938 , $TJ_join_number)
			//????-END         			
		endif
	}