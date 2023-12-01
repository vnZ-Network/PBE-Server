	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/19
	//		Author:???
	//		TaskName:Ectype-WorldTree-Npc-468.s
	//		TaskID:??????-?????
	//
	//****************************************

	// 3331 ????????
	// 3860 ????
	function OnRequest(){



		$ectype_ID = GetEctypeID( -1, 250 )
		if $ectype_ID > 0
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif
		$Line = GetServerLineID()
		if $Line != 5
			if $Line != 6
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
				//DisableNpcOption(3)
			endif
		endif
		$a1 = GetPlayerInfo(-1,"item",12769)
		$a2 = GetPlayerInfo(-1,"item",12770)
		$a3 = GetPlayerInfo(-1,"item",12771)
		$a4 = GetPlayerInfo(-1,"item",12772)
		if $a1 == 0
			if $a2 == 0
				if $a3 == 0
					if $a4 == 0
						DisableNpcOption(3)
						DisableNpcOption(4)
						DisableNpcOption(5)
						DisableNpcOption(6)
					endif
				endif
			endif
		endif

	}

	//??????
	function OnOption0(){
//					59227
//					59128
		$team_headerID = GetTeamHeaderID( -1 )
		$player_id = GetPlayerID()
		$today_time = GetSystemTime( "yday" )
		$week = GetSystemTime( "week" )
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Sorry! You are not the party leader." )
			return
		endif
		$team_count = GetTeamMemberCount( -1 )
		//????????
		if $team_count < 3
			BC( "dialogbox", "player", -1, "Sorry! Your party has less than 3 members." )
			return
		endif
		$size = GetTeamAreaSize( -1 )
		if $size > 15
			//?????????????
			BC( "dialogbox", "player", -1, "Sorry! Some of your party members are away." )
			return
		endif

		$uid = 0
		$team_count = 0
		while $uid < 6
			$teamplayer_id = GetTeamMemberID( -1 , $uid )
			$uid = $uid + 1
			if $teamplayer_id != -1
				$player_level = GetPlayerInfo( $teamplayer_id, "level" )
				#player_name = GetPlayerInfo( $teamplayer_id, "name" )
				$Title = HaveTitle( $teamplayer_id, 21 )
				$player_time = GetPlayerVar($teamplayer_id,3860)
				$var3331 = GetPlayerVar($teamplayer_id,3331)
				if $player_level < 70
					BC( "dialogbox", "player", -1, "The hero ",#player_name,"LV is lower than 70. Unable to move in!" )
					return
				endif
				if $Title != 0
					BC( "dialogbox", "player", -1, "The hero ",#player_name," is not a Demigod, you can not enter." )
					return
				endif
				if $player_time == $today_time
					if $week == 6
						if $var3331 > 0
							BC( "dialogbox", "player", -1, "The hero ",#player_name,"Your times to enter World of Tree today is at its maximum. Unable to move in." )
							return
						endif
					else
						BC( "dialogbox", "player", -1, "The hero ",#player_name,"You have already entered World of Tree today. Unable to move in.\n(On Saturday, there are two chances to enter World of Tree Garden)" )
						return
					endif
				endif
			endif
			$temp_level = $temp_level + $player_level
			$team_count = $team_count + 1
		endwhile
		$temp_level = $temp_level / $team_count

		//????.?????
		$mapid = 250
		$mapposX = 49
		$mapposY = 35
		$is_succeed = FlyToEctype( $team_headerID, $mapid, $mapposX, $mapposY )

		if $is_succeed > 0
			SetPlayerActLog($team_headerID,21,0)
			if $week == 6
				$player_time = GetPlayerVar($team_headerID,3860)
				if $player_time != $today_time
					SetPlayerVar( $team_headerID , 3811, $is_succeed )
					SetPlayerVar( $team_headerID, 3860, $today_time )
					BC( "screen", "player", $team_headerID, "You have entered a new World of Tree Garden instance. Times left today: 1" )
					SetPlayerVar($team_headerID,3331,0)
				else
					SetPlayerVar($team_headerID,3331,1)
					SetPlayerVar( $team_headerID, 3811, $is_succeed )
					BC( "screen", "player", $team_headerID, "You have entered a new World of Tree Garden instance. Times left today: 0" )
				endif
			else
				if $player_time != $today_time
					SetPlayerVar( $team_headerID, 3811, $is_succeed )
					SetPlayerVar( $team_headerID, 3860, $today_time )
					BC( "screen", "player", $team_headerID, "You have entered a new World of Tree Garden instance." )
				endif
			endif
			//????ID
			$ectype_ID = GetEctypeID( $team_headerID, $mapid )
			StartEctypeTimer( $team_headerID, $mapid, 0 )
			SetEctypeVar( $ectype_ID, 110, $temp_level )
			//??-START
			$TJ_join_number = GetGlobalVar(957)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(957 , $TJ_join_number)
			//??-END
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif

		$uid = 0
		while $uid < 6
			$teamplayer_id = GetTeamMemberID( -1 , $uid )
			$uid = $uid + 1
			if $teamplayer_id != -1
				if $teamplayer_id != $team_headerID
					$is_succeed = FlyToEctype( $teamplayer_id, $mapid, $mapposX, $mapposY )
					if $is_succeed > 0
						SetPlayerActLog($teamplayer_id,21,0)
					endif
					if $week == 6
						$player_time = GetPlayerVar($teamplayer_id,3860)
						if $player_time != $today_time
							SetPlayerVar( $teamplayer_id , 3811, $is_succeed )
							SetPlayerVar( $teamplayer_id, 3860, $today_time )
							BC( "screen", "player", $teamplayer_id, "You have entered a new World of Tree Garden instance. Times left today: 1" )
							SetPlayerVar($teamplayer_id,3331,0)
						else
							SetPlayerVar($teamplayer_id,3331,1)
							SetPlayerVar($teamplayer_id, 3811, $is_succeed )
							BC( "screen", "player", $teamplayer_id, "You have entered a new World of Tree Garden instance. Times left today: 0" )
						endif
					else
						if $player_time != $today_time
							SetPlayerVar( $teamplayer_id, 3811, $is_succeed )
							SetPlayerVar( $teamplayer_id, 3860, $today_time )
							BC( "screen", "player", $teamplayer_id, "You have entered a new World of Tree Garden instance." )
						endif
					endif
				endif
			endif
		endwhile

//******************************************************************************************************************
//******************************************************************************************************************
//******************************************************************************************************************
//******************************************************************************************************************
//******************************************************************************************************************

	}

	//???????????
	function OnOption1(){
		$mapid = 250
		$mapposX = 49
		$mapposY = 35

		$playerid = GetPlayerID()
		$ectype_ID = GetEctypeID( -1, $mapid )
		$ectype_UID = GetEctypeUniqueID( -1, $mapid )
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "Instance is full." )
			return
		endif
		//-----------------------------------------------------------------------------------
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 70
			BC( "dialogbox", "player", -1, "Your level is lower than 70, you can not enter." )
			return
		endif
		$Title = HaveTitle( -1, 21 )
		if $Title != 0
			BC( "dialogbox", "player", -1, "You are not a Demi-God, you can not enter." )
			return
		endif
		$Player_UID = GetPlayerVar( -1, 3811 )
		//-----------------------------------------------------------------------------------
		if $Player_UID != $ectype_UID
			//----??????------------------------
			$week = GetSystemTime( "week" )
			$var3331 = GetPlayerVar(-1,3331)
			$today_time = GetSystemTime( "yday" )
			$player_time = GetPlayerVar( -1, 3860 )
			if $player_time == $today_time
				if $week == 6
					if $var3331 > 0
						BC( "dialogbox", "player", -1, "Your times to enter World of Tree today is at its maximum. Unable to move in." )
						return
					endif
				else
					BC( "dialogbox", "player", -1, "You have already entered World of Tree today. Unable to move in.\n(On Saturday, there are two chances to enter World of Tree Garden)" )
					return
				endif
			endif
			if $week == 0
				$ectype_type = GetEctypeVar( $ectype_ID, 7 )
				if $ectype_type == 1
					BC( "dialogbox", "player", -1, "The Millerqueen Hymnus has sealed the entrance with its magic. All other parties can not enter now." )
					return
				endif
			endif
			$is_succeed = FlyToEctype( $playerid, $mapid, $mapposX, $mapposY )
			if $week == 6
				$player_time = GetPlayerVar($playerid,3860)
				if $player_time != $today_time
					SetPlayerVar( $playerid , 3811, $is_succeed )
					SetPlayerVar( $playerid, 3860, $today_time )
					BC( "screen", "player", $playerid, "You have entered a new World of Tree Garden instance. Times left today: 1" )
					SetPlayerActLog(-1,21,0)
					SetPlayerVar($playerid,3331,0)
				else
					SetPlayerVar($playerid,3331,1)
					SetPlayerVar($playerid, 3811, $is_succeed )
					BC( "screen", "player", $playerid, "You have entered a new World of Tree Garden instance. Times left today: 0" )
					SetPlayerActLog(-1,21,0)
				endif
			else
				if $player_time != $today_time
					SetPlayerVar( $playerid, 3811, $is_succeed )
					SetPlayerVar( $playerid, 3860, $today_time )
					BC( "screen", "player", $playerid, "You have entered a new World of Tree Garden instance." )
					SetPlayerActLog(-1,21,0)
				endif
			endif
			//----??????------------------------
		else
			//----????----------------------------
			$is_succeed = FlyToEctype( $playerid, $mapid, $mapposX, $mapposY )
			BC( "screen", "player", -1, "You have returned to the Garden of the World Tree instance." )
			//----????----------------------------
		endif
		//---------------------------------------------------------------------------------------------

	}

	function OnOption2(){
		$mapid = 250

		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Only the party leader can reset the instance." )
			return
		endif

		$ectype_ID = GetEctypeID( -1 ,$mapid )
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number != 0
			BC( "dialogbox", "player", -1, "Unable to reset the instance! Party members are still inside." )
			return
		endif

		$revalue = ReleaseEctype( -1, $mapid )
		if $revalue == 0
			BC( "screen", "team", $team_headerID, "The Garden of the World Tree has been reset." )
			BC( "dialogbox", "player", -1, "The Garden of the World Tree has been reset." )
		else
			BC( "dialogbox", "player", -1, "Failed to reset instance." )
		endif

	}

//	function OnOption3(){
//		$player_time =  GetPlayerVar( -1, 3753 )
//		$today_time = GetSystemTime( "yday" )
//
//		$GodPunish = GetGodPunish( -1 )
//		if $GodPunish >= 100
//			BC( "screen", "player", -1, "GUID:04241000033" )
//			return
//		endif
//
//		if $player_time == $today_time
//			BC( "dialogbox", "player", -1, "GUID:04241000034" )
//			return
//		endif
//
//		AddPlayerInfo( -1, "godpunish", 200 )
//		SetPlayerVar( -1, 3753, $today_time )
//		BC( "chat", "player", -1, "GUID:04241000035" )
//
//	}

//	function OnOption4(){
//
//
//	//???????????3937
//	//???????????3938
//	//???????????3939
//		$title = HaveTitle( -1 , "21" )
//		if $title != 0
//			BC( "screen" , "player" , -1 , "You are not a Demigod. You can not accept." )
//			return
//		endif
//
//		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
//		if $nullitem < 3
//			BC( "dialogbox" , "player" , -1 , "GUID:04241000037" )
//			return
//		endif
//
//
//		//???????
//		$time = GetSystemTime( "yday" )
//		$day = GetPlayerVar( -1 , 3937 )
//		//?????,?????????0
//		if $time != $day
//			SetPlayerVar( -1 , 3937 , $time )
//		else
//			BC( "dialogbox" , "player" , -1 , "GUID:04241000038" )
//			return
//		endif
//
//
//		//??3?
//		$n = 0
//		while $n < 3
//			$n = $n + 1
//
//			$random = RandomNumber( 1 , 10000 )
//			//64%??
//			if $random >= 1
//				if $random < 6400
//					AddPlayerInfo( -1 , "item" , 12769 , 1 )
//				endif
//			endif
//
//			//25%??
//			if $random >= 6400
//				if $random < 8900
//					AddPlayerInfo( -1 , "item" , 12770 , 1 )
//				endif
//			endif
//
//			//10%??
//			if $random >= 8900
//				if $random < 9900
//					AddPlayerInfo( -1 , "item" , 12771 , 1 )
//				endif
//			endif
//
//			//1%??
//			if $random >= 9900
//				if $random <= 10000
//					AddPlayerInfo( -1 , "item" , 12772 , 1 )
//				endif
//			endif
//
//		endwhile
//
//	}


	//????
	function OnOption3(){

		$title = HaveTitle( -1 , "21" )
		if $title != 0
			BC( "screen" , "player" , -1 , "You are not a Demigod. You can not accept." )
			return
		endif

		//???????
		$count = GetPlayerInfo( -1 , "item" , 12769 )
		if $count <= 0
			BC( "dialogbox" , "player" , -1 , "You don't have the appropriate color of Yggdrasil's Whisper, so please don't bother me." )
			return
		endif

		//???????????
		$task1 = IsTaskAccept( -1 , 2526 )
		$task2 = IsTaskAccept( -1 , 2527 )
		$task3 = IsTaskAccept( -1 , 2528 )
		$task4 = IsTaskAccept( -1 , 2529 )
			if $task1 != 1
				BC( "dialogbox" , "player" , -1 , "Please complete your current Yggdrasil's Care quest." )
				return
			endif
			if $task2 != 1
				BC( "dialogbox" , "player" , -1 , "Please complete your current Yggdrasil's Care quest." )
				return
			endif

			if $task3 != 1
				BC( "dialogbox" , "player" , -1 , "Please complete your current Yggdrasil's Care quest." )
				return
			endif

			if $task4 != 1
				BC( "dialogbox" , "player" , -1 , "Please complete your current Yggdrasil's Care quest." )
				return
			endif

		//???????3?
		$time = GetSystemTime( "yday" )
		$day = GetPlayerVar( -1 , 3938 )
		//?????,?????????0
		if $time != $day
			SetPlayerVar( -1 , 3938 , $time )
			SetPlayerVar( -1 , 3939 , 0 )
		endif

		$times = GetPlayerVar( -1 , 3939 )
		if $times < 3
			$times = $times + 1
			AcceptTask( -1 , 2526 )
			$result = SubPlayerInfo( -1 , "item" , 12769 , 1 )
			SetPlayerVar( -1 , 3939 , $times )
		else
			BC( "dialogbox" , "player" , -1 , "You can only complete these daily quests 3 times per day." )
			return

		endif

	}


	//????
	function OnOption4(){

		$title = HaveTitle( -1 , "21" )
		if $title != 0
			BC( "screen" , "player" , -1 , "You are not a Demigod. You can not accept." )
			return
		endif

		//???????
		$count = GetPlayerInfo( -1 , "item" , 12770 )
		if $count <= 0
			BC( "dialogbox" , "player" , -1 , "You don't have the appropriate color of Yggdrasil's Whisper, so please don't bother me." )
			return
		endif

		//???????????
		$task1 = IsTaskAccept( -1 , 2526 )
		$task2 = IsTaskAccept( -1 , 2527 )
		$task3 = IsTaskAccept( -1 , 2528 )
		$task4 = IsTaskAccept( -1 , 2529 )
			if $task1 != 1
				BC( "dialogbox" , "player" , -1 , "Please complete your current Yggdrasil's Care quest." )
				return
			endif
			if $task2 != 1
				BC( "dialogbox" , "player" , -1 , "Please complete your current Yggdrasil's Care quest." )
				return
			endif

			if $task3 != 1
				BC( "dialogbox" , "player" , -1 , "Please complete your current Yggdrasil's Care quest." )
				return
			endif

			if $task4 != 1
				BC( "dialogbox" , "player" , -1 , "Please complete your current Yggdrasil's Care quest." )
				return
			endif

		//???????3?
		$time = GetSystemTime( "yday" )
		$day = GetPlayerVar( -1 , 3938 )
		//?????,?????????0
		if $time != $day
			SetPlayerVar( -1 , 3938 , $time )
			SetPlayerVar( -1 , 3939 , 0 )
		endif

		$times = GetPlayerVar( -1 , 3939 )
		if $times < 3
			$times = $times + 1
			AcceptTask( -1 , 2527 )
			$result = SubPlayerInfo( -1 , "item" , 12770 , 1 )
			SetPlayerVar( -1 , 3939 , $times )
		else
			BC( "dialogbox" , "player" , -1 , "You can only complete these daily quests 3 times per day." )
			return
		endif

	}


	//????
	function OnOption5(){

		$title = HaveTitle( -1 , "21" )
		if $title != 0
			BC( "screen" , "player" , -1 , "You are not a Demigod. You can not accept." )
			return
		endif

		//???????
		$count = GetPlayerInfo( -1 , "item" , 12771 )
		if $count <= 0
			BC( "dialogbox" , "player" , -1 , "You don't have the appropriate color of Yggdrasil's Whisper, so please don't bother me." )
			return
		endif

		//???????????
		$task1 = IsTaskAccept( -1 , 2526 )
		$task2 = IsTaskAccept( -1 , 2527 )
		$task3 = IsTaskAccept( -1 , 2528 )
		$task4 = IsTaskAccept( -1 , 2529 )
			if $task1 != 1
				BC( "dialogbox" , "player" , -1 , "Please complete your current Yggdrasil's Care quest." )
				return
			endif
			if $task2 != 1
				BC( "dialogbox" , "player" , -1 , "Please complete your current Yggdrasil's Care quest." )
				return
			endif

			if $task3 != 1
				BC( "dialogbox" , "player" , -1 , "Please complete your current Yggdrasil's Care quest." )
				return
			endif

			if $task4 != 1
				BC( "dialogbox" , "player" , -1 , "Please complete your current Yggdrasil's Care quest." )
				return
			endif

		//???????3?
		$time = GetSystemTime( "yday" )
		$day = GetPlayerVar( -1 , 3938 )
		//?????,?????????0
		if $time != $day
			SetPlayerVar( -1 , 3938 , $time )
			SetPlayerVar( -1 , 3939 , 0 )
		endif

		$times = GetPlayerVar( -1 , 3939 )
		if $times < 3
			$times = $times + 1
			AcceptTask( -1 , 2528 )
			$result = SubPlayerInfo( -1 , "item" , 12771 , 1 )
			SetPlayerVar( -1 , 3939 , $times )
		else
			BC( "dialogbox" , "player" , -1 , "You can only complete these daily quests 3 times per day." )
			return
		endif

	}


	//????
	function OnOption6(){

		$title = HaveTitle( -1 , "21" )
		if $title != 0
			BC( "screen" , "player" , -1 , "You are not a Demigod. You can not accept." )
			return
		endif

		//???????
		$count = GetPlayerInfo( -1 , "item" , 12772 )
		if $count <= 0
			BC( "dialogbox" , "player" , -1 , "You don't have the appropriate color of Yggdrasil's Whisper, so please don't bother me." )
			return
		endif

		//???????????
		$task1 = IsTaskAccept( -1 , 2526 )
		$task2 = IsTaskAccept( -1 , 2527 )
		$task3 = IsTaskAccept( -1 , 2528 )
		$task4 = IsTaskAccept( -1 , 2529 )
			if $task1 != 1
				BC( "dialogbox" , "player" , -1 , "Please complete your current Yggdrasil's Care quest." )
				return
			endif
			if $task2 != 1
				BC( "dialogbox" , "player" , -1 , "Please complete your current Yggdrasil's Care quest." )
				return
			endif

			if $task3 != 1
				BC( "dialogbox" , "player" , -1 , "Please complete your current Yggdrasil's Care quest." )
				return
			endif

			if $task4 != 1
				BC( "dialogbox" , "player" , -1 , "Please complete your current Yggdrasil's Care quest." )
				return
			endif

		//???????3?
		$time = GetSystemTime( "yday" )
		$day = GetPlayerVar( -1 , 3938 )
		//?????,?????????0
		if $time != $day
			SetPlayerVar( -1 , 3938 , $time )
			SetPlayerVar( -1 , 3939 , 0 )
		endif

		$times = GetPlayerVar( -1 , 3939 )
		if $times < 3
			$times = $times + 1
			AcceptTask( -1 , 2529 )
			$result = SubPlayerInfo( -1 , "item" , 12772 , 1 )
			SetPlayerVar( -1 , 3939 , $times )
		else
			BC( "dialogbox" , "player" , -1 , "You can only complete these daily quests 3 times per day." )
			return
		endif

	}
