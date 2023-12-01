	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/10/29
	//		Author:???
	//		TaskName:Ectype-huanlongyigu-Npc-Enter-2051.s
	//		TaskID:????????
	//
	//****************************************
	//
	
	
	//????228
	//???????????       3769
	//?????????           3408
	//?????????????????ID     3810
	
	//option1  ????????
	//option1  ????????
	//option2  ????
	
	//????38:??????,0???,1???
	
	
	
	function OnRequest(){
		
		//?????????????
		$ectype_ID = GetEctypeID( -1 , 228 )
		if $ectype_ID > 0
			//?????ID?,??????
			DisableNpcOption(0)
			DisableNpcOption(1)
		else
			//?ID,??????
			DisableNpcOption(2)
		endif
		
		//??????
		$line = GetServerLineID()
		if $line != 3
			if $line != 4
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
			endif
		endif
		
	}
	
	function OnOption0(){
		
		//????? 3 5 7
//		$week = GetSystemTime("week")
//		if $week != 3
//			if $week != 5
//				if $week != 0
//					BC( "dialogbox", "player", -1, "Sorry, the instance is only open on Wednesday, Friday, and Sunday!" )
//					return	
//				endif
//			endif
//		endif
		
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Sorry, only the party leader can enter you into the instance!" )
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
			
				//?????95?
				$temp_level = GetPlayerInfo( $teamplayer_id, "level" )
				if $temp_level < 95
					//??????95???,????
					BC( "dialogbox", "player", -1, "You must be at least LV95 to enter!" )
					return
				endif
				
				//???????
				$player_time =  GetPlayerVar( $teamplayer_id , 3769 )
				//????????????????,???
				if $player_time == $today_time
					//?????????????,??????????????
					$player_number =  GetPlayerVar( $teamplayer_id, 3408 )
					if $player_number >= 1
						#name = GetPlayerInfo( $teamplayer_id , "name" )
						BC( "chat", "player", -1, #name ,"You have already entered the Pit of Reckoning today!" )
						BC( "dialogbox", "player", -1,"Your party members have finished the Pit of Reckoning today, unable to enter." )
						return
					endif
				endif
			endif
		endwhile
		
		$n2 = 0
		while $n2 < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n2 )
			$n2 = $n2 + 1
			//????,6??????
			if $teamplayer_id != -1
				$ectypeid = FlyToEctype( $teamplayer_id , 228 , 90 , 88 )
				if $ectypeid > 0
					SetPlayerActLog($teamplayer_id,37,0)
					SetPlayerVar( $teamplayer_id , 3810 , $ectypeid )
					$player_time =  GetPlayerVar( $teamplayer_id, 3769 )
					
					
		
					if $player_time != $today_time
					
						//???????????????
						SetPlayerVar( $teamplayer_id, 3769 ,$today_time )
						//???????????1
						SetPlayerVar( $teamplayer_id , 3408 , 1 )
		
						BC( "screen", "player", $teamplayer_id, "You have entered a new Pit of Reckoning." )
		
					//StartE	ctypeTimer( $teamplayer_id , 228 ,0 )
					else
						$player_number =  GetPlayerVar( $teamplayer_id , 3408 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer_id , 3408 ,$player_number )
			
						$temp_number = 1 - $player_number
						BC( "screen", "player", $teamplayer_id, "You have entered Pit of Reckoning. You can enter ", $temp_number , " more times today." )
			
						//$ectype_ID = GetEctypeID($team_headerID ,222)
						//???????,0?
						//StartEctypeTimer($team_headerID , 222 ,0)
						//??????
						//SetEctypeVar($ectype_ID , 0, 0)
					endif
				else
					BC( "dialogbox", "player", -1, "Failed to create instance, try later or change realm." )
				endif
			endif
			//????????boss???0
			SetPlayerVar( -1 , 3747 , 0 )
		endwhile
		
		//????ID,?????????
		$ectype_ID = GetEctypeID($team_headerID,228)
		SetEctypeVar( $ectype_ID, 38, 0 )
		//??????????
		$history = GetGlobalVar( 956 )
		$history = $history + $team_count
		SetGlobalVar( 956 , $history )
		//BC( "screen", "player", -1 , "GUID:04643000010" , $history , "GUID:04643000011" )
		
	}
	
	
	//??????
	function OnOption1(){
		
		//????? 3 5 7
//		$week = GetSystemTime("week")
//		if $week != 3
//			if $week != 5
//				if $week != 0
//					BC( "dialogbox", "player", -1, "Sorry, the instance is only open on Wednesday, Friday, and Sunday!" )
//					return	
//				endif
//			endif
//		endif
		
		
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Sorry, only the party leader can enter you into the instance!" )
			return
		endif
		
		$team_count = GetTeamMemberCount(-1)
		//????????
		if $team_count < 3
			BC( "dialogbox", "player", -1, "Sorry, you must have more than 3 players to enter the instance!" )
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
			
				//?????95?
				$temp_level = GetPlayerInfo( $teamplayer_id, "level" )
				if $temp_level < 95
					//??????95???,????
					BC( "dialogbox", "player", -1, "You must be at least LV95 to enter!" )
					return
				endif
				
				
				//???????
				$player_time =  GetPlayerVar( $teamplayer_id , 3769 )
				//????????????????,???
				if $player_time == $today_time
					//?????????????,??????????????
					$player_number =  GetPlayerVar( $teamplayer_id, 3408 )
					if $player_number >= 1
						#name = GetPlayerInfo( $teamplayer_id , "name" )
						BC( "chat", "player", -1, #name ,"You have already entered the Pit of Reckoning today!" )
						BC( "dialogbox", "player", -1,"Your party members have finished the Pit of Reckoning today, unable to enter." )
						return
					endif
				endif
			endif
		endwhile
		
		
		$n2 = 0
		while $n2 < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n2 )
			$n2 = $n2 + 1
			//????,6??????
			if $teamplayer_id != -1
				$ectypeid = FlyToEctype( $teamplayer_id , 228 , 90 , 88 )
				if $ectypeid > 0
					SetPlayerActLog($teamplayer_id,37,0)
					SetPlayerVar( $teamplayer_id , 3810 , $ectypeid )
					$player_time =  GetPlayerVar( $teamplayer_id, 3769 )
					
					
		
					if $player_time != $today_time
					
						//???????????????
						SetPlayerVar( $teamplayer_id, 3769 ,$today_time )
						//???????????1
						SetPlayerVar( $teamplayer_id , 3408 , 1 )
		
						BC( "screen", "player", $teamplayer_id, "You have entered a new Pit of Reckoning." )
		
					//StartE	ctypeTimer( $teamplayer_id , 228 ,0 )
					else
						$player_number =  GetPlayerVar( $teamplayer_id , 3408 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer_id , 3408 ,$player_number )
			
						$temp_number = 1 - $player_number
						BC( "screen", "player", $teamplayer_id, "You have entered Pit of Reckoning. You can enter ", $temp_number , " more times today." )
			
						//$ectype_ID = GetEctypeID($team_headerID ,222)
						//???????,0?
						//StartEctypeTimer($team_headerID , 222 ,0)
						//??????
						//SetEctypeVar($ectype_ID , 0, 0)
					endif
				else
					BC( "dialogbox", "player", -1, "Failed to create instance, try later or change realm." )
				endif
			endif
			//????????boss???0
			SetPlayerVar( -1 , 3747 , 0 )
		endwhile
		
		//????ID,?????????
		$ectype_ID = GetEctypeID($team_headerID,228)
		SetEctypeVar( $ectype_ID, 38, 1 )
		//??????????
		$history = GetGlobalVar( 956 )
		$history = $history + $team_count
		SetGlobalVar( 956 , $history )
		//BC( "screen", "player", -1 , "GUID:04643000023" , $history , "GUID:04643000024" )
		
	}
	
	
	
	//???????????
	function OnOption2(){
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		//????ID
		$ectype_UID = GetEctypeUniqueID( -1 , 228 )
		$player_number = GetMapPlayerCount($ectype_ID)
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "The Instance is full, unable to enter!" )
			return
		endif
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 95
			BC( "dialogbox", "player", -1, "You must be at least LV95 to enter!" )
			return
		endif
		//-----------------------------------------------------------------------------------
		//??????
		if $ectype_ID > 0
			//??????,????????,????????????????????????,???.??,????+1,???,?????
			$today_time = GetSystemTime( "yday" )
			$player_time =  GetPlayerVar( -1, 3769 )
			$Player_UID = GetPlayerVar( -1, 3810 )
			//??????????????
			if $Player_UID == $ectype_UID
				//???????,?????
			else
				//??????????????
			//-----------------------------------------------------------------------------------
				if $player_time == $today_time
					$player_number =  GetPlayerVar( -1, 3408 )
					if $player_number >= 1
						BC( "dialogbox", "player", -1, "You have already entered the Pit of Reckoning today!" )
						return
					endif
				else
					//????????????,????
					$week = GetSystemTime("week")
//					if $week != 3
//						if $week != 5
//							if $week != 0
//								BC( "dialogbox", "player", -1, "Sorry, the instance is only open on Wednesday, Friday, and Sunday!" )
//								return	
//							endif
//						endif
//					endif
				endif
			endif
		else
			//???????,??
			return
		endif
		
		
		
		$is_succeed = FlyToEctype( -1 , 228 , 90 , 88 )
		
		if $is_succeed > 0
			//??????
			$Player_UID = GetPlayerVar( -1 , 3810 )
			//??????????????
			if $Player_UID == $ectype_UID
				//?????,?????
				BC( "screen", "player", -1, "Welcome back to the Pit of Reckoning!" )
			else
				//?????????????????,????????????,?????????

				SetPlayerVar( -1 , 3810 , $ectype_UID )
				if $player_time != $today_time
					SetPlayerVar( -1, 3769 , $today_time )
					SetPlayerVar( -1 , 3408 , 1 )
				else
					$player_number =  GetPlayerVar( -1 , 3408 )
					$player_number = $player_number + 1
					SetPlayerVar( -1 , 3408 , $player_number )
				endif
				BC( "screen", "player", -1, "You have entered a new Pit of Reckoning." )
				SetPlayerActLog(-1,37,0)
			endif
		else
			BC( "dialogbox", "player", -1, "Instance is full. Failed to enter." )
			//???????
		endif
	}