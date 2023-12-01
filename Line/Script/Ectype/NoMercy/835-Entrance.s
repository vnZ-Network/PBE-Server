	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/19
	//		Author:???
	//		TaskName:835-Entrance.s
	//		TaskID:????????
	//
	//****************************************
	//
	
	
	//????566
	//???????                            4087
	//?????????????????ID     3844
	//????????                         925
	
	
	//option0  ????
	//option1  ????
	
	
	
	function OnRequest(){
		
		//?????????????
		$ectype_ID = GetEctypeID( -1 , 566 )
		
		$Line = GetServerLineID()
		if $Line != 6
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
		endif 
		
		//???????
		$NowWeek = GetSystemTime("week")
		if $NowWeek > 0
			$odd = $NowWeek % 2
			if $odd == 0
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
			endif
		endif 
		
		if $ectype_ID > 0
			//?????ID?,??????
			DisableNpcOption(0)		
			DisableNpcOption(1)	
		else
			//?ID,???????????
			DisableNpcOption(3)
			DisableNpcOption(2)
		endif
		
		$playervar = GetPlayerVar( -1, 4090 )
		$today_time = GetSystemTime( "yday" )
		if $playervar == $today_time
			  DisableNpcOption(4)
		endif
		
		$Task = IsTaskAccept( -1, 1877 )
		if $Task == 0
			  DisableNpcOption(4) 
		endif
		
	}
	
	
	//?? ????1-3?
	function OnOption0(){
		
		$ectype_ID = GetEctypeID(-1, 566)
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()

		//????
		if $ectype_ID > 0
			ReleaseEctype(-1,566)
		endif

		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Only the party leader can enter the instance." )
			return
		endif
		
		$team_count = GetTeamMemberCount(-1)
//?????????------		
		//????????
		if $team_count > 3
			BC( "dialogbox", "player", -1, "You can't have more than 3 people in the Party in Easy Mode." )
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
				if $temp_level < 30
					//????????30???,????
					BC( "dialogbox", "player", -1, "One or more party members are below Exalted LV30. Cannot enter instance." )
					return
				endif
				
//				//???????
				$player_time = GetPlayerVar( $teamplayer_id , 4087 )
				//????????????????,???
				if $player_time == $today_time
					#name = GetPlayerInfo( $teamplayer_id , "name" )
					BC( "chat", "player", -1, #name ,"You have already entered Heartless Canyon today." )
					BC( "dialogbox", "player", -1,"One or more party members have already entered Castle Hartlis today." )
					return
				endif
				
				//???????????
				$field_add = $field_add + $temp_level
	
			endif
		endwhile
		
		//-------------------????----------------------------------
		
		if $player_id == $team_headerID
			$is_success = FlyToEctype( $team_headerID, 566, 87, 38)
			if $is_success > 0
				SetPlayerActLog($team_headerID,42,1)
				SetPlayerVar( $team_headerID , 3844, $is_success)
				SetPlayerVar($team_headerID,4087,$today_time)
				$ectype_ID = GetEctypeID(-1, 566)	
//?????							
				StartEctypeTimer($ectype_ID, 0)
				BC( "screen", "player", $team_headerID, "An alluring song brings you to Heartless Canyon.")
				
			endif
		endif
		
		$n2 = 0
		while $n2 < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n2 )
			$n2 = $n2 + 1
			//????,6??????
				if $teamplayer_id != -1				
					if $teamplayer_id != $team_headerID
					$is_suc = FlyToEctype( $teamplayer_id , 566, 87, 38)
						if $is_suc > 0
//							SetPlayerActLog($teamplayer_id,26,0)
							SetPlayerVar( $teamplayer_id , 3844 , $is_suc )								
							//???????????????
							SetPlayerVar( $teamplayer_id , 4087 , $today_time )
						else
							BC( "dialogbox", "player", -1, "Failure to enter the instance. Try again later or on another Realm." )
						endif
					endif
				endif
		endwhile
		
		//??????????
		$field_ave = $field_add / $team_count
		$ectype_id = GetEctypeID($team_headerID,566)
		SetEctypeVar($ectype_id,98,$field_ave)
		SetEctypeVar($ectype_id,99,0)
		
		//-------------------????----------------------------------
		

		//??????????
		$history = GetGlobalVar( 925 )
		$history = $history + $team_count
		SetGlobalVar( 925 , $history )

		


	}
	
	//?? ????2-6?
	function OnOption1(){
		
		$ectype_ID = GetEctypeID(-1, 566)
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()

		//????
		if $ectype_ID > 0
			ReleaseEctype(-1,566)
		endif

		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Only the party leader can enter the instance." )
			return
		endif
		
		$team_count = GetTeamMemberCount(-1)
//?????????------		
		//????????
		if $team_count < 2
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
				if $temp_level < 30
					//????????30???,????
					BC( "dialogbox", "player", -1, "One or more party members are below Exalted LV30. Cannot enter instance." )
					return
				endif
				
				//???????
				$player_time = GetPlayerVar( $teamplayer_id , 4087 )
				//????????????????,???
				if $player_time == $today_time
					#name = GetPlayerInfo( $teamplayer_id , "name" )
					BC( "chat", "player", -1, #name ,"You have already entered Heartless Canyon today." )
					BC( "dialogbox", "player", -1,"One or more party members have already entered Castle Hartlis today." )
					return
				endif
				
				//???????????
				$field_add = $field_add + $temp_level
	
			endif
		endwhile
		
		//-------------------????----------------------------------
		
		if $player_id == $team_headerID
			$is_success = FlyToEctype( $team_headerID, 566, 87, 38)
			if $is_success > 0
				SetPlayerActLog($team_headerID,42,2)
				SetPlayerVar( $team_headerID , 3844, $is_success)
				SetPlayerVar($team_headerID,4087,$today_time)
				$ectype_ID = GetEctypeID(-1, 566)	
//?????							
				StartEctypeTimer($ectype_ID, 0)
				BC( "screen", "player", $team_headerID, "An alluring song brings you to Heartless Canyon.")
				
			endif
		endif
		
		$n2 = 0
		while $n2 < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n2 )
			$n2 = $n2 + 1
			//????,6??????
				if $teamplayer_id != -1				
					if $teamplayer_id != $team_headerID
					$is_suc = FlyToEctype( $teamplayer_id , 566, 87, 38)
						if $is_suc > 0
							SetPlayerActLog($team_headerID,42,2)
							SetPlayerVar( $teamplayer_id , 3844 , $is_suc )								
							//???????????????
							SetPlayerVar( $teamplayer_id , 4087 , $today_time )
						else
							BC( "dialogbox", "player", -1, "Failure to enter the instance. Try again later or on another Realm." )
						endif
					endif
				endif
		endwhile
		
		//??????????
		$field_ave = $field_add / $team_count
		$ectype_id = GetEctypeID($team_headerID,566)
		SetEctypeVar($ectype_id,98,$field_ave)
		SetEctypeVar($ectype_id,99,1)
		
		//-------------------????----------------------------------
		

		//??????????
		$history = GetGlobalVar( 925 )
		$history = $history + $team_count
		SetGlobalVar( 925 , $history )

		


	}	
	
	//???????????
	function OnOption2(){
		
		$ectype_ID = GetEctypeID( -1 , 566 )
		//????ID
		$ectype_UID = GetEctypeUniqueID( -1 , 566 )
		$player_number = GetMapPlayerCount($ectype_ID)
		
		
		//????,???3?,???6?
		$Kind = GetEctypeVar($ectype_ID,99)
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "The Instance is full, unable to enter!" )
			return
		endif
		
		if $Kind < 1
			if $player_number >= 3
				BC( "dialogbox", "player", -1, "The Instance is full, unable to enter!" )
				return
			endif
		endif
		
		$temp_level = GetFieldLevel( -1 )
		if $temp_level < 30
			BC( "dialogbox", "player", -1, "You are below Exalted LV30. Cannot enter instance." )
			return
		endif
		//-----------------------------------------------------------------------------------
		//??????
		if $ectype_ID > 0
			//????????????;
			$Player_UID = GetPlayerVar( -1, 3844 )
			//??????????????
			if $Player_UID == $ectype_UID
				//???????,?????
			else
				//????????
			//-----------------------------------------------------------------------------------
				$last_time = GetPlayerVar(-1,4087)
				$today_time = GetSystemTime("yday")
				if $last_time == $today_time	
					BC( "dialogbox", "player", -1, "You have already entered Golden Coast today. Cannot enter instance." )
					return
				endif
			endif
		else
			//???????,??
			return
		endif
		
		
		
		$is_succeed = FlyToEctype( -1 , 566, 87, 38)
		
		if $is_succeed > 0
			//??????
			$Player_UID = GetPlayerVar( -1 , 3844 )
			//??????????????
			if $Player_UID == $ectype_UID
				//?????,?????
				BC( "screen", "player", -1, "You've returned to Heartless Canyon. " )
			else
				//?????????????????,????????????,?????????

				SetPlayerVar( -1 , 3844 , $ectype_UID )
				SetPlayerVar(-1,4087,$today_time)
				BC( "screen", "player", -1, "You've entered a new instance of Heartless Canyon." )
//				SetPlayerActLog(-1,26,0)
			endif
		else
			BC( "dialogbox", "player", -1, "Instance is full. Failed to enter." )
			//???????
		endif
	}
	
	function OnOption3(){	
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Only the party leader can reset the instance." )
			return
		endif
		
		$ectype_ID = GetEctypeID( -1 ,566 )
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number != 0
			BC( "dialogbox", "player", -1, "Unable to reset the instance! Party members are still inside." )
			return
		endif
		
		$revalue = ReleaseEctype( -1, 566 )
		if $revalue == 0
			BC( "screen", "team", $team_headerID, "The Castle Hartlis instance is reset!" )
			BC( "dialogbox", "player", -1, "The Castle Hartlis instance is reset!" )
		else
			BC( "dialogbox", "player", -1, "Failed to reset instance." )
		endif
	}
	
	function OnOption4(){
			
			$TaskCount = GetTaskCount( -1 )
	   	if $TaskCount >= 20
			  BC( "dialogbox", "player", -1, "Sorry, your quest list is full." )
			  return
		  endif
		
		  $level = GetPlayerInfo( -1, "level" )
		  if $level < 120
			  BC( "dialogbox", "player", -1, "You must be LV120+ to accept." )
			  return
		  endif
		  $level1 = GetFieldLevel( -1 )
		  if $level1 < 30
			  BC( "dialogbox", "player", -1, "You must be Exalted LV30 to accept." )
			  return
		  endif
		
		  $playervar = GetPlayerVar( -1, 4090 )
		  $today_time = GetSystemTime( "yday" )
		  if $playervar == $today_time
			  BC( "dialogbox", "player", -1, "You've already accepted this quest today." )
			  return
		  endif
		
		  AcceptTask( -1, 1877 )
		  SetPlayerVar( -1, 4090, $today_time )
					
	}