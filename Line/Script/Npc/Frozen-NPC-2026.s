	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/20
	//		Author:???
	//		TaskName:Frozen-NPC-2026.s
	//		TaskID: ??????
	//
	//****************************************
	
	function OnRequest(){
	
		$guildrank = GetPlayerInfo( -1 , "guildrank" )
		if $guildrank != 0
			DisableNpcOption(1)
		endif
		$line = GetServerLineID()
		if $line != 4
			DisableNpcOption(2)
			DisableNpcOption(1)
			DisableNpcOption(0)
		endif
		
	}
	
	function OnOption0(){
		
		$line = GetServerLineID()
		if $line != 4
			return
		endif
		$ectype_id = GetEctypeID( -1 , 25 )
		
		$Fort = FrozenFortAccess ( -1 )
		if $Fort != 0
			BC( "dialogbox", "player", -1, "Only the occupiers of Glacier City have clearance to enter Fort Glacier!" )
			return
		endif
		if $ectype_id < 0
			BC( "dialogbox", "player", -1, "Fort Glacier has not been unlocked yet. Please wait until your Guild Leader uses their Fort Glacier Key." )
			return
		endif
		
		$info = IsTaskAccept( -1 , 3528 )
		if $info != 0
			BC( "dialogbox", "player", -1, "You don't have the Fort Glacier quest. You cannot enter Fort Glacier without it. Please acquire the quest from me first." )
			return
		endif
		
		$succeed = FlyToEctype( -1 , 25 , 53 , 45 )
		if $succeed > 0
			SetPlayerVar( -1 , 3736 , $yday )
			BC( "screen" , "player" , -1 , "You have entered Fort Glacier." )
		else
			BC( "dialogbox", "player", -1, "An error occurred when entering Fort Glacier instance. Error Code: ", $succeed )
			return
		endif
		
		
	}
	
	function OnOption1(){
		
		$line = GetServerLineID()
		if $line != 4
			return
		endif
		
		$guildrank = GetPlayerInfo( -1 , "guildrank" )
		if $guildrank != 0
			BC( "dialogbox", "player", -1, "You are not the guild leader." )
			return
		endif
		
		$guildid = GetPlayerInfo ( -1 , "guildid" )
		$yday = GetSystemTime( "yday" )
		$Fort = FrozenFortAccess ( -1 )
		if $Fort != 0
			BC( "dialogbox", "player", -1, "Only the occupiers of Glacier City have clearance to enter Fort Glacier!" )
			return
		endif
		$key = GetPlayerInfo ( -1 , "item" , 63474 )
		if $key < 1
			BC( "dialogbox", "player", -1, "Fort Glacier Key is required." )
			return
		endif
		$ectype_id = GetEctypeID( -1 , 25 )
		if $ectype_id > 0
			BC( "dialogbox", "player", -1, "Fort Glacier is already unlocked!" )
			return
		endif
		$nowtime = GetGuildVar( $guildid , 5 )
		if $nowtime != $yday
			$info = IsTaskAccept( -1 , 4600 )
			if $info != 0
				BC( "dialogbox", "player", -1, "You haven't taken the Restraining Behemoth quest. You cannot enter Fort Glacier without it." )
				return
			endif
			$info = IsTaskAccept( -1 , 3528 )
			if $info != 0
				BC( "dialogbox", "player", -1, "You don't have the Fort Glacier quest. You cannot unlock Fort Glacier without it. Please acquire the quest from me first." )
				return
			endif
			$succeed = FlyToEctype( -1 , 25 , 53 , 45 )
			if $succeed > 0
				$ectype_id = GetEctypeID( -1 , 25 )
				SetGuildVar( $guildid , 5 , $yday )
				StartEctypeTimer( -1 , 25 , 1 )
				BC( "chat" , "player" , -1 , "You have entered Fort Glacier. It will lock again in 8 hours." )
			else
				BC( "dialogbox", "player", -1, "An instance is still in progress. Please initiate the instance later."  )
				return
			endif
		else
			BC( "dialogbox" , "player" , -1 , "You have already unlocked Fort Glacier today." )
		endif
		
		
	}
	
	function OnOption2(){
		
		$lv = GetPlayerInfo( -1 , "level" )
		$Time = GetSystemTime( "yday" )
		$Task_Time = GetPlayerVar( -1 , 3728 )
		$info1 = IsTaskAccept( -1, 4600 )
		$info2 = IsTaskAccept( -1, 3528 )
		if $info1 == 0
			if $info2 == 0
				BC( "dialogbox", "player", -1, "You have acquired the Fort Glacier and Restraining Behemoth quests. You may now enter Fort Glacier." )
				return
			else
				BC( "dialogbox", "player", -1, "Your Restraining Behemoth and Fort Glacier quests are no longer intact. Abandon the Restraining Behemoth quest and try again." )
				return
			endif
		else
			if $info2 == 0
				BC( "dialogbox", "player", -1, "You can return to Fort Glacier instance with the quest Fort Glacier." )
				return
			else
				$taskcount = GetTaskCount( -1 )
				if $taskcount > 19
					BC( "messagebox", "player", -1, "Quest list is full. Please try again after clearing up your quest list." )
					return
				endif
				if $Time != $Task_Time
					AcceptTask( -1 , 4600 )
					AcceptTask( -1 , 3528 )
					SetPlayerVar( -1 , 3728 , $Time )
				else
					BC( "dialogbox", "player", -1, "You have already accepted the Restraining Behemoth and Fort Glacier quests today." )
				endif
			endif
		endif
		
	}
	