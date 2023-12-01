	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/18
	//		Author:??
	//		TaskName:HD-xuanshangling-NPC.s
	//		TaskID:?????????,????NPC??
	//
	//****************************************
	//3618 ???????
	//3619 ????????
	//??????
	function OnRequest(){
	//???????,?????????
	
		$today_time = GetSystemTime( "yday" )
		$time_hour = GetSystemTime( "hour" )
		$time_minute = GetSystemTime( "minute" )
		//?????.??20???????
		$temp_a = $time_hour % 2
		
		if $temp_a == 1
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			return
		endif
		
		if $time_minute > 20
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			return
		endif
		
		$player1_days =  GetPlayerVar( -1, 3618 )
		$player1_time =  GetPlayerVar( -1, 3619 )
		
		if $player1_days == $today_time
			if $player1_time == $time_hour
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
				return
			endif
		endif
		

	}
	
	function OnOption0(){
		
		$time_hour = GetSystemTime( "hour" )
		$time_minute = GetSystemTime( "minute" )
		$today_time = GetSystemTime( "yday" )
		//????????
		$temp_a = $time_hour % 2
		if $temp_a == 1
			return
		endif
		if $time_minute > 20
			return
		endif
		
		$team_count = GetTeamMemberCount(-1)
		//????????
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
			BC( "dialogbox", "player", -1, "Your pary members are too far away!" )
			return
		endif
		
		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		//--------------------------------------------------------------------------------------------
		
		if $teamplayer1_id != -1
			//???????????????
			$player1_days =  GetPlayerVar( $teamplayer1_id, 3618 )
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3619 )
			
			if $player1_days == $today_time
				if $player1_time == $time_hour
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif
		
		if $teamplayer2_id != -1
			//???????????????
			$player2_days =  GetPlayerVar( $teamplayer2_id, 3618 )
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3619 )
			
			if $player2_days == $today_time
				if $player2_time == $time_hour
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif
		
		if $teamplayer3_id != -1
			//???????????????
			$player3_days =  GetPlayerVar( $teamplayer3_id, 3618 )
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3619 )
			
			if $player3_days == $today_time
				if $player3_time == $time_hour
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif
		
		if $teamplayer4_id != -1
			//???????????????
			$player4_days =  GetPlayerVar( $teamplayer4_id, 3618 )
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3619 )
			
			if $player4_days == $today_time
				if $player4_time == $time_hour
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif
		
		if $teamplayer5_id != -1
			//???????????????
			$player5_days =  GetPlayerVar( $teamplayer5_id, 3618 )
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3619 )
			
			if $player5_days == $today_time
				if $player5_time == $time_hour
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif
		
		if $teamplayer6_id != -1
			//???????????????
			$player6_days =  GetPlayerVar( $teamplayer6_id, 3618 )
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3619 )
			
			if $player6_days == $today_time
				if $player6_time == $time_hour
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif		
		//-----------------------------------------------
		//?????
		$total_level = 0
		if $teamplayer1_id != -1
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )

			$total_level += $temp_level
		endif
		if $teamplayer2_id != -1
			
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )

			$total_level += $temp_level
			
		endif
		if $teamplayer3_id != -1
			$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
			
			$total_level += $temp_level
		endif
		if $teamplayer4_id != -1
			$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
			
			$total_level += $temp_level
			
		endif
		if $teamplayer5_id != -1
			$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
		
			$total_level += $temp_level
			
		endif
		if $teamplayer6_id != -1
			$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
		
			$total_level += $temp_level
			
		endif
		
		//?????????????????
		$average_level = $total_level / $team_count
		
		if $average_level < 20
			BC( "chat", "player", -1, "The average level is below 20, no quest for you.")
			return
		endif
		
		
		if $average_level >= 20 
			if $average_level <= 35
				$quest_id = 4371
			endif
		endif
		
		if $average_level >= 36
			if $average_level <= 50
				$quest_id = 4374
			endif
		endif
		
		if $average_level >= 51 
			if $average_level <= 65
				$quest_id = 4377
			endif
		endif
		
		
		if $average_level >= 66 
			if $average_level <= 80
				$quest_id = 4380
			endif
		endif
		
		
		if $average_level >= 81 
			if $average_level <= 95
				$quest_id = 4383
			endif
		endif
		
		if $average_level >= 96 
			BC( "chat", "player", -1, "The average level is above 96, no quest for you.")
			return
		endif

		 //??????
		$players_count = GetServerVar(909)
		$players_count = $players_count + $team_count
		SetServerVar( 909, $players_count ) 
		
		if $teamplayer1_id != -1
			$pass_player_id = $teamplayer1_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer1_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer1_id, 3618, $today_time )
				SetPlayerVar( $teamplayer1_id, 3619, $time_hour )
			else
				BC( "chat", "player",$teamplayer1_id, "System error,quest adding failed." )
			endif
		endif
		
		if $teamplayer2_id != -1
			$pass_player_id = $teamplayer2_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer2_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer2_id, 3618, $today_time )
				SetPlayerVar( $teamplayer2_id, 3619, $time_hour )
			else
				BC( "chat", "player",$teamplayer2_id, "System error,quest adding failed." )
			endif
		endif
		
		if $teamplayer3_id != -1
			$pass_player_id = $teamplayer3_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer3_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer3_id, 3618, $today_time )
				SetPlayerVar( $teamplayer3_id, 3619, $time_hour )
			else
				BC( "chat","player", $teamplayer3_id, "System error,quest adding failed." )
			endif
		endif
		
		if $teamplayer4_id != -1
			$pass_player_id = $teamplayer4_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer4_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer4_id, 3618, $today_time )
				SetPlayerVar( $teamplayer4_id, 3619, $time_hour )
			else
				BC( "chat", "player",$teamplayer4_id, "System error,quest adding failed." )
			endif
		endif
		
		if $teamplayer5_id != -1
			$pass_player_id = $teamplayer5_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer5_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer5_id, 3618, $today_time )
				SetPlayerVar( $teamplayer5_id, 3619, $time_hour )
			else
				BC( "chat", "player",$teamplayer5_id, "System error,quest adding failed." )
			endif
		endif
		
		if $teamplayer6_id != -1
			$pass_player_id = $teamplayer6_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer6_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer6_id, 3618, $today_time )
				SetPlayerVar( $teamplayer6_id, 3619, $time_hour )
			else
				BC( "chat", "player",$teamplayer6_id, -1, "System error,quest adding failed." )
			endif
		endif
	}
	
	function OnOption1(){
		
		$$time_hour = GetSystemTime( "hour" )
		$time_minute = GetSystemTime( "minute" )
		$today_time = GetSystemTime( "yday" )
		//????????
		$temp_a = $$time_hour % 2
		if $temp_a == 1
			return
		endif
		if $time_minute > 20
			return
		endif
		
		$team_count = GetTeamMemberCount(-1)
		//????????
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
			BC( "dialogbox", "player", -1, "Your pary members are too far away!" )
			return
		endif
		
		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		//--------------------------------------------------------------------------------------------
		
		if $teamplayer1_id != -1
			//???????????????
			$player1_days =  GetPlayerVar( $teamplayer1_id, 3618 )
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3619 )
			
			if $player1_days == $today_time
				if $player1_time == $time_hour
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif
		
		if $teamplayer2_id != -1
			//???????????????
			$player2_days =  GetPlayerVar( $teamplayer2_id, 3618 )
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3619 )
			
			if $player2_days == $today_time
				if $player2_time == $time_hour
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif
		
		if $teamplayer3_id != -1
			//???????????????
			$player3_days =  GetPlayerVar( $teamplayer3_id, 3618 )
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3619 )
			
			if $player3_days == $today_time
				if $player3_time == $time_hour
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif
		
		if $teamplayer4_id != -1
			//???????????????
			$player4_days =  GetPlayerVar( $teamplayer4_id, 3618 )
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3619 )
			
			if $player4_days == $today_time
				if $player4_time == $time_hour
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif
		
		if $teamplayer5_id != -1
			//???????????????
			$player5_days =  GetPlayerVar( $teamplayer5_id, 3618 )
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3619 )
			
			if $player5_days == $today_time
				if $player5_time == $time_hour
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif
		
		if $teamplayer6_id != -1
			//???????????????
			$player6_days =  GetPlayerVar( $teamplayer6_id, 3618 )
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3619 )
			
			if $player6_days == $today_time
				if $player6_time == $time_hour
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif		
		//-----------------------------------------------
		//?????
		$total_level = 0
		if $teamplayer1_id != -1
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )

			$total_level += $temp_level
		endif
		if $teamplayer2_id != -1
			
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )

			$total_level += $temp_level
			
		endif
		if $teamplayer3_id != -1
			$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
			
			$total_level += $temp_level
		endif
		if $teamplayer4_id != -1
			$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
			
			$total_level += $temp_level
			
		endif
		if $teamplayer5_id != -1
			$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
		
			$total_level += $temp_level
			
		endif
		if $teamplayer6_id != -1
			$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
		
			$total_level += $temp_level
			
		endif
		
		//?????????????????
		$average_level = $total_level / $team_count
		
		if $average_level < 20
			BC( "chat", "player", -1, "The average level is below 20, no quest for you.")
			return
		endif
		
		
		if $average_level >= 20 
			if $average_level <= 35
				$quest_id = 4372
			endif
		endif
		
		if $average_level >= 36
			if $average_level <= 50
				$quest_id = 4375
			endif
		endif
		
		if $average_level >= 51 
			if $average_level <= 65
				$quest_id = 4378
			endif
		endif
		
		
		if $average_level >= 66 
			if $average_level <= 80
				$quest_id = 4381
			endif
		endif
		
		
		if $average_level >= 81 
			if $average_level <= 95
				$quest_id = 4384
			endif
		endif
		
		if $average_level >= 96 
			BC( "chat", "player", -1, "The average level is above 96, no quest for you.")
			return
		endif
		
		 //??????
		$players_count = GetServerVar(910)
		$players_count = $players_count + $team_count
		SetServerVar( 910, $players_count ) 

		if $teamplayer1_id != -1
			$pass_player_id = $teamplayer1_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer1_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer1_id, 3618, $today_time )
				SetPlayerVar( $teamplayer1_id, 3619, $time_hour )
			else
				BC( "chat", "player",$teamplayer1_id, "System error,quest adding failed." )
			endif
		endif
		
		if $teamplayer2_id != -1
			$pass_player_id = $teamplayer2_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer2_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer2_id, 3618, $today_time )
				SetPlayerVar( $teamplayer2_id, 3619, $time_hour )
			else
				BC( "chat", "player",$teamplayer2_id, "System error,quest adding failed." )
			endif
		endif
		
		if $teamplayer3_id != -1
			$pass_player_id = $teamplayer3_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer3_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer3_id, 3618, $today_time )
				SetPlayerVar( $teamplayer3_id, 3619, $time_hour )
			else
				BC( "chat", "player",$teamplayer3_id, "System error,quest adding failed." )
			endif
		endif
		
		if $teamplayer4_id != -1
			$pass_player_id = $teamplayer4_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer4_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer4_id, 3618, $today_time )
				SetPlayerVar( $teamplayer4_id, 3619, $time_hour )
			else
				BC( "chat", "player",$teamplayer4_id, "System error,quest adding failed." )
			endif
		endif
		
		if $teamplayer5_id != -1
			$pass_player_id = $teamplayer5_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer5_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer5_id, 3618, $today_time )
				SetPlayerVar( $teamplayer5_id, 3619, $time_hour )
			else
				BC( "chat", "player",$teamplayer5_id, "System error,quest adding failed." )
			endif
		endif
		
		if $teamplayer6_id != -1
			$pass_player_id = $teamplayer6_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer6_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer6_id, 3618, $today_time )
				SetPlayerVar( $teamplayer6_id, 3619, $time_hour )
			else
				BC( "chat", "player",$teamplayer6_id, "System error,quest adding failed." )
			endif
		endif
	}
	
	function OnOption2(){
		
		$time_hour = GetSystemTime( "hour" )
		$time_minute = GetSystemTime( "minute" )
		$today_time = GetSystemTime( "yday" )
		//????????
		$temp_a = $time_hour % 2
		if $temp_a == 1
			return
		endif
		if $time_minute > 20
			return
		endif
		
		$team_count = GetTeamMemberCount(-1)
		//????????
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
			BC( "dialogbox", "player", -1, "Your pary members are too far away!" )
			return
		endif
		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		//--------------------------------------------------------------------------------------------
		
		if $teamplayer1_id != -1
			//???????????????
			$player1_days =  GetPlayerVar( $teamplayer1_id, 3618 )
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3619 )
			
			if $player1_days == $today_time
				if $player1_time == $time_hour
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif
		
		if $teamplayer2_id != -1
			//???????????????
			$player2_days =  GetPlayerVar( $teamplayer2_id, 3618 )
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3619 )
			
			if $player2_days == $today_time
				if $player2_time == $time_hour
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif
		
		if $teamplayer3_id != -1
			//???????????????
			$player3_days =  GetPlayerVar( $teamplayer3_id, 3618 )
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3619 )
			
			if $player3_days == $today_time
				if $player3_time == $time_hour
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif
		
		if $teamplayer4_id != -1
			//???????????????
			$player4_days =  GetPlayerVar( $teamplayer4_id, 3618 )
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3619 )
			
			if $player4_days == $today_time
				if $player4_time == $time_hour
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif
		
		if $teamplayer5_id != -1
			//???????????????
			$player5_days =  GetPlayerVar( $teamplayer5_id, 3618 )
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3619 )
			
			if $player5_days == $today_time
				if $player5_time == $time_hour
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif
		
		if $teamplayer6_id != -1
			//???????????????
			$player6_days =  GetPlayerVar( $teamplayer6_id, 3618 )
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3619 )
			
			if $player6_days == $today_time
				if $player6_time == $time_hour
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "chat", "player", -1, #name ,"You had finished the event!" )
					return
				endif
			endif
		endif		
		//-----------------------------------------------
		//?????
		$total_level = 0
		if $teamplayer1_id != -1
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )

			$total_level += $temp_level
		endif
		if $teamplayer2_id != -1
			
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )

			$total_level += $temp_level
			
		endif
		if $teamplayer3_id != -1
			$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
			
			$total_level += $temp_level
		endif
		if $teamplayer4_id != -1
			$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
			
			$total_level += $temp_level
			
		endif
		if $teamplayer5_id != -1
			$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
		
			$total_level += $temp_level
			
		endif
		if $teamplayer6_id != -1
			$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
		
			$total_level += $temp_level
			
		endif
		
		//?????????????????
		$average_level = $total_level / $team_count
		
		if $average_level < 20
			BC( "chat", "player", -1, "The average level is below 20, no quest for you.")
			return
		endif
		
				 
				 
		//??????
		$players_count = GetServerVar(911)
		$players_count = $players_count + $team_count
		SetServerVar( 911, $players_count ) 


		if $average_level >= 20 
			if $average_level <= 35
				$quest_id = 4373
			endif
		endif
		
		if $average_level >= 36
			if $average_level <= 50
				$quest_id = 4376
			endif
		endif
		
		if $average_level >= 51 
			if $average_level <= 65
				$quest_id = 4379
			endif
		endif
		
		
		if $average_level >= 66 
			if $average_level <= 80
				$quest_id = 4382
			endif
		endif
		
		
		if $average_level >= 81 
			if $average_level <= 95
				$quest_id = 4385
			endif
		endif
		
		if $average_level >= 96 
			BC( "chat", "player", -1, "The average level is above 96, no quest for you.")
			return
		endif
		
		
		if $teamplayer1_id != -1
			$pass_player_id = $teamplayer1_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer1_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer1_id, 3618, $today_time )
				SetPlayerVar( $teamplayer1_id, 3619, $time_hour )
			else
				BC( "chat", "player",$teamplayer1_id, "System error,quest adding failed." )
			endif
		endif
		
		if $teamplayer2_id != -1
			$pass_player_id = $teamplayer2_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer2_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer2_id, 3618, $today_time )
				SetPlayerVar( $teamplayer2_id, 3619, $time_hour )
			else
				BC( "chat","player",  $teamplayer2_id, "System error,quest adding failed." )
			endif
		endif
		
		if $teamplayer3_id != -1
			$pass_player_id = $teamplayer3_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer3_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer3_id, 3618, $today_time )
				SetPlayerVar( $teamplayer3_id, 3619, $time_hour )
			else
				BC( "chat", "player", $teamplayer3_id,"System error,quest adding failed." )
			endif
		endif
		
		if $teamplayer4_id != -1
			$pass_player_id = $teamplayer4_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer4_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer4_id, 3618, $today_time )
				SetPlayerVar( $teamplayer4_id, 3619, $time_hour )
			else
				BC( "chat", "player", $teamplayer4_id,"System error,quest adding failed." )
			endif
		endif
		
		if $teamplayer5_id != -1
			$pass_player_id = $teamplayer5_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer5_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer5_id, 3618, $today_time )
				SetPlayerVar( $teamplayer5_id, 3619, $time_hour )
			else
				BC( "chat", "player", $teamplayer5_id,"System error,quest adding failed." )
			endif
		endif
		
		if $teamplayer6_id != -1
			$pass_player_id = $teamplayer6_id
			//???????????
			call SetTaskType()
			$result = AcceptTask($teamplayer6_id, $quest_id)
			//????????
			if $result == 0
				//??????????????????,???????
				SetPlayerVar( $teamplayer6_id, 3618, $today_time )
				SetPlayerVar( $teamplayer6_id, 3619, $time_hour )
			else
				BC( "chat", "player", $teamplayer6_id,"System error,quest adding failed." )
			endif
		endif
	}
	
	function SetTaskType(){
		
		CancelTask ($pass_player_id, 4371 )
		CancelTask ($pass_player_id, 4372 )
		CancelTask ($pass_player_id, 4372 )
		CancelTask ($pass_player_id, 4373 )
		CancelTask ($pass_player_id, 4374 )
		CancelTask ($pass_player_id, 4375 )
		CancelTask ($pass_player_id, 4376 )
		CancelTask ($pass_player_id, 4377 )
		CancelTask ($pass_player_id, 4378 )
		CancelTask ($pass_player_id, 4379 )
		CancelTask ($pass_player_id, 4380 )
		CancelTask ($pass_player_id, 4381 )
		CancelTask ($pass_player_id, 4382 )
		CancelTask ($pass_player_id, 4383 )
		CancelTask ($pass_player_id, 4384 )
		CancelTask ($pass_player_id, 4385 )

	}