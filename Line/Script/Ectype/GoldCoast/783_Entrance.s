	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/3/31
	//		Author:???
	//		TaskName:783_Entrance.s
	//		TaskID:????????
	//
	//****************************************
	//
	
	
	//????540
	//???????????                   3850
	//???????                  					 3307
	//?????????           						 3332
	//?????????????????ID     3849
	//????????                         905
	
	
	//option0  ????
	//option1  ????
	
	
	
	function OnRequest(){
		
		//?????????????
		$ectype_ID = GetEctypeID( -1 , 540 )
		if $ectype_ID > 0
			//?????ID?,??????
			DisableNpcOption(0)			
		else
			//?ID,???????????
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif
		
	}
	
	
	//??
	function OnOption0(){
		
		$ectype_ID = GetEctypeID(-1, 540)
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()

		//????
		if $ectype_ID > 0
			ReleaseEctype(-1,540)
		endif

		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Sorry, only the party leader can enter you into the instance!" )
			return
		endif
		

//?????????------
		$team_count = GetTeamMemberCount(-1)
		//????????
		if $team_count < 3
			BC( "dialogbox", "player", -1, "You must have at least 3 players to enter the instance!" )
			return
		endif
		
		$size = GetTeamAreaSize(-1)
		
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Your party members are too far away from you!" )
			return
		endif
		
		
		//???????ID,??????ID?-1
		$today_time = GetSystemTime( "yday" )
		$n = 0
		while $n < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n )
			$n = $n + 1
			//-----------------------------
			//????????????1????
			//-------------------------------------------------------------------------------------1?
			if $teamplayer_id != -1
			
				//???????20?
				$temp_level = GetFieldLevel($teamplayer_id)
				if $temp_level < 20
					//????????20???,????
					BC( "dialogbox", "player", -1, "One or more party members are below Exalted LV20. Cannot enter instance." )
					return
				endif
				
				//???????
				$player_time = GetPlayerVar( $teamplayer_id , 3850 )
				//????????????????,???
				if $player_time == $today_time
					#name = GetPlayerInfo( $teamplayer_id , "name" )
					BC( "chat", "player", -1, #name ,"You have already entered the Golden Coast instance today." )
					BC( "dialogbox", "player", -1,"One or more party members have already entered Golden Coast today." )
					return
				endif

				$player_number = GetPlayerVar( $teamplayer_id, 3332 )
				$last_week = GetPlayerVar($teamplayer_id,3307)
				$weeknow = GetNowWeek()
				if $last_week == $weeknow
					if $player_number >= 3
						#name = GetPlayerInfo( $teamplayer_id , "name" )
						BC( "chat", "player", -1, #name ,"You have already entered Golden Coast three times this week." )
						BC( "dialogbox", "player", -1,"One or more party members have already entered Golden Coast three times this week." )
						return		
					endif
				endif		
			endif
		endwhile
		
		//-------------------????----------------------------------
		
		if $player_id == $team_headerID
			$is_success = FlyToEctype( $team_headerID, 540, 56, 100)
			if $is_success > 0
				SetPlayerActLog($team_headerID,23,0)
				SetPlayerVar( $team_headerID , 3849, $is_success)
				$ectype_ID = GetEctypeID(-1, 540)				
				StartEctypeTimer($ectype_ID, 9)
				BC( "screen", "player", $team_headerID, "You have entered the mysterious Gloden Coast.")
				SetPlayerVar( $team_headerID, 3850 ,$today_time )
//????3???
				$last_week = GetPlayerVar($team_headerID,3307)
				$weeknow = GetNowWeek()	
				if $last_week != $weeknow	
					//???????????1
					SetPlayerVar( $team_headerID , 3332 , 1 )
					SetPlayerVar( $team_headerID , 3307 , $weeknow)
				else
					$player_number = GetPlayerVar( $team_headerID , 3332 )
					$player_number = $player_number + 1
					SetPlayerVar( $team_headerID , 3332 ,$player_number )
				endif
				$player_number = GetPlayerVar( $team_headerID , 3332 )
				$temp_number = 3 - $player_number
				BC( "chat", "player", $team_headerID, "You have entered a new Golden Coast instance. You can still enter ", $temp_number , " times this week." )	
			endif
		endif
		
		$n2 = 0
		while $n2 < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n2 )
			$n2 = $n2 + 1
			//????,6??????
				if $teamplayer_id != -1				
					if $teamplayer_id != $team_headerID
					$is_suc = FlyToEctype( $teamplayer_id , 540 , 56 , 100 )
						if $is_suc > 0
							SetPlayerActLog($teamplayer_id,23,0)
							SetPlayerVar( $teamplayer_id , 3849 , $is_suc )								
							//???????????????
							SetPlayerVar( $teamplayer_id, 3850 ,$today_time )
							$last_week = GetPlayerVar($teamplayer_id,3307)
							$weeknow = GetNowWeek()	
							if $last_week != $weeknow	
								//???????????1
								SetPlayerVar( $teamplayer_id , 3332 , 1 )
								SetPlayerVar( $teamplayer_id , 3307 , $weeknow)
								BC( "screen", "player", $teamplayer_id, "You have entered the mysterious Gloden Coast." )
							else
								$player_number = GetPlayerVar( $teamplayer_id , 3332 )
								$player_number = $player_number + 1
								SetPlayerVar( $teamplayer_id , 3332 ,$player_number )					
							endif
							$player_number = GetPlayerVar( $teamplayer_id , 3332 )
							$temp_number = 3 - $player_number
							BC( "chat", "player", $teamplayer_id, "You have entered a new Golden Coast instance. You can still enter ", $temp_number , " times this week." )

						else
							BC( "dialogbox", "player", -1, "Failed to create instance, try later or change realm." )
						endif
					endif
				endif
		endwhile
		
		//-------------------????----------------------------------
		

		//??????????
		$history = GetGlobalVar( 905 )
		$history = $history + $team_count
		SetGlobalVar( 905 , $history )

		


	}
	
	
	
	//???????????
	function OnOption1(){
		
		$ectype_ID = GetEctypeID( -1 , 540 )
		//????ID
		$ectype_UID = GetEctypeUniqueID( -1 , 540 )
		$player_number = GetMapPlayerCount($ectype_ID)
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "The Instance is full, unable to enter!" )
			return
		endif
		$temp_level = GetFieldLevel( -1 )
		if $temp_level < 20
			BC( "dialogbox", "player", -1, "You are below Exalted LV20. Cannot enter instance." )
			return
		endif
		//-----------------------------------------------------------------------------------
		//??????
		if $ectype_ID > 0
			//?????????,???????>=1 ???;???????????,???,?? ??+1
			$today_time = GetSystemTime( "yday" )
			$player_time =  GetPlayerVar( -1, 3850 )
			$Player_UID = GetPlayerVar( -1, 3849 )
			$player_number =  GetPlayerVar( -1, 3332 )			
			//??????????????
			if $Player_UID == $ectype_UID
				//???????,?????
			else
				//????????
			//-----------------------------------------------------------------------------------
				if $player_time == $today_time
					BC( "dialogbox", "player", -1, "You have already entered Golden Coast today. Cannot enter instance." )
					return
				endif
				$last_week = GetPlayerVar(-1,3307)
				$weeknow = GetNowWeek()	
				if $last_week == $weeknow	
					if $player_number >= 3
						BC( "dialogbox", "player", -1, "You have already entered Golden Coast three times this week. Cannot enter instance." )
						return
					endif
				endif
			endif
		else
			//???????,??
			return
		endif
		
		
		
		$is_succeed = FlyToEctype( -1 , 540 , 56 , 100 )
		
		if $is_succeed > 0
			//??????
			$Player_UID = GetPlayerVar( -1 , 3849 )
			//??????????????
			if $Player_UID == $ectype_UID
				//?????,?????
				BC( "screen", "player", -1, "You have returned to the Golden Coast instance." )
			else
				//?????????????????,????????????,?????????

				SetPlayerVar( -1 , 3849 , $ectype_UID )
				if $player_time != $today_time
					SetPlayerVar( -1, 3850 , $today_time )
				endif
				$last_week = GetPlayerVar(-1,3307)
				$weeknow = GetNowWeek()	
				$player_number =  GetPlayerVar( -1 , 3332 )
				if $last_week != $weeknow
					SetEctypeVar(-1,3307,$weeknow)
					SetPlayerVar(-1, 3332, 1)
				else	
					$player_number = $player_number + 1
					SetPlayerVar( -1 , 3332 , $player_number )
				endif
				BC( "screen", "player", -1, "You have entered a new Golden Coast instance." )
				SetPlayerActLog(-1,23,0)
				$player_number = GetPlayerVar( -1 , 3332 )
				$temp_number = 3 - $player_number
				BC( "chat", "player", -1, "You have entered a new Golden Coast instance. You can still enter ", $temp_number , " times this week." )	
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
		
		$ectype_ID = GetEctypeID( -1 ,540 )
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number != 0
			BC( "dialogbox", "player", -1, "Unable to reset the instance! Party members are still inside." )
			return
		endif
		
		$revalue = ReleaseEctype( -1, 540 )
		if $revalue == 0
			BC( "screen", "team", $team_headerID, "The Golden Coast instance has been reset." )
			BC( "dialogbox", "player", -1, "The Golden Coast instance has been reset." )
		else
			BC( "dialogbox", "player", -1, "Failed to reset instance." )
		endif
	}