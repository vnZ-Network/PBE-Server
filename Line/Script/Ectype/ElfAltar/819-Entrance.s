	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7/19
	//		Author:???
	//		TaskName:819-Entrance.s
	//		TaskID:????????
	//
	//****************************************
	//
	
	
	//????541
	//???????                  					 3561
	//?????????????????ID     3874
	//????????                         907
	
	
	//option0  ????
	//option1  ????
	
	
	
	function OnRequest(){
		
		//?????????????
		$ectype_ID = GetEctypeID( -1 , 541 )
		
		$Line = GetServerLineID()
		if $Line != 6
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif 
		
//		//????????
//		$NowWeek = GetSystemTime("week")
//		if $NowWeek != 4
//			DisableNpcOption(0)
//			DisableNpcOption(1)
//			DisableNpcOption(2)
//		endif 
		
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
		
		$ectype_ID = GetEctypeID(-1, 541)
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()

		//????
		if $ectype_ID > 0
			ReleaseEctype(-1,541)
		endif

		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Sorry, only the party leader can enter you into the instance!" )
			return
		endif
		
		$team_count = GetTeamMemberCount(-1)
//?????????------		
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
				if $temp_level < 25
					//????????20???,????
					BC( "dialogbox", "player", -1, "One of the players on the team is not yet Exalted LV25. You cannot enter!" )
					return
				endif
				
//				//???????
//				$player_time = GetPlayerVar( $teamplayer_id , 3850 )
//				//????????????????,???
//				if $player_time == $today_time
//					#name = GetPlayerInfo( $teamplayer_id , "name" )
//					BC( "chat", "player", -1, #name ,"GUID:04259000004" )
//					BC( "dialogbox", "player", -1,"GUID:04259000005" )
//					return
//				endif

				$last_week = GetPlayerVar($teamplayer_id,3561)
				$weeknow = GetNowWeek()
				if $last_week == $weeknow
					#name = GetPlayerInfo( $teamplayer_id , "name" )
					BC( "chat", "player", -1, #name ,"You've already entered the Fae Shrine instance this week, you can't enter a second time!" )
					BC( "dialogbox", "player", -1,"One of the players in the party has already entered the Fae Shrine instance this week, cannot enter!" )
					return		
				endif		
			endif
		endwhile
		
		//-------------------????----------------------------------
		
		if $player_id == $team_headerID
			$is_success = FlyToEctype( $team_headerID, 541, 100, 100)
			if $is_success > 0
				SetPlayerActLog($team_headerID,26,0)
				SetPlayerVar( $team_headerID , 3874, $is_success)
				$ectype_ID = GetEctypeID(-1, 541)	
//?????							
				StartEctypeTimer($ectype_ID, 0)
				BC( "screen", "player", $team_headerID, "You've arrived at the mysterious Fae Shrine!")
				$last_week = GetPlayerVar($team_headerID,3561)
				$weeknow = GetNowWeek()	
				if $last_week != $weeknow	
					//???????????1
					SetPlayerVar( $team_headerID , 3561 , $weeknow)
				endif
				BC( "chat", "player", $team_headerID, "You've entered a new Fae Shrine instance!" )	
			endif
		endif
		
		$n2 = 0
		while $n2 < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n2 )
			$n2 = $n2 + 1
			//????,6??????
				if $teamplayer_id != -1				
					if $teamplayer_id != $team_headerID
					$is_suc = FlyToEctype( $teamplayer_id , 541 , 100 , 100 )
						if $is_suc > 0
							SetPlayerActLog($teamplayer_id,26,0)
							SetPlayerVar( $teamplayer_id , 3874 , $is_suc )								
							//???????????????
							$last_week = GetPlayerVar($teamplayer_id,3561)
							$weeknow = GetNowWeek()	
							if $last_week != $weeknow	
								//???????????1
								SetPlayerVar( $teamplayer_id , 3561 , $weeknow)
								BC( "screen", "player", $teamplayer_id, "You've arrived at the mysterious Fae Shrine" )
							endif
						else
							BC( "dialogbox", "player", -1, "Failed to create instance, try later or change realm." )
						endif
					endif
				endif
		endwhile
		
		//-------------------????----------------------------------
		

		//??????????
		$history = GetGlobalVar( 907 )
		$history = $history + $team_count
		SetGlobalVar( 907 , $history )

		


	}
	
	
	
	//???????????
	function OnOption1(){
		
		$ectype_ID = GetEctypeID( -1 , 541 )
		//????ID
		$ectype_UID = GetEctypeUniqueID( -1 , 541 )
		$player_number = GetMapPlayerCount($ectype_ID)
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "The Instance is full, unable to enter!" )
			return
		endif
		$temp_level = GetFieldLevel( -1 )
		if $temp_level < 25
			BC( "dialogbox", "player", -1, "You're not yet LV25, you cannot enter!" )
			return
		endif
		//-----------------------------------------------------------------------------------
		//??????
		if $ectype_ID > 0
			//?????????,???????>=1 ???;???????????,???,?? ??+1
			$Player_UID = GetPlayerVar( -1, 3874 )
			//??????????????
			if $Player_UID == $ectype_UID
				//???????,?????
			else
				//????????
			//-----------------------------------------------------------------------------------
				$last_week = GetPlayerVar(-1,3561)
				$weeknow = GetNowWeek()	
				if $last_week == $weeknow	
					BC( "dialogbox", "player", -1, "You've already entered the Fae Shrine instance this week, you can't enter a second time!" )
					return
				endif
			endif
		else
			//???????,??
			return
		endif
		
		
		
		$is_succeed = FlyToEctype( -1 , 541 , 100 , 100 )
		
		if $is_succeed > 0
			//??????
			$Player_UID = GetPlayerVar( -1 , 3874 )
			//??????????????
			if $Player_UID == $ectype_UID
				//?????,?????
				BC( "screen", "player", -1, "You've returned to the Fae Shrine instance!" )
			else
				//?????????????????,????????????,?????????

				SetPlayerVar( -1 , 3874 , $ectype_UID )
				$last_week = GetPlayerVar(-1,3561)
				$weeknow = GetNowWeek()	
				if $last_week != $weeknow
					SetPlayerVar(-1,3561,$weeknow)
				endif
				BC( "screen", "player", -1, "You've entered a new Fae Shrine instance!" )
				SetPlayerActLog(-1,26,0)
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
		
		$ectype_ID = GetEctypeID( -1 ,541 )
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number != 0
			BC( "dialogbox", "player", -1, "Unable to reset the instance! Party members are still inside." )
			return
		endif
		
		$revalue = ReleaseEctype( -1, 541 )
		if $revalue == 0
			BC( "screen", "team", $team_headerID, "The Fae Shrine instance has been reset!" )
			BC( "dialogbox", "player", -1, "The Fae Shrine instance has been reset!" )
		else
			BC( "dialogbox", "player", -1, "Failed to reset instance." )
		endif
	}