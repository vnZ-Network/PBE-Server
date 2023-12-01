	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/07
	//		Author:???
	//		TaskName:Ectype-Titan-Npc-734.s
	//		TaskID:??????
	//
	//****************************************
	//
	function OnRequest(){
		
		//?????????????
		
		$ectype_ID = GetEctypeID( -1, 303 )
		$ectype_IDM = GetEctypeID( -1, 313 )
		$ectype_IDL = GetEctypeID( -1, 332 )
		
		if $ectype_ID > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		if $ectype_IDM > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		if $ectype_IDL > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		if $ectype_ID < 0
			if $ectype_IDM < 0
				if $ectype_IDL < 0
					DisableNpcOption(2)
				endif
			endif
		endif
		
	}
	
	//????
	function OnOption0(){
		
		$team_count = GetTeamMemberCount(-1)
		
		//????????
		if $team_count < 1
			BC( "dialogbox", "player", -1, "Only a party of 1 or more members can challenge the Titan Throne." )
			return
			$team_headerID = GetTeamHeaderID(-1)
			$player_id = GetPlayerID()

			if $player_id != $team_headerID
				BC( "dialogbox", "player", -1, "Please form a party." )
				return
			endif
		else
			$team_headerID = GetTeamHeaderID(-1)
			$player_id = GetPlayerID()
			//????????
			if $player_id != $team_headerID
				BC( "dialogbox", "player", -1, "You are not the party leader." )
				return
			endif
		endif
		
		$size = GetTeamAreaSize( -1 )
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Your party member is too far away." )
			return
		endif
		
		$today_time = GetSystemTime( "yday" )
		$n = 0
		while $n < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n )
			$n = $n + 1
			
			$player_time =  GetPlayerVar( $teamplayer_id, 4097 )
			$player_time2 = GetPlayerVar( $teamplayer_id, 4099 )
			$today_time = GetSystemTime( "yday" )
			
			if $teamplayer_id != -1
			$temp_level = GetPlayerInfo( $teamplayer_id, "level" )
				if $temp_level < 110
					BC( "dialogbox", "player", -1, "At least one member of your party is below LV110. Unable to enter." )
					return
				endif
				if $player_time == $today_time
					#name = GetPlayerInfo( $teamplayer_id, "name", )
					BC( "chat", "player", -1, #name ," has already challenged the Titan Throne today. " )
					BC( "dialogbox", "player", -1,"Your party members have finished the Titan's Throne Instance today, unable to enter." )
					return
				endif
				
				if 	$player_time2 == $today_time	
					#name = GetPlayerInfo( $teamplayer_id, "name", )
					BC( "chat", "player", -1, #name ," has already challenged the Titan Throne today. " )
					BC( "dialogbox", "player", -1,"Your party members have finished the Titan's Throne Instance today, unable to enter." )
					return
				endif
			endif
		endwhile
		
		$n2 = 0
		while $n2 < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n2 )
			$n2 = $n2 + 1
			//????,6??????
			if $teamplayer_id != -1
				$is_succeed = FlyToEctype( $teamplayer_id, 303, 36, 28 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer_id,38,0)
					SetPlayerVar( $teamplayer_id , 3833 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer_id, 4097 )
					BC( "screen", "player", $teamplayer_id, "You entered the Titan Throne. " )					
					if $player_time != $today_time			
						SetPlayerVar( $teamplayer_id, 4097 ,$today_time )
					endif
				else
					BC( "dialogbox", "player", $teamplayer_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endwhile				
			
		

		$ectype_ID = GetEctypeID( $team_headerID, 303 )
		StartEctypeTimer( $team_headerID , 303, 0 )
		//??????
		//??0,??????:0?????,1?????
		SetEctypeVar( $ectype_ID, 0, 0 )
			
		
	}
	
	//????(???)
	function OnOption1(){
		
		$team_count = GetTeamMemberCount(-1)
		//????????
		if $team_count < 3
			BC( "dialogbox", "player", -1, "Only a party of 3 or more members can challenge the Titan Throne. " )
			return
			$team_headerID = GetTeamHeaderID(-1)
			$player_id = GetPlayerID()
			//????????
			if $player_id != $team_headerID
				BC( "dialogbox", "player", -1, "Please form a party." )
				return
			endif
		else
			$team_headerID = GetTeamHeaderID(-1)
			$player_id = GetPlayerID()
			//????????
			if $player_id != $team_headerID
				BC( "dialogbox", "player", -1, "You are not the party leader." )
				return
			endif
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
		//-------------------------------------------------------------------------------------1?
		if $teamplayer1_id != -1
			$player1_time =  GetPlayerVar( $teamplayer1_id, 4099 )
			$player1_time4097 = GetPlayerVar( $teamplayer1_id, 4097 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
			if $temp_level < 110
				BC( "dialogbox", "player", -1, "At least one member of your party is below LV110. Unable to enter." )
				return
			endif
			if $player1_time == $today_time
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "chat", "player", -1, #name ," has already challenged the Titan Throne today. " )
					$Stop = $Stop + 1
			endif		
			if $player1_time4097 == $today_time
				  #name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "chat", "player", -1, #name ," has already challenged the Titan Throne today. " )
					$Stop = $Stop + 1
			endif
				
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			$player2_time =  GetPlayerVar( $teamplayer2_id, 4099 )
			$player2_time4097 = GetPlayerVar( $teamplayer2_id, 4097 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
			if $temp_level < 110
				BC( "dialogbox", "player", -1, "At least one member of your party is below LV110. Unable to enter." )
				return
			endif
			if $player2_time == $today_time
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "chat", "player", -1, #name ," has already challenged the Titan Throne today. " )
					$Stop = $Stop + 1
			endif
			if $player2_time4097 == $today_time
				  #name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "chat", "player", -1, #name ," has already challenged the Titan Throne today. " )
					$Stop = $Stop + 1
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------3?
		if $teamplayer3_id != -1
			$player3_time =  GetPlayerVar( $teamplayer3_id, 4099 )
			$player3_time4097 = GetPlayerVar( $teamplayer3_id, 4097 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
			if $temp_level < 110
				BC( "dialogbox", "player", -1, "At least one member of your party is below LV110. Unable to enter." )
				return
			endif
			if $player3_time == $today_time
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "chat", "player", -1, #name ," has already challenged the Titan Throne today. " )
					$Stop = $Stop + 1
			endif
			if $player3_time4097 == $today_time
				  #name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "chat", "player", -1, #name ," has already challenged the Titan Throne today. " )
					$Stop = $Stop + 1
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------4?
		if $teamplayer4_id != -1
			$player4_time =  GetPlayerVar( $teamplayer4_id, 4099 )
			$player4_time4097 = GetPlayerVar( $teamplayer4_id, 4097 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
			if $temp_level < 110
				BC( "dialogbox", "player", -1, "At least one member of your party is below LV110. Unable to enter." )
				return
			endif
			if $player4_time == $today_time
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "chat", "player", -1, #name ," has already challenged the Titan Throne today. " )
					$Stop = $Stop + 1
			endif
			if $player4_time4097 == $today_time
				  #name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "chat", "player", -1, #name ," has already challenged the Titan Throne today. " )
					$Stop = $Stop + 1
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------5?
		if $teamplayer5_id != -1
			$player5_time =  GetPlayerVar( $teamplayer5_id, 4099 )
			$player5_time4097 = GetPlayerVar( $teamplayer5_id, 4097 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
			if $temp_level < 110
				BC( "dialogbox", "player", -1, "At least one member of your party is below LV110. Unable to enter." )
				return
			endif
			if $player5_time == $today_time
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "chat", "player", -1, #name ," has already challenged the Titan Throne today. " )
					$Stop = $Stop + 1
			endif
			if $player5_time4097 == $today_time
				  #name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "chat", "player", -1, #name ," has already challenged the Titan Throne today. " )
					$Stop = $Stop + 1
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------6?
		if $teamplayer6_id != -1
			$player6_time =  GetPlayerVar( $teamplayer6_id, 4099 )
			$player6_time4097 = GetPlayerVar( $teamplayer6_id, 4097 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
			if $temp_level < 110
				BC( "dialogbox", "player", -1, "At least one member of your party is below LV110. Unable to enter." )
				return
			endif
			if $player6_time == $today_time
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "chat", "player", -1, #name ," has already challenged the Titan Throne today. " )
					$Stop = $Stop + 1
			endif
			if $player6_time4097 == $today_time
				  #name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "chat", "player", -1, #name ," has already challenged the Titan Throne today. " )
					$Stop = $Stop + 1
			endif
		endif
		if $Stop > 0
			BC( "dialogbox", "player", -1, "",$Stop," of your party members have already challenged the Titan Throne. " )
			return
		endif
		//------------------------------------------------------------------------------------------
		//????.?????
		
		$is_succeed = FlyToEctype( $team_headerID, 303, 36, 28 )
		if $is_succeed > 0
			SetPlayerActLog($team_headerID,38,0)
			SetPlayerVar( $team_headerID , 3833 , $is_succeed )
			$player_time =  GetPlayerVar( $team_headerID, 4099 )
			BC( "screen", "player", $team_headerID, "You entered the Titan Throne. " )
			if $player_time != $today_time		
				SetPlayerVar( $team_headerID, 4099, $today_time )
				//????ID
				$ectype_ID = GetEctypeID( $team_headerID, 303 )
				StartEctypeTimer( $team_headerID , 303, 0 )
				//??????
				SetEctypeVar( $ectype_ID, 0, 2 )
			endif
			//????-START
			$TJ_join_number = GetGlobalVar(978)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(978 , $TJ_join_number)
			//????-END
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif
		
		//------------------------------------------------------------------------------------------  1
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer1_id, 303, 36, 28 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer1_id,38,0)
					SetPlayerVar( $teamplayer1_id , 3833 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer1_id, 4099 )
					BC( "screen", "player", $teamplayer1_id, "You entered the Titan Throne. " )
					if $player_time != $today_time			
						SetPlayerVar( $teamplayer1_id, 4099 ,$today_time )
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
				$is_succeed = FlyToEctype( $teamplayer2_id, 303, 36, 28 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer2_id,38,0)
					SetPlayerVar( $teamplayer2_id , 3833 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer2_id, 4099 )
					BC( "screen", "player", $teamplayer2_id, "You entered the Titan Throne. " )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer2_id, 4099 ,$today_time )
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
				$is_succeed = FlyToEctype( $teamplayer3_id, 303, 36, 28 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer3_id,38,0)
					SetPlayerVar( $teamplayer3_id , 3833 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer3_id, 4099 )
					BC( "screen", "player", $teamplayer3_id, "You entered the Titan Throne. " )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer3_id, 4099 ,$today_time )
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
				$is_succeed = FlyToEctype( $teamplayer4_id, 303, 36, 28 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer4_id,38,0)
					SetPlayerVar( $teamplayer4_id , 3833 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer4_id, 4099 )
					BC( "screen", "player", $teamplayer4_id, "You entered the Titan Throne. " )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer4_id, 4099 ,$today_time )
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
				$is_succeed = FlyToEctype( $teamplayer5_id, 303, 36, 28 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer5_id,38,0)
					SetPlayerVar( $teamplayer5_id , 3833 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer5_id, 4099 )
					BC( "screen", "player", $teamplayer5_id, "You entered the Titan Throne. " )
					if $player_time != $today_time					
						SetPlayerVar( $teamplayer5_id, 4099 ,$today_time )
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
				$is_succeed = FlyToEctype( $teamplayer6_id, 303, 36, 28 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer6_id,38,0)
					SetPlayerVar( $teamplayer6_id , 3833 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer6_id, 4099 )
					BC( "screen", "player", $teamplayer6_id, "You entered the Titan Throne. " )
					if $player_time != $today_time					
						SetPlayerVar( $teamplayer6_id, 4099 ,$today_time )
					endif
				else
					BC( "dialogbox", "player", $teamplayer6_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		
//		$ectype_ID = GetEctypeID($team_headerID,303)
//		//??27,??????:0?????,1?????
//		SetEctypeVar( $ectype_ID, 27, 1 )
		
	}
	
	//???????????
	function OnOption2(){
			
		$ectype_ID = GetEctypeID( -1, 303 )
		$ectype_IDM = GetEctypeID( -1, 313 )
		$ectype_IDL = GetEctypeID( -1, 332 )
		
		if $ectype_ID < 0
		
		else
			call titan303()
			return
		endif
		
		if $ectype_IDM < 0
		
		else
			call titan313()
			return
		endif
		
		if $ectype_IDL < 0
		
		else
			call titan332()
			return
		endif
		
		BC( "dialogbox", "player", -1, "No instance to return to." )
		return
		
	}
	
	function titan303(){
		
		//????ID
		$ectype_UID = GetEctypeUniqueID( -1, 303 )
		$ectype_ID = GetEctypeID( -1, 303 )
		
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "Instance is full." )
			return
		endif
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 110
			BC( "dialogbox", "player", -1, "You are below LV110. Unable to enter." )
			return
		endif
		
		//-----------------------------------------------------------------------------------
		
		$today_time = GetSystemTime( "yday" )
		$player_time1 =  GetPlayerVar( -1, 4097 )
		//????
		$player_time2 =  GetPlayerVar( -1, 4098 )
		//????
		$player_time3 =  GetPlayerVar( -1, 4099 )
		//????
		
		$Player_UID = GetPlayerVar( -1, 3833 )
		if $Player_UID != $ectype_UID
			$ectype_type = GetEctypeVar( $ectype_ID, 0 )
			if $ectype_type == 0
				if $player_time1 == $today_time
					BC( "dialogbox", "player", -1, "You have already challenged the Titan Throne. " )
					return
				endif
			endif
			if $ectype_type == 1
				if $player_time2 == $today_time
					BC( "dialogbox", "player", -1, "You have already challenged the Titan Throne. " )
					return
				endif
			endif
			if $ectype_type == 2
				if $player_time3 == $today_time
					BC( "dialogbox", "player", -1, "You have already challenged the Titan Throne. " )
					return
				endif
			endif
		endif
		
		//-----------------------------------------------------------------------------------
		$is_succeed = FlyToEctype( -1, 303, 36, 28 )
		if $is_succeed > 0
			//??????
				$Player_UID = GetPlayerVar( -1, 3833 )
				//??????????????
				if $Player_UID == $ectype_UID
					//?????,?????
					BC( "dialogbox", "player", -1, "You have returned to the Titan Throne. " )
				else
					//???????????????,????????????,?????????
					SetPlayerActLog(-1,38,0)
					SetPlayerVar( -1, 3833, $ectype_UID )
					if $ectype_type == 0
						if $player_time1 != $today_time
							SetPlayerVar( -1, 4097, $today_time )
							BC( "screen", "player", -1, "You have entered the Titan Throne. " )
						endif
					endif
					if $ectype_type == 1
						if $player_time2 != $today_time
							SetPlayerVar( -1, 4098, $today_time )
							BC( "screen", "player", -1, "You have entered the Titan Throne. " )
						endif
					endif
					if $ectype_type == 2
						if $player_time3 != $today_time
							SetPlayerVar( -1, 4099, $today_time )
							BC( "screen", "player", -1, "You have entered the Titan Throne. " )
						endif
					endif
				endif
		else
			BC( "dialogbox", "player", -1, "Instance is full. Failed to enter." )
			//???????
		endif
		
	}
	
	function titan313(){
		
		//????ID
		$ectype_UID = GetEctypeUniqueID( -1, 313 )
		$ectype_ID = GetEctypeID( -1, 313 )
		
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "Instance is full." )
			return
		endif
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 110
			BC( "dialogbox", "player", -1, "You are below LV110. Unable to enter." )
			return
		endif
		
		//-----------------------------------------------------------------------------------
		
		$today_time = GetSystemTime( "yday" )
		$player_time1 =  GetPlayerVar( -1, 4097 )
		//????
		$player_time2 =  GetPlayerVar( -1, 4098 )
		//????
		$player_time3 =  GetPlayerVar( -1, 4099 )
		//????
		
		$Player_UID = GetPlayerVar( -1, 3833 )
		if $Player_UID != $ectype_UID
			$ectype_type = GetEctypeVar( $ectype_ID, 0 )
			if $ectype_type == 0
				if $player_time1 == $today_time
					BC( "dialogbox", "player", -1, "You have already challenged the Titan Throne. " )
					return
				endif
			endif
			if $ectype_type == 1
				if $player_time2 == $today_time
					BC( "dialogbox", "player", -1, "You have already challenged the Titan Throne. " )
					return
				endif
			endif
			if $ectype_type == 2
				if $player_time3 == $today_time
					BC( "dialogbox", "player", -1, "You have already challenged the Titan Throne. " )
					return
				endif
			endif
		endif
		
		
		//-----------------------------------------------------------------------------------
		$is_succeed = FlyToEctype( -1, 313, 40, 80 )
		if $is_succeed > 0
			//??????
				$Player_UID = GetPlayerVar( -1, 3833 )
				//??????????????
				if $Player_UID == $ectype_UID
					//?????,?????
					BC( "dialogbox", "player", -1, "You have returned to the Titan Throne. " )
				else
					//???????????????,????????????,?????????
					SetPlayerVar( -1, 3833, $ectype_UID )
					if $ectype_type == 0
						if $player_time1 != $today_time
							SetPlayerVar( -1, 4097, $today_time )
							BC( "screen", "player", -1, "You have entered the Titan Throne. " )
						endif
					endif
					if $ectype_type == 1
						if $player_time2 != $today_time
							SetPlayerVar( -1, 4098, $today_time )
							BC( "screen", "player", -1, "You have entered the Titan Throne. " )
						endif
					endif
					if $ectype_type == 2
						if $player_time3 != $today_time
							SetPlayerVar( -1, 4099, $today_time )
							BC( "screen", "player", -1, "You have entered the Titan Throne. " )
						endif
					endif
				endif
		else
			BC( "dialogbox", "player", -1, "Instance is full. Failed to enter." )
			//???????
		endif
		
	}
	
	function titan332(){
		
		//????ID
		$ectype_UID = GetEctypeUniqueID( -1, 332 )
		$ectype_ID = GetEctypeID( -1, 332 )
		
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "Instance is full." )
			return
		endif
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 110
			BC( "dialogbox", "player", -1, "You are below LV110. Unable to enter." )
			return
		endif
		
		//-----------------------------------------------------------------------------------
		
		$today_time = GetSystemTime( "yday" )
		$player_time1 =  GetPlayerVar( -1, 4097 )
		//????
		$player_time2 =  GetPlayerVar( -1, 4098 )
		//????
		$player_time3 =  GetPlayerVar( -1, 4099 )
		//????
		
		$Player_UID = GetPlayerVar( -1, 3833 )
		if $Player_UID != $ectype_UID
			$ectype_type = GetEctypeVar( $ectype_ID, 0 )
			if $ectype_type == 0
				if $player_time1 == $today_time
					BC( "dialogbox", "player", -1, "You have already challenged the Titan Throne. " )
					return
				endif
			endif
			if $ectype_type == 1
				if $player_time2 == $today_time
					BC( "dialogbox", "player", -1, "You have already challenged the Titan Throne. " )
					return
				endif
			endif
			if $ectype_type == 2
				if $player_time3 == $today_time
					BC( "dialogbox", "player", -1, "You have already challenged the Titan Throne. " )
					return
				endif
			endif
		endif
		
		//-----------------------------------------------------------------------------------
		$is_succeed = FlyToEctype( -1, 332, 88, 107 )
		if $is_succeed > 0
			//??????
				$Player_UID = GetPlayerVar( -1, 3833 )
				//??????????????
				if $Player_UID == $ectype_UID
					//?????,?????
					BC( "dialogbox", "player", -1, "You have returned to the Titan Throne. " )
				else
					//???????????????,????????????,?????????
					SetPlayerVar( -1, 3833, $ectype_UID )
					if $ectype_type == 0
						if $player_time1 != $today_time
							SetPlayerVar( -1, 4097, $today_time )
							BC( "screen", "player", -1, "You have entered the Titan Throne. " )
						endif
					endif
					if $ectype_type == 1
						if $player_time2 != $today_time
							SetPlayerVar( -1, 4098, $today_time )
							BC( "screen", "player", -1, "You have entered the Titan Throne. " )
						endif
					endif
					if $ectype_type == 2
						if $player_time3 != $today_time
							SetPlayerVar( -1, 4099, $today_time )
							BC( "screen", "player", -1, "You have entered the Titan Throne. " )
						endif
					endif
				endif
		else
			BC( "dialogbox", "player", -1, "Instance is full. Failed to enter." )
			//???????
		endif
		
	}
	