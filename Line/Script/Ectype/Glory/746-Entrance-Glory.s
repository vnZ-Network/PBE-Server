	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/24
	//		Author:???
	//		TaskName:746-Entrance-Glory.s
	//		TaskID:????????
	//
	//****************************************
	//
	
	
	//????532
	//???????????                   4013
	//?????????           						 3329
	//?????????????????ID     3857
	
	
	//option0  ????
	//option1  ????
	
	
	
	function OnRequest(){
		
		//?????????????
		$ectype_ID = GetEctypeID( -1 , 532 )
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
		
		
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
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
			
				//???????10?
				$temp_level = GetFieldLevel($teamplayer_id)
				if $temp_level < 10
					//????????10???,????
					BC( "dialogbox", "player", -1, "You must be at least Exalted LV10 to enter the instance!" )
					return
				endif
				
				
				//???????
				$player_time = GetPlayerVar( $teamplayer_id , 4013 )
				//????????????????,???
				if $player_time == $today_time
					//?????????????,??????????????
					$player_number =  GetPlayerVar( $teamplayer_id, 3329 )
					if $player_number >= 1
						#name = GetPlayerInfo( $teamplayer_id , "name" )
						BC( "chat", "player", -1, #name ,",ÿyou have already entered the Radiant Temple today." )
						BC( "dialogbox", "player", -1,"One or more party members have already entered Radiant Temple today." )
						return
					endif
				endif
			endif
		endwhile
		
		if $player_id == $team_headerID
			$is_success = FlyToEctype( $team_headerID, 532, 8, 100)
			if $is_success > 0
				SetPlayerActLog($team_headerID,39,0)
				SetPlayerVar( $team_headerID , 3857, $is_success)
				$ectype_ID = GetEctypeID(-1, 532)
				StartEctypeTimer($ectype_ID, 0)
			endif
		endif
		
		$n2 = 0
		while $n2 < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n2 )
			$n2 = $n2 + 1
			//????,6??????
			if $teamplayer_id != -1
				$is_suc = FlyToEctype( $teamplayer_id , 532 , 8 , 100 )
				if $is_suc > 0
					if $teamplayer_id != $team_headerID
						SetPlayerActLog($teamplayer_id,39,0)
					endif
					SetPlayerVar( $teamplayer_id , 3857 , $is_suc )
					$player_time =  GetPlayerVar( $teamplayer_id, 4013 )
		
					if $player_time != $today_time
					
						//???????????????
						SetPlayerVar( $teamplayer_id, 4013 ,$today_time )
						//???????????1
						SetPlayerVar( $teamplayer_id , 3329 , 1 )
		
						BC( "screen", "player", $teamplayer_id, "Welcome to the Radiant Temple!" )
					else
						$player_number =  GetPlayerVar( $teamplayer_id , 3329 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer_id , 3329 ,$player_number )
			
						$temp_number = 1 - $player_number
						BC( "screen", "player", $teamplayer_id, "You entered a new instance of Radiant Temple! Today you can enter the instance ", $temp_number , " more times." )
			
					endif
				else
					BC( "dialogbox", "player", -1, "Failed to create instance, try later or change realm." )
				endif
			endif
		endwhile
		

		//??????????
		$history = GetGlobalVar( 980 )
		$history = $history + $team_count
		SetGlobalVar( 980 , $history )

		


	}
	
	
	
	//???????????
	function OnOption1(){
		
		$ectype_ID = GetEctypeID( -1 , 532 )
		//????ID
		$ectype_UID = GetEctypeUniqueID( -1 , 532 )
		$player_number = GetMapPlayerCount($ectype_ID)
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "The Instance is full, unable to enter!" )
			return
		endif
		$temp_level = GetFieldLevel( -1 )
		if $temp_level < 10
			BC( "dialogbox", "player", -1, "You must be at least Exalted LV10 to enter!" )
			return
		endif
		//-----------------------------------------------------------------------------------
		//??????
		if $ectype_ID > 0
			//????????,????????????????????????,???.??,????+1,???,?????
			$today_time = GetSystemTime( "yday" )
			$player_time =  GetPlayerVar( -1, 4013 )
			$Player_UID = GetPlayerVar( -1, 3857 )
			//??????????????
			if $Player_UID == $ectype_UID
				//???????,?????
			else
				//????????
			//-----------------------------------------------------------------------------------
				if $player_time == $today_time
					$player_number =  GetPlayerVar( -1, 3329 )
					if $player_number >= 1
						BC( "dialogbox", "player", -1, "You have entered the Radiant Temple today. Cannot enter again." )
						return
					endif
				endif
			endif
		else
			//???????,??
			return
		endif
		
		
		
		$is_succeed = FlyToEctype( -1 , 532 , 8 , 100 )
		
		if $is_succeed > 0
			//??????
			$Player_UID = GetPlayerVar( -1 , 3857 )
			//??????????????
			if $Player_UID == $ectype_UID
				//?????,?????
				BC( "screen", "player", -1, "You returned to Radiant Temple!" )
			else
				//?????????????????,????????????,?????????

				SetPlayerVar( -1 , 3857 , $ectype_UID )
				if $player_time != $today_time
					SetPlayerVar( -1, 4013 , $today_time )
					SetPlayerVar( -1 , 3329 , 1 )
				else
					$player_number =  GetPlayerVar( -1 , 3329 )
					$player_number = $player_number + 1
					SetPlayerVar( -1 , 3329 , $player_number )
				endif
				BC( "screen", "player", -1, "You have entered a new Radiant Temple instance!" )
				SetPlayerActLog(-1,39,0)
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
		
		$ectype_ID = GetEctypeID( -1 ,532 )
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number != 0
			BC( "dialogbox", "player", -1, "Unable to reset the instance! Party members are still inside." )
			return
		endif
		
		$revalue = ReleaseEctype( -1, 532 )
		if $revalue == 0
			BC( "screen", "team", $team_headerID, "The Radiant Temple instance has been reset!" )
			BC( "dialogbox", "player", -1, "The Radiant Temple instance has been reset!" )
		else
			BC( "dialogbox", "player", -1, "Failed to reset instance." )
		endif
	}