	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/04
	//		Author:??
	//		TaskName:HD-shiliandongku-NPC1.s
	//		TaskID:????????-????NPC???????
	//
	//****************************************
	
	//??????
	function OnRequest(){
	//?????8??10???,?????12??2???,?????
		$time = GetSystemTime( "hour" )
		$today_time = GetSystemTime( "yday" )
		//BC( "chat", "player", -1, "test:",$time )
		if $time < 20 
			if $time > 13
				DisableNpcOption(0)
				return
			endif
		endif
		if $time > 21
			DisableNpcOption(0)
			return
		endif	
		if $time < 12
			DisableNpcOption(0)
			return
		endif
		
		$player_time = GetPlayerVar( -1, 3600 )
			
		if $player_time == $today_time
			DisableNpcOption(0)
			return
		endif
	}
	
	//??NPC1????????,??????
	function OnOption0(){
	//????????
		$time = GetSystemTime( "hour" )
	//?????8??10???,?????12??2???
		if $time < 20 
			if $time > 13
				BC( "dialogbox", "player", -1, "The event has not started yet." )
				return
			endif
		endif
		if $time > 21
			BC( "dialogbox", "player", -1, "The event has not started yet." )
			return
		endif	
		if $time < 12
			BC( "dialogbox", "player", -1, "The event has not started yet." )
			return
		endif
		//?????
		$team_count = GetTeamMemberCount(-1)
		//????????

		if $team_count < 2
			BC( "chat", "player", -1, "There must be 2 or more players in your party" )
			//??????,???????
			return
		endif
		
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()

		//????????
		if $player_id != $team_headerID
			//??????,?????
			BC( "dialogbox", "player", -1, "You are not the party leader." )
			return
		endif
		
		
		$size = GetTeamAreaSize(-1)
		//?????????
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Some of your party members are too far away!" )
			return
		endif
		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		//BC( "chat", "player", -1, $teamplayer1_id," ",$teamplayer2_id," " ,$teamplayer3_id," ",$teamplayer4_id," ",$teamplayer5_id," ",$teamplayer6_id)
		//????????
		$today_time = GetSystemTime( "yday" )
		//???????0???????????
		$foul_player = 0
		
		if $teamplayer1_id != -1
			//????????????
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3600 )
			//????????????????,???
			if $player1_time == $today_time
				//??1????????????,????????
				//?????????????,??????????????
				#name = GetPlayerInfo( $teamplayer1_id, "name", )
				BC( "chat", "player", -1, #name ,"You have finished your trial" )
				//?????+1
				$foul_player += 1
			endif
		endif
		
		if $teamplayer2_id != -1
			//????????????
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3600 )
			//????????????????,???
			if $player2_time == $today_time
				//??2????????????,????????
				//?????????????,??????????????
				#name = GetPlayerInfo( $teamplayer2_id, "name", )
				BC( "chat", "player", -1, #name ,"You have finished your trial" )
				//?????+1
				$foul_player += 1
			endif
		endif
		
		if $teamplayer3_id != -1
			//????????????
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3600 )
			//????????????????,???
			if $player3_time == $today_time
				//??3????????????,????????
				//?????????????,??????????????
				#name = GetPlayerInfo( $teamplayer3_id, "name", )
				BC( "chat", "player", -1, #name ,"You have finished your trial" )
				//?????+1
				$foul_player += 1
			endif
		endif
		
		if $teamplayer4_id != -1
			//????????????
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3600 )
			//????????????????,???
			if $player4_time == $today_time
				//??4????????????,????????
				//?????????????,??????????????
				#name = GetPlayerInfo( $teamplayer4_id, "name", )
				BC( "chat", "player", -1, #name ,"You have finished your trial" )
				//?????+1
				$foul_player += 1
			endif
		endif
		
		if $teamplayer5_id != -1
			//????????????
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3600 )
			//????????????????,???
			if $player5_time == $today_time
				//??5????????????,????????
				//?????????????,??????????????
				#name = GetPlayerInfo( $teamplayer5_id, "name", )
				BC( "chat", "player", -1, #name ,"You have finished your trial" )
				//?????+1
				$foul_player += 1
			endif
		endif
		
		if $teamplayer6_id != -1
			//????????????
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3600 )
			//????????????????,???
			if $player6_time == $today_time
				//??6????????????,????????
				//?????????????,??????????????
				#name = GetPlayerInfo( $teamplayer6_id, "name", )
				BC( "chat", "player", -1, #name ,"You have finished your trial" )
				//?????+1
				$foul_player += 1
			endif
		endif
		
		//??????????
		if $foul_player > 0
			//BC( "chat", "player", -1, "GUID:05159000012" )
			return
		endif
		
		//?????
		$total_level = 0
		if $teamplayer1_id != -1
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )

			if $temp_level < 30
				//??????30???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
			endif
			//????
			//BC( "chat", "player", -1, "GUID:05159000014",$temp_level,"GUID:05159000015",$total_level)
			$total_level += $temp_level
			//BC( "chat", "player", -1, "GUID:05159000016",$temp_level,"GUID:05159000017",$total_level)
		endif
		if $teamplayer2_id != -1
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
			if $temp_level < 30
				//??????30???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
			endif
			//????
			
			$total_level += $temp_level
			//BC( "chat", "player", -1, "GUID:05159000019",$temp_level,"GUID:05159000020",$total_level)
		endif
		if $teamplayer3_id != -1
			$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
			if $temp_level < 30
				//??????30???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
			endif
			//????
			
			$total_level += $temp_level
			//BC( "chat", "player", -1, "GUID:05159000022",$temp_level,"GUID:05159000023",$total_level)
		endif
		if $teamplayer4_id != -1
			$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
			if $temp_level < 30
				//??????30???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
			endif
			//????
			
			$total_level += $temp_level
			//BC( "chat", "player", -1, "GUID:05159000025",$temp_level,"GUID:05159000026",$total_level)
		endif
		if $teamplayer5_id != -1
			$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
			if $temp_level < 30
				//??????30???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
			endif
			//????
			
			$total_level += $temp_level
			//BC( "chat", "player", -1, "GUID:05159000028",$temp_level,"GUID:05159000029",$total_level)
		endif
		if $teamplayer6_id != -1
			$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
			if $temp_level < 30
				//??????30???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
				//????
			
			endif
			$total_level += $temp_level
			//BC( "chat", "player", -1, "GUID:05159000031",$temp_level,"GUID:05159000032",$total_level)
		endif
		
		//????????
		$average_level = $total_level / $team_count
		//????????ID???.
		$map_id = 0
		$map_x = 0
		$map_y = 0
		$quest_id = 0
		$cavern = 0
		//????,????
		//$average_level = 35
		if $average_level < 30
			BC( "chat", "player", -1, "Average level below 30,you can not enter")
			return
		endif
		
		if $average_level >= 30 
			if $average_level < 45
				//??30-45???
				$map_id = 114
				$map_x = 25
				$map_y = 44
				$quest_id = 4300
				$cavern = 1
			endif
		endif
		
		if $average_level >= 45 
			if $average_level < 60
				//??45-60???
				$map_id = 115
				$map_x = 25
				$map_y = 44
				$quest_id = 4300
				$cavern = 2
			endif
		endif
		
		if $average_level >= 60
			if $average_level < 75
				//??60-75???
				$map_id = 114
				$map_x = 94
				$map_y = 41
				$quest_id = 4300
				$cavern = 3
			endif
		endif
		
		if $average_level >= 75 
			if $average_level < 90
				//??75-90???
				$map_id = 115
				$map_x = 94
				$map_y = 41
				$quest_id = 4300
				$cavern = 4
			endif
		endif
		
		if $average_level >= 90 
			if $average_level < 105
				//??90-105???
				$map_id = 114
				$map_x = 31
				$map_y = 99
				$quest_id = 4300
				$cavern = 5
			endif
		endif
		if $average_level >= 105 
			if $average_level < 120
				//??105-120???
				$map_id = 115
				$map_x = 31
				$map_y = 99
				$quest_id = 4300
				$cavern = 6
			endif
		endif
		if $average_level >= 120
			if $average_level < 135
		//??120-135???
				$map_id = 114
				$map_x = 95
				$map_y = 97
				$quest_id = 4300
				$cavern = 7
			endif
		endif
		if $average_level >= 135 
		//????150????150???.??????????
			//if $average_level < 150
		//??135-150???
				$map_id = 115
				$map_x = 95
				$map_y = 97
				$quest_id = 4300
				$cavern = 8
			//endif
		endif
		//????????
		$pass_player_id = 0
		
		//??????????
		$players_count = GetServerVar(900)
		//?????????
		$players_count = $players_count + $team_count
		//??????
		SetServerVar( 900, $players_count )
		
		//?????????????,???????????,????????,?????????????
		//1???
		if $teamplayer1_id != -1
			//?????????????????????
			//BC( "chat", "player", -1, "6" )
			//????ID??????
			$pass_player_id = $teamplayer1_id
			//????????????
			call SetTaskType()

			//??????????,???????
			$result = AcceptTask($teamplayer1_id, $quest_id)
			//BC( "chat", "player", -1, "GUID:05159000034" )
			//????????
			if $result == 0
				//????

				$result = FlyToMap( $teamplayer1_id, $map_id, $map_x, $map_y )
				//??????
				if $result == 0
			
				//??????????????????
					$result = SetPlayerVar( $teamplayer1_id, 3600, $today_time )
					$result = SetPlayerVar( $teamplayer1_id, 3200, $cavern )
				else
					BC( "chat", "player", -1, "Teleport failed" )
				endif
			else
				BC( "chat", "player", -1, "N/A?????" )
			endif
		else
		endif
		
		
		//2???
		if $teamplayer2_id != -1
			//?????????????????????
			//????ID??????
			$pass_player_id = $teamplayer2_id
			//????????????
			call SetTaskType()
			//??????????,???????
			$result = AcceptTask( $teamplayer2_id, $quest_id )
			//????????
			if $result == 0
				//????
				$result = FlyToMap( $teamplayer2_id, $map_id, $map_x, $map_y )
				//??????
				if $result == 0
				//??????????????????
					$result = SetPlayerVar( $teamplayer2_id, 3600, $today_time )
					$result = SetPlayerVar( $teamplayer2_id, 3200, $cavern )
				else
				endif
			else
			endif
		else
		endif
		//3???
			
		if $teamplayer3_id != -1
			//?????????????????????
			//????ID??????
			$pass_player_id = $teamplayer3_id
			//????????????
			call SetTaskType()
			//??????????,???????
			$result = AcceptTask( $teamplayer3_id, $quest_id )
			//????????
			if $result == 0
				//????
				$result = FlyToMap( $teamplayer3_id, $map_id, $map_x, $map_y )
				//??????
				if $result == 0
				//??????????????????
					$result = SetPlayerVar( $teamplayer3_id, 3600, $today_time )
					$result = SetPlayerVar( $teamplayer3_id, 3200, $cavern )
				else
				endif
			else
			endif
		else
		endif
		
		//4???
		if $teamplayer4_id != -1
			//?????????????????????
			//????ID??????
			$pass_player_id = $teamplayer4_id
			//????????????
			call SetTaskType()
			//??????????,???????
			$result = AcceptTask( $teamplayer4_id, $quest_id )
			//????????
			if $result == 0
				//????
				$result = FlyToMap( $teamplayer4_id, $map_id, $map_x, $map_y )
				//??????
				if $result == 0
				//??????????????????
					$result = SetPlayerVar( $teamplayer4_id, 3600, $today_time )
					$result = SetPlayerVar( $teamplayer4_id, 3200, $cavern )
				else
				endif
			else
			endif
		else
		endif
		
		//5???	
		if $teamplayer5_id != -1
			//?????????????????????
			//????ID??????
			$pass_player_id = $teamplayer5_id
			//????????????
			call SetTaskType()
			//??????????,???????
			$result = AcceptTask( $teamplayer5_id, $quest_id )
			//????????
			if $result == 0
				//????
				$result = FlyToMap( $teamplayer5_id, $map_id, $map_x, $map_y )
				//??????
				if $result == 0
				//??????????????????
					$result = SetPlayerVar( $teamplayer5_id, 3600, $today_time )
					$result = SetPlayerVar( $teamplayer5_id, 3200, $cavern )
				else
				endif
			else
			endif
		else
		endif
		//6???	
		if $teamplayer6_id != -1
			//?????????????????????
			//????ID??????
			$pass_player_id = $teamplayer6_id
			//????????????
			call SetTaskType()
			//??????????,???????
			$result = AcceptTask( $teamplayer6_id, $quest_id )
			//????????
			if $result == 0
				//????
				$result = FlyToMap( $teamplayer6_id, $map_id, $map_x, $map_y )
				//??????
				if $result == 0
				//??????????????????
				//?????????????
					$result = SetPlayerVar( $teamplayer6_id, 3600, $today_time )
					$result = SetPlayerVar( $teamplayer6_id, 3200, $cavern )
				else
				endif
			else
			endif
		else
		endif
	}
	

	//??NPC1????????,????????,????
	function OnOption1(){
		
		$time = GetSystemTime( "hour" )
		//???????8??9???
		if $time != 22
			BC( "chat", "player", -1, "The reward of last event has sent.Please come between 10 and 11 o'clock to get it." )
			return
		endif

		//????????????????????
		$player_complate_map_id = GetPlayerVar( -1, 3200 )
		
		if $player_complate_map_id == 0
			BC( "chat", "player", -1, "You did not finish the event of Cavern of Trials succssfully." )
			return
		endif
		//??????,??????????????
		$player_complate_map_id += 12
		
		$is_complate = GetServerVar($player_complate_map_id)
		
		if $is_complate == 1
			//?????????????
			$result = SetPlayerVar( -1, 3200 , 0)
			//??????
			if $result == 0
			//????.
				BC( "chat", "player", -1, "You receive the reward of the event of Cavern of Trials." )
				return
			endif
		else
			BC( "chat", "player", -1, "You did not reach the trial goal of Cavern of Trials." )
			return
		endif
		
	}
	//???????????
	function SetTaskType(){
		
		CancelTask ($pass_player_id, 4300 )
	}