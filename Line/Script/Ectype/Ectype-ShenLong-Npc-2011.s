	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/22
	//		Author:???
	//		TaskName:Ectype-ShenLong-Npc-2011.s
	//		TaskID:?????
	//
	//****************************************
	//
	//???? 90 ???????????
	function OnRequest(){
		$Line = GetServerLineID()
		$is_line = $Line % 2
		//?????
		if $is_line != 0
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
		endif

		$Now_Hour = GetSystemTime( "hour" )


		//?????????????

		$ectype_ID = GetEctypeID( -1, 187 )
		if $ectype_ID > 0
			DisableNpcOption(0)
			DisableNpcOption(3)
		else
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif

		//??????44082,??????????????
		$num = GetPlayerInfo( -1, "item", 44082 )
		if $num <= 0
			DisableNpcOption(3)
		endif

		//????vip??,???????
		$num = GetPlayerVar( -1, 4038 )
		if $num <= 0
			DisableNpcOption(4)
		endif

	}

	//??????
	function OnOption0(){
		$is_line = $Line % 2
		//?????
		if $is_line != 0
			BC( "dialogbox", "player", -1, "Only even Realm can enter." )
			return
		endif

		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "You are not the party leader." )
			return
		endif

		$status = IsExistStatus( $team_headerID, 10600 )
		if $status != 0
			BC( "dialogbox", "player", -1, "The party leader needs the power of [Blood Line of Ancient Dragons] to enter Dragon Island." )
			return
		endif

		$team_count = GetTeamMemberCount(-1)
		//????????
		if $team_count < 3
			BC( "dialogbox", "player", -1, "Your party members are less than 3." )
			return
		endif

		$size = GetTeamAreaSize( -1 )
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Your party member is too far away." )
			return
		endif

		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )

		$today_time = GetSystemTime( "yday" )
		$Stop = 0
		$total_fieldlevel = 0
		$temp_fieldlevel = 0
		//-------------------------------------------------------------------------------------1?
		if $teamplayer1_id != -1
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3765 )
			//????????????????,???
			$temp_level1 = GetPlayerInfo( $teamplayer1_id, "level" )

			$temp_fieldlevel = GetFieldLevel( $teamplayer1_id )
			$temp_fieldlevel = $temp_fieldlevel + 1
			$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel

			if $temp_level1 < 30
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be at least LV30." )
				return
			endif
			if $player1_time == $today_time
				//?????????????,??????????????
				$player1_number =  GetPlayerVar( $teamplayer1_id, 3405 )
				if $player1_number >= 1
					#name = GetPlayerInfo( $teamplayer1_id, "name" )
					BC( "chat", "player", -1, "The player ",#name," has already entered the Dragon Island instance." )
					$Stop = $Stop + 1
				endif
				$status = IsExistStatus( $teamplayer1_id, 10700 )
				if $status == 0
					#name = GetPlayerInfo( $teamplayer1_id, "name" )
					BC( "chat", "player", -1, "The player ",#name," has has the Ancient Dragon Roar status and is unable to enter Dragon Island." )
					BC( "dialogbox", "player", -1, "Someone in your party has has the Ancient Dragon Roar status and is unable to enter Dragon Island." )
					return
				endif
			endif

		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3765 )
			//????????????????,???
			$temp_level2 = GetPlayerInfo( $teamplayer2_id, "level" )

			$temp_fieldlevel = GetFieldLevel( $teamplayer2_id )
			$temp_fieldlevel = $temp_fieldlevel + 1
			$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			if $temp_level2 < 30
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be at least LV30." )
				return
			endif
			if $player2_time == $today_time
				//?????????????,??????????????
				$player2_number =  GetPlayerVar( $teamplayer2_id, 3405 )
				if $player2_number >= 1
					#name = GetPlayerInfo( $teamplayer2_id, "name" )
					BC( "chat", "player", -1, "The player ",#name," has already entered the Dragon Island instance." )
					$Stop = $Stop + 1
				endif
				$status = IsExistStatus( $teamplayer2_id, 10700 )
				if $status == 0
					#name = GetPlayerInfo( $teamplayer2_id, "name" )
					BC( "chat", "player", -1, "The player ",#name," has has the Ancient Dragon Roar status and is unable to enter Dragon Island." )
					BC( "dialogbox", "player", -1, "Someone in your party has has the Ancient Dragon Roar status and is unable to enter Dragon Island." )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------3?
		if $teamplayer3_id != -1
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3765 )
			//????????????????,???
			$temp_level3 = GetPlayerInfo( $teamplayer3_id, "level" )

			$temp_fieldlevel = GetFieldLevel( $teamplayer3_id )
			$temp_fieldlevel = $temp_fieldlevel + 1
			$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel

			if $temp_level3 < 30
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be at least LV30." )
				return
			endif
			if $player3_time == $today_time
				//?????????????,??????????????
				$player3_number =  GetPlayerVar( $teamplayer3_id, 3405 )
				if $player3_number >= 1
					#name = GetPlayerInfo( $teamplayer3_id, "name" )
					BC( "chat", "player", -1, "The player ",#name," has already entered the Dragon Island instance." )
					$Stop = $Stop + 1
				endif
				$status = IsExistStatus( $teamplayer3_id, 10700 )
				if $status == 0
					#name = GetPlayerInfo( $teamplayer3_id, "name" )
					BC( "chat", "player", -1, "The player ",#name," has has the Ancient Dragon Roar status and is unable to enter Dragon Island." )
					BC( "dialogbox", "player", -1, "Someone in your party has has the Ancient Dragon Roar status and is unable to enter Dragon Island." )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------4?
		if $teamplayer4_id != -1
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3765 )
			//????????????????,???
			$temp_level4 = GetPlayerInfo( $teamplayer4_id, "level" )

			$temp_fieldlevel = GetFieldLevel( $teamplayer4_id )
			$temp_fieldlevel = $temp_fieldlevel + 1
			$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel

			if $temp_level4 < 30
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be at least LV30." )
				return
			endif
			if $player4_time == $today_time
				//?????????????,??????????????
				$player4_number =  GetPlayerVar( $teamplayer4_id, 3405 )
				if $player4_number >= 1
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "chat", "player", -1, "The player ",#name," has already entered the Dragon Island instance." )
					$Stop = $Stop + 1
				endif
				$status = IsExistStatus( $teamplayer4_id, 10700 )
				if $status == 0
					#name = GetPlayerInfo( $teamplayer4_id, "name" )
					BC( "chat", "player", -1, "The player ",#name," has has the Ancient Dragon Roar status and is unable to enter Dragon Island." )
					BC( "dialogbox", "player", -1, "Someone in your party has has the Ancient Dragon Roar status and is unable to enter Dragon Island." )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------5?
		if $teamplayer5_id != -1
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3765 )
			//????????????????,???
			$temp_level5 = GetPlayerInfo( $teamplayer5_id, "level" )

			$temp_fieldlevel = GetFieldLevel( $teamplayer5_id )
			$temp_fieldlevel = $temp_fieldlevel + 1
			$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel

			if $temp_level5 < 30
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be at least LV30." )
				return
			endif
			if $player5_time == $today_time
				//?????????????,??????????????
				$player5_number =  GetPlayerVar( $teamplayer5_id, 3405 )
				if $player5_number >= 1
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "chat", "player", -1, "The player ",#name," has already entered the Dragon Island instance." )
					$Stop = $Stop + 1
				endif
				$status = IsExistStatus( $teamplayer5_id, 10700 )
				if $status == 0
					#name = GetPlayerInfo( $teamplayer5_id, "name" )
					BC( "chat", "player", -1, "The player ",#name," has has the Ancient Dragon Roar status and is unable to enter Dragon Island." )
					BC( "dialogbox", "player", -1, "Someone in your party has has the Ancient Dragon Roar status and is unable to enter Dragon Island." )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------6?
		if $teamplayer6_id != -1
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3765 )
			//????????????????,???
			$temp_level6 = GetPlayerInfo( $teamplayer6_id, "level" )

			$temp_fieldlevel = GetFieldLevel( $teamplayer6_id )
			$temp_fieldlevel = $temp_fieldlevel + 1
			$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel

			if $temp_level6 < 30
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be at least LV30." )
				return
			endif
			if $player6_time == $today_time
				//?????????????,??????????????
				$player6_number =  GetPlayerVar( $teamplayer6_id, 3405 )
				if $player6_number >= 1
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "chat", "player", -1, "The player ",#name," has already entered the Dragon Island instance." )
					$Stop = $Stop + 1
				endif
				$status = IsExistStatus( $teamplayer6_id, 10700 )
				if $status == 0
					#name = GetPlayerInfo( $teamplayer6_id, "name" )
					BC( "chat", "player", -1, "The player ",#name," has has the Ancient Dragon Roar status and is unable to enter Dragon Island." )
					BC( "dialogbox", "player", -1, "Someone in your party has has the Ancient Dragon Roar status and is unable to enter Dragon Island." )
					return
				endif
			endif
		endif
		if $Stop > 0
			BC( "dialogbox", "player", -1, "",$Stop,"has already entered this instance." )
			return
		endif
		//------------------------------------------------------------------------------------------
		$team_count = GetTeamMemberCount(-1)
		$temp_level = $temp_level1 + $temp_level2
		$temp_level = $temp_level + $temp_level3
		$temp_level = $temp_level + $temp_level4
		$temp_level = $temp_level + $temp_level5
		$temp_level = $temp_level + $temp_level6
		$temp_level = $temp_level / $team_count
		if $total_fieldlevel > $team_count
			$monster_fieldlevel = $total_fieldlevel / $team_count
			if $temp_level < 120
				$temp_level = 120
			endif
		else
			$monster_fieldlevel = 0
		endif
		//????.?????

		$is_succeed = FlyToEctype( $team_headerID, 187, 53, 67 )

		if $is_succeed > 0
			SetPlayerActLog($team_headerID,12,0)
			SetPlayerVar( $team_headerID , 3807 , $is_succeed )
			AddStatus( $team_headerID, 10600, 2 )
			AddStatus( $team_headerID, 10700, 1 )
			$player_time =  GetPlayerVar( $team_headerID, 3765 )
			BC( "screen", "player", $team_headerID, "You enter a new Dragon Island." )
			//????-START
			$TJ_join_number = GetGlobalVar(906)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(906 , $TJ_join_number)
			//????-END
			if $player_time != $today_time

				SetPlayerVar( $team_headerID, 3765 ,$today_time )
				SetPlayerVar( $team_headerID , 3405 ,1 )

				//????ID
				$ectype_ID = GetEctypeID( $team_headerID, 187 )
				StartEctypeTimer( $team_headerID , 187, 0 )
				SetEctypeVar( $ectype_ID, 117, $temp_level )
				SetEctypeVar( $ectype_ID, 90, $monster_fieldlevel )
			else
				$player_number =  GetPlayerVar( $team_headerID , 3405 )
				$player_number = $player_number + 1
				SetPlayerVar( $team_headerID, 3405, $player_number )

				$ectype_ID = GetEctypeID( $team_headerID, 187 )
				//???????,0?
				StartEctypeTimer( $team_headerID, 187, 0 )
				SetEctypeVar( $ectype_ID, 117, $temp_level )
				SetEctypeVar( $ectype_ID, 90, $monster_fieldlevel )
			endif
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif

		//------------------------------------------------------------------------------------------  1
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer1_id, 187, 53, 67 )
				AddStatus( $teamplayer1_id, 10600, 2 )
				AddStatus( $teamplayer1_id, 10700, 1 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer1_id,12,0)
					SetPlayerVar( $teamplayer1_id , 3807 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer1_id, 3765 )
					BC( "screen", "player", $teamplayer1_id, "You enter a new Dragon Island." )
					if $player_time != $today_time
						SetPlayerVar( $teamplayer1_id, 3765 ,$today_time )
						SetPlayerVar( $teamplayer1_id , 3405 ,1 )
					else
						$player_number =  GetPlayerVar( $teamplayer1_id , 3405 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer1_id , 3405 ,$player_number )
					endif
				else
					BC( "dialogbox", "player", $teamplayer1_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  2
		if $teamplayer2_id != -1
			if $teamplayer2_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer2_id, 187, 53, 67 )
				AddStatus( $teamplayer2_id, 10600, 2 )
				AddStatus( $teamplayer2_id, 10700, 1 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer2_id,12,0)
					SetPlayerVar( $teamplayer2_id , 3807 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer2_id, 3765 )
					BC( "screen", "player", $teamplayer2_id, "You enter a new Dragon Island." )
					if $player_time != $today_time
						SetPlayerVar( $teamplayer2_id, 3765 ,$today_time )
						SetPlayerVar( $teamplayer2_id , 3405 ,1 )
					else
						$player_number =  GetPlayerVar( $teamplayer2_id , 3405 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer2_id , 3405 ,$player_number )
					endif
				else
					BC( "dialogbox", "player", $teamplayer2_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  3
		if $teamplayer3_id != -1
			if $teamplayer3_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer3_id, 187, 53, 67 )
				AddStatus( $teamplayer3_id, 10600, 2 )
				AddStatus( $teamplayer3_id, 10700, 1 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer3_id,12,0)
					SetPlayerVar( $teamplayer3_id , 3807 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer3_id, 3765 )
					BC( "screen", "player", $teamplayer3_id, "You enter a new Dragon Island." )
					if $player_time != $today_time
						SetPlayerVar( $teamplayer3_id, 3765 ,$today_time )
						SetPlayerVar( $teamplayer3_id , 3405 ,1 )
					else
						$player_number =  GetPlayerVar( $teamplayer3_id , 3405 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer3_id , 3405 ,$player_number )
					endif
				else
					BC( "dialogbox", "player", $teamplayer3_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  4
		if $teamplayer4_id != -1
			if $teamplayer4_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer4_id, 187, 53, 67 )
				AddStatus( $teamplayer4_id, 10600, 2 )
				AddStatus( $teamplayer4_id, 10700, 1 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer4_id,12,0)
					SetPlayerVar( $teamplayer4_id , 3807 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer4_id, 3765 )
					BC( "screen", "player", $teamplayer4_id, "You enter a new Dragon Island." )
					if $player_time != $today_time
						SetPlayerVar( $teamplayer4_id, 3765 ,$today_time )
						SetPlayerVar( $teamplayer4_id , 3405 ,1 )
					else
						$player_number =  GetPlayerVar( $teamplayer4_id , 3405 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer4_id , 3405 ,$player_number )
					endif
				else
					BC( "dialogbox", "player", $teamplayer4_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  5
		if $teamplayer5_id != -1
			if $teamplayer5_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer5_id, 187, 53, 67 )
				AddStatus( $teamplayer5_id, 10600, 2 )
				AddStatus( $teamplayer5_id, 10700, 1 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer5_id,12,0)
					SetPlayerVar( $teamplayer5_id , 3807 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer5_id, 3765 )
					BC( "screen", "player", $teamplayer5_id, "You enter a new Dragon Island." )
					if $player_time != $today_time
						SetPlayerVar( $teamplayer5_id, 3765 ,$today_time )
						SetPlayerVar( $teamplayer5_id , 3405 ,1 )
					else
						$player_number =  GetPlayerVar( $teamplayer5_id , 3405 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer5_id , 3405 ,$player_number )
					endif
				else
					BC( "dialogbox", "player", $teamplayer5_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  6
		if $teamplayer6_id != -1
			if $teamplayer6_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer6_id, 187, 53, 67 )
				AddStatus( $teamplayer6_id, 10600, 2 )
				AddStatus( $teamplayer6_id, 10700, 1 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer6_id,12,0)
					SetPlayerVar( $teamplayer6_id , 3807 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer6_id, 3765 )
					BC( "screen", "player", $teamplayer6_id, "You enter a new Dragon Island." )
					if $player_time != $today_time
						SetPlayerVar( $teamplayer6_id, 3765 ,$today_time )
						SetPlayerVar( $teamplayer6_id , 3405 ,1 )
					else
						$player_number =  GetPlayerVar( $teamplayer6_id , 3405 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer6_id , 3405 ,$player_number )
					endif
				else
					BC( "dialogbox", "player", $teamplayer6_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif

		$is_complete = 1
	}

	//???????????
	function OnOption1(){
		$is_line = $Line % 2
		//?????
		if $is_line != 0
			BC( "dialogbox", "player", -1, "Only even Realm can be entered." )
			return
		endif

		$ectype_ID = GetEctypeID( -1, 187 )
		//????ID
		$ectype_UID = GetEctypeUniqueID( -1, 187 )
		$today_time = GetSystemTime( "yday" )
		$player_time =  GetPlayerVar( -1, 3765 )
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "Instance is full." )
			return
		endif
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 30
			BC( "dialogbox", "player", -1, "You must be at least LV30 to enter!" )
			return
		endif

		//-----------------------------------------------------------------------------------
		if $ectype_ID == 0
			BC( "dialogbox", "player", -1, "No instance to return to." )
			return
		endif

		$Player_UID = GetPlayerVar( -1, 3807 )
		if $Player_UID != $ectype_UID
			if $player_time == $today_time
				$player_number =  GetPlayerVar( -1, 3405 )
				if $player_number >= 1
					BC( "dialogbox", "player", -1, "You have entered the Dragon Island Instance today. Can't enter again today." )
					return
				endif
			endif
		endif

		//-----------------------------------------------------------------------------------
		$is_succeed = FlyToEctype( -1, 187, 53, 67 )
		if $is_succeed > 0
			//??????
				$Player_UID = GetPlayerVar( -1, 3807 )
				//??????????????
				if $Player_UID == $ectype_UID
					//?????,?????
					BC( "screen", "player", -1, "You return to Dragon Island!" )
				else
					//???????????????,????????????,?????????
					BC( "screen", "player", -1, "You enter a new Dragon Island." )
					SetPlayerActLog(-1,12,0)
					AddStatus( -1, 10700, 1 )
					SetPlayerVar( -1 , 3807 , $ectype_UID )
					if $player_time != $today_time
						SetPlayerVar( -1, 3765 ,$today_time )
						SetPlayerVar( -1 , 3405 ,1 )
					else
						$player_number =  GetPlayerVar( -1 , 3405 )
						$player_number = $player_number + 1
						SetPlayerVar( -1 , 3405 ,$player_number )
					endif
				endif
		else
			BC( "dialogbox", "player", -1, "Instance is full. Failed to enter." )
			//???????
		endif

	}

	function OnOption2(){

		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Only the party leader can reset the instance." )
			return
		endif

		$status = IsExistStatus( -1, 10700 )
		if $status == 0
			BC( "dialogbox", "player", -1, "You are under the effect of Ancient Dragon Roar. Unable to reset the instance." )
			return
		endif

		$ectype_ID = GetEctypeID( -1 ,187 )
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number != 0
			BC( "dialogbox", "player", -1, "Unable to reset the instance! Party members are still inside." )
			return
		endif

		$revalue = ReleaseEctype( -1,187 )
		if $revalue == 0
			BC( "screen", "team", $team_headerID, "Dragon Island has been reset." )
			BC( "dialogbox", "player", -1, "Dragon Island has been reset." )
		else
			BC( "dialogbox", "player", -1, "Failed to reset instance." )
		endif

	}



	function OnOption3(){

		//????return
		$num = GetPlayerInfo( -1, "item", 44082 )
		if $num <= 0
			return
		endif

		$is_complete = 0
		//???????,??????,?option0?????is_complete???1
		call OnOption0()

		if $is_complete == 1
			SubPlayerInfo( -1, "item", 44082 ,1)
			BC( "chat", "player",-1 ,"You used a Chrono Hourglass and successfully entered." )
		else

		endif

	}

		function OnOption4(){

		//????return
		$num = GetPlayerVar( -1, 4038 )
		if $num <= 0
			return
		endif

		$is_complete = 0
		//???????,??????,?option0?????is_complete???1
		call OnOption0()

		if $is_complete == 1
			$num = $num - 1
			SetPlayerVar( -1, 4038, $num )
			BC( "chat", "player",-1 ,"You used a special VIP privilege! Privileges left:",$num," sec." )
		else

		endif

	}
