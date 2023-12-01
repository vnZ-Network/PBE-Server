	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/13
	//		Author:???
	//		TaskName:NPC-67.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
		
		$hour = GetSystemTime( "hour" )
		$minute = GetSystemTime( "minute" )
		$lv = GetPlayerInfo( -1 , "level" )
		
		//------   19?~21?????--------------
		if $hour < 20
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		if $hour == 20
			if $minute < 15
				DisableNpcOption(0)
				DisableNpcOption(1)
			endif
		endif
		if $hour > 20
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif	
		if $lv < 30
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
	}
	
	function OnOption0(){
		
		$Line = GetServerLineID()
		$hour = GetSystemTime( "hour" )
		$minute = GetSystemTime( "minute" )
		if $Line == 1
			BC( "dialogbox", "player", -1, "Event Astral Feast is available only in Dual-line Realms." )
			return
		endif
		if $Line == 3
			BC( "dialogbox", "player", -1, "Event Astral Feast is available only in Dual-line Realms." )
			return
		endif
		if $Line == 5
			BC( "dialogbox", "player", -1, "Event Astral Feast is available only in Dual-line Realms." )
			return
		endif
		if $Line == 7
			BC( "dialogbox", "player", -1, "Event Astral Feast is available only in Dual-line Realms." )
			return
		endif
		//------   19:00~21:00   ????--------------
		if $hour < 20
			BC( "dialogbox", "player", -1, "Astral Feast time is 20:15 - 21:00. Please come back later." )
			return
		endif
		if $hour == 20
			if $minute < 15
				BC( "dialogbox", "player", -1, "Astral Feast time is 20:15 - 21:00. Please come back later." )
				return
			endif
		endif
		if $hour > 20
			BC( "dialogbox", "player", -1, "Astral Feast time is 20:15 - 21:00. Please come back tomorrow." )
			return
		endif	
		
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 30
			return
		endif
		$Time = GetSystemTime( "yday" )
		$Task_Time = GetPlayerVar( -1 , 3730 )
		
		if $Time == $Task_Time
			FlyToMap( -1 , 186 , 63 , 64 )
		else
			$info = IsTaskAccept( -1 , 4425 )
			if $info != 0
				BC( "dialogbox", "player", -1, "You have not acquired the Star Shard quest. Without it, you cannot enter Outer Starway. Please acquire the quest from me." )
				return
			endif
			FlyToMap( -1 , 186 , 63 , 64 )
		endif
		
	}	
	
	function OnOption1(){
		$Line = GetServerLineID()
		$hour = GetSystemTime( "hour" )
		$minute = GetSystemTime( "minute" )
		if $Line == 1
			BC( "dialogbox", "player", -1, "Event Astral Feast is available only in Dual-line Realms." )
			return
		endif
		if $Line == 3
			BC( "dialogbox", "player", -1, "Event Astral Feast is available only in Dual-line Realms." )
			return
		endif
		if $Line == 5
			BC( "dialogbox", "player", -1, "Event Astral Feast is available only in Dual-line Realms." )
			return
		endif
		if $Line == 7
			BC( "dialogbox", "player", -1, "Event Astral Feast is available only in Dual-line Realms." )
			return
		endif
		if $hour < 20
			BC( "dialogbox", "player", -1, "Astral Feast time is 20:15 - 21:00. Please come back later." )
			return
		endif
		if $hour == 20
			if $minute < 15
				BC( "dialogbox", "player", -1, "Astral Feast time is 20:15 - 21:00. Please come back later." )
				return
			endif
		endif
		if $hour > 20
			BC( "dialogbox", "player", -1, "Astral Feast time is 20:15 - 21:00. Please come back tomorrow." )
			return
		endif	
		
		$lv = GetPlayerInfo( -1 , "level" )
		$Time = GetSystemTime( "yday" )
		$Task_Time = GetPlayerVar( -1 , 3730 )
		if $lv < 30
			return
		endif
		$info = IsTaskAccept( -1, 4425 )
		if $info == 0
			BC( "messagebox", "player", -1, "You already have the Outer Starway quest active." )
			return
		endif
		$taskcount = GetTaskCount ( -1 )
		if $taskcount > 20
			BC( "messagebox", "player", -1, "Quest list is full. Please try again after clearing up your quest list." )
			return
		endif
		
		if $Time != $Task_Time
			$AcceptTask = AcceptTask( -1 , 4425 )
			if $AcceptTask != 0
				return
			endif
			SetPlayerActLog(-1,15,0)
			$cons = GetPlayerInfo( -1 , "constellation" )
			if $cons == 0
				AddStatus( -1 , 10683 , 1 )
			endif
			if $cons == 1
				AddStatus( -1 , 10684 , 1 )
			endif
			if $cons == 2
				AddStatus( -1 , 10685 , 1 )
			endif
			if $cons == 3
				AddStatus( -1 , 10686 , 1 )
			endif
			if $cons == 4
				AddStatus( -1 , 10687 , 1 )
			endif
			if $cons == 5
				AddStatus( -1 , 10688 , 1 )
			endif
			if $cons == 6
				AddStatus( -1 , 10689 , 1 )
			endif
			if $cons == 7
				AddStatus( -1 , 10690 , 1 )
			endif
			if $cons == 8
				AddStatus( -1 , 10691 , 1 )
			endif
			if $cons == 9
				AddStatus( -1 , 10692 , 1 )
			endif
			if $cons == 10
				AddStatus( -1 , 10693 , 1 )
			endif
			if $cons == 11
				AddStatus( -1 , 10694 , 1 )
			endif
			//????-START
			$team_count = GetTeamMemberCount(-1)
			$TJ_join_number = GetGlobalVar(950)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(950 , $TJ_join_number)
		//????-END
			SetPlayerVar(-1 , 3730 , $Time )
			BC( "dialogbox", "player", -1, "You have acquired the Star Shard quest. It is recommended that you form a party before entering Outer Starway.\nGather 80 Star Shards and offer them to Arnyth. Star Shards are shared amongst party members. The first few to turn in this quest will be greatly rewarded." )
		else
			BC( "dialogbox", "player", -1, "You have already acquired the Star Shard quest for today. You may participate again tomorrow." )
		endif
		
	}