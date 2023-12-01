	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/04
	//		Author:??
	//		TaskName:HD-jinzitamenpiao-NPC2.s
	//		TaskID:???????,????NPC
	//
	//****************************************
	
	
	//	3615		??????????????
	//3214,???????????????????
	//3617,?????????????????
	function OnRequest(){
	
		$today_week = GetSystemTime( "week" )
		$times = GetSystemTime( "hour" )	
		
		//??6??
		$line = GetServerLineID()
		if $line != 6
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
		endif

		//????40???,???????
		$ticket_number = GetServerVar(23)
		
		//BC( "chat", "player", -1, "1:",$line," 2:" , $ticket_number)
		if $ticket_number >= 40
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
		endif
		
		//??????????
		if $today_week != 5
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			return
		endif
		if $times < 20
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			return
		endif
	}
	
	//???,???????
	function OnOption0(){
		
	
		$line = GetServerLineID()
		if $line != 6
			return
		endif
		
		//
		$count = GetPlayerInfo( -1, "item", 63171)
		if $count == 0
			BC( "dialogbox", "player", -1, "You must fill out form PYR-1035 from Nyss before I can give you a Pyramid Passport." )
			return
		endif
		$ticket_number = GetServerVar(23)
		if $ticket_number >= 40
			BC( "dialogbox", "player", -1, "All the Pyramid Passports have been distributed." )
			return
		endif
		
		$today_days = GetSystemTime( "yday" )	
		$last_days = GetPlayerVar(-1,3615)
		
		//??????????,??????,?????.????
		if $today_days != $last_days
			BC( "dialogbox", "player", -1, "Your Guild Proof is not for today's race,there is no way to cheat,I will take it and give you the common reward." )
			$revalue = SubPlayerInfo(-1 , "item" , 63171 , 1)
			if $revalue == 0
				$rewardID = $today_days + 11000
				SetPlayerActLog(-1,40,$rewardID)
				$level = GetPlayerInfo( -1, "level" )
				$a = $level * $level
				$add_exp = $a * 14
				AddPlayerInfo(-1 , "exp" , $add_exp)
			endif
			return
		endif
		
		//?????????(??3977)??,??????,?????.????
		$last_days = GetPlayerVar(-1,3977)
		if $today_days != $last_days
			BC( "dialogbox", "player", -1, "Your Guild Proof is not for today's race,there is no way to cheat,I will take it and give you the common reward." )
			$revalue = SubPlayerInfo(-1 , "item" , 63171 , 1)
			if $revalue == 0
				$rewardID = $today_days + 12000
				SetPlayerActLog(-1,40,$rewardID)
				$level = GetPlayerInfo( -1, "level" )
				$a = $level * $level
				$add_exp = $a * 14
				AddPlayerInfo(-1 , "exp" , $add_exp)
			endif
			return
		endif
		
		$revalue = SubPlayerInfo(-1 , "item" , 63171 , 1)
		
		if $revalue == 0
		
				$rewardID = $today_days + 2000
				SetPlayerActLog(-1,40,$rewardID)
		
			AddPlayerInfo(-1 , "item" , 63172 , 1)
			AddPlayerInfo(-1 , "item" , 59327 , 2)
			AddPlayerInfo(-1 , "item" , 59838 , 1)
			$ticket_number = $ticket_number + 1
			SetServerVar( 23, $ticket_number)
			$leavings_ticket = 40 - $ticket_number
			
			#player_name = GetPlayerInfo( -1, "name" )	
			BC( "screen", "server", -1, "The hero ",#player_name," has been awarded a Pyramid Passport! ",$leavings_ticket," remain." )
			
			$level = GetPlayerInfo( -1, "level" )
			$a = $level * $level
			$add_exp = $a * 14
			AddPlayerInfo(-1 , "exp" , $add_exp)
		
		//?????????,????????????
		else
			$month = GetSystemTime("month")
			$mday = GetSystemTime("mday")
			$hour = GetSystemTime("hour")
			$minute = GetSystemTime("minute")
			$monthadd = $month * 100
			$dayadd = $monthadd + $mday
			$hour = $hour * 100
			$timeadd = $hour + $minute
			BC( "messagebox", "player", -1, "Failed! Please take a screenshot and send it to Customer Service. Time: ",$dayadd,") ",$timeadd,") " )
			$rewardID = $today_days + 3000
			SetPlayerActLog(-1,40,$rewardID)
			
		endif
		


	}
	
	//???,????????,?????
	function OnOption1(){
		
		$count = GetPlayerInfo( -1, "item", 63171)
		if $count == 0
			BC( "dialogbox", "player", -1, "You do not have Guild Proof,I can not give you the reward." )
			return
		endif

		
		//????,????
		$revalue = SubPlayerInfo(-1 , "item" , 63171 , 1)
		
		if $revalue == 0
			$level = GetPlayerInfo( -1, "level" )
			$a = $level * $level
			$add_exp = $a * 14
			AddPlayerInfo(-1 , "exp" , $add_exp)
		endif

	}
	
	function OnOption2(){
		
		$today_days = GetSystemTime( "yday" )
		$line = GetServerLineID()
		//????6?????
		if $line != 6
			return
		endif
		
		//
		
		$count = GetPlayerInfo( -1, "item", 63172)
		if $count >= 1
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
				BC( "dialogbox", "player", -1, "Some teammates are too far from you!" )
				return
			endif
			

			
			//???????ID,??????ID?-1
			$teamplayer1_id =  GetTeamMemberID( -1, 0 )
			$teamplayer2_id =  GetTeamMemberID( -1, 1 )
			$teamplayer3_id =  GetTeamMemberID( -1, 2 )
			$teamplayer4_id =  GetTeamMemberID( -1, 3 )
			$teamplayer5_id =  GetTeamMemberID( -1, 4 )
			$teamplayer6_id =  GetTeamMemberID( -1, 5 )
			//????????
			if $teamplayer1_id != -1
				$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer2_id != -1
				$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer3_id != -1
				$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer4_id != -1
				$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer5_id != -1
				$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer6_id != -1
				$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			$ticket_nmuber = GetPlayerInfo(-1 , "item" , 63172)
			if $ticket_nmuber == 0
				BC( "dialogbox", "player", -1, "You didn't carry a Pyramid Passport!" )
				return
			endif
			
			$revalue = SubPlayerInfo(-1 , "item" , 63172 , 1)
			if $revalue != 0
				BC( "dialogbox", "player", -1, "Item delete failed." )
				return
			endif

			//??????????
			//$join_team_number = GetServerVar(30)
			//???????????
			//???????????,????
			$n = 0
			if $n == 0
				$map_id = 123
				$map_x = 36
				$map_y = 26
			endif
//			if $n == 1
//				$map_id = 124
//				$map_x = 86
//				$map_y = 26
//			endif
//			if $n == 2
//				$map_id = 125
//				$map_x = 31
//				$map_y = 101
//			endif
//			if $n == 3
//				$map_id = 126
//				$map_x = 95
//				$map_y = 95
//			endif
			//???+1
			$join_team_number = $join_team_number + 1
			SetServerVar(30 , $join_team_number)
			
			#player_name = GetPlayerInfo( $team_headerID, "name" )	
			BC( "screen", "server", -1, "The hero ",#player_name," Enter Queen's Catacomb in a team and challenge Osiris the fallen Solar God!" )
			
			$team_count = GetTeamMemberCount(-1)
			//????-START
			$TJ_join_number = GetGlobalVar(942)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(942 , $TJ_join_number)
			//????-END
			
			if $teamplayer1_id != -1
				$result = FlyToMap( $teamplayer1_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer1_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer1_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer2_id != -1
				$result = FlyToMap( $teamplayer2_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer2_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer2_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer3_id != -1
				$result = FlyToMap( $teamplayer3_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer3_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer3_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer4_id != -1
				$result = FlyToMap( $teamplayer4_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer4_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer4_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer5_id != -1
				$result = FlyToMap( $teamplayer5_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer5_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer5_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer6_id != -1
				$result = FlyToMap( $teamplayer6_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer6_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer6_id , 3214 ,$n )
				endif	
			endif
		else
			BC( "dialogbox", "player", -1, "You didn't carry a Pyramid Passport!" )
		endif
		
	}
	
		function OnOption3(){
		
		$today_days = GetSystemTime( "yday" )
		$line = GetServerLineID()
		//????6?????
		if $line != 6
			return
		endif
		
		//
		
		$count = GetPlayerInfo( -1, "item", 63172)
		if $count >= 1
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
				BC( "dialogbox", "player", -1, "Some teammates are too far from you!" )
				return
			endif
			

			
			//???????ID,??????ID?-1
			$teamplayer1_id =  GetTeamMemberID( -1, 0 )
			$teamplayer2_id =  GetTeamMemberID( -1, 1 )
			$teamplayer3_id =  GetTeamMemberID( -1, 2 )
			$teamplayer4_id =  GetTeamMemberID( -1, 3 )
			$teamplayer5_id =  GetTeamMemberID( -1, 4 )
			$teamplayer6_id =  GetTeamMemberID( -1, 5 )
			//????????
			if $teamplayer1_id != -1
				$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer2_id != -1
				$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer3_id != -1
				$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer4_id != -1
				$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer5_id != -1
				$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer6_id != -1
				$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			
			$revalue = SubPlayerInfo(-1 , "item" , 63172 , 1)
			if $revalue != 0
				BC( "chat", "player", -1, "Item delete failed." )
				return
			endif

			//??????????
			$join_team_number = GetServerVar(30)
			//???????????
			$n = 1
			//if $n == 0
			//	$map_id = 123
			//	$map_x = 36
			//	$map_y = 26
			//endif
			if $n == 1
				$map_id = 124
				$map_x = 86
				$map_y = 26
			endif
			//if $n == 2
			//	$map_id = 125
			//	$map_x = 31
			//	$map_y = 101
			//endif
			//if $n == 3
			//	$map_id = 126
			//	$map_x = 95
			//	$map_y = 95
			//endif
			//???+1
			$join_team_number = $join_team_number + 1
			SetServerVar(30 , $join_team_number)
			
			#player_name = GetPlayerInfo( $team_headerID, "name" )	
			BC( "screen", "server", -1, "The hero ",#player_name," Enter Behemoth's Lair in a team and challenge Osiris the fallen Solar God!" )
			
			$team_count = GetTeamMemberCount(-1)
			//????-START
			$TJ_join_number = GetGlobalVar(942)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(942 , $TJ_join_number)
			//????-END
			
			if $teamplayer1_id != -1
				$result = FlyToMap( $teamplayer1_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer1_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer1_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer2_id != -1
				$result = FlyToMap( $teamplayer2_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer2_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer2_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer3_id != -1
				$result = FlyToMap( $teamplayer3_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer3_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer3_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer4_id != -1
				$result = FlyToMap( $teamplayer4_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer4_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer4_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer5_id != -1
				$result = FlyToMap( $teamplayer5_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer5_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer5_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer6_id != -1
				$result = FlyToMap( $teamplayer6_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer6_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer6_id , 3214 ,$n )
				endif	
			endif
		else
			BC( "dialogbox", "player", -1, "You didn't carry a Pyramid Passport!" )
		endif
		
	}
	
		function OnOption4(){
		
		$today_days = GetSystemTime( "yday" )
		$line = GetServerLineID()
		//????6?????
		if $line != 6
			return
		endif
		
		//
		
		$count = GetPlayerInfo( -1, "item", 63172)
		if $count >= 1
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
				BC( "dialogbox", "player", -1, "Some teammates are too far from you!" )
				return
			endif
			

			
			//???????ID,??????ID?-1
			$teamplayer1_id =  GetTeamMemberID( -1, 0 )
			$teamplayer2_id =  GetTeamMemberID( -1, 1 )
			$teamplayer3_id =  GetTeamMemberID( -1, 2 )
			$teamplayer4_id =  GetTeamMemberID( -1, 3 )
			$teamplayer5_id =  GetTeamMemberID( -1, 4 )
			$teamplayer6_id =  GetTeamMemberID( -1, 5 )
			//????????
			if $teamplayer1_id != -1
				$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer2_id != -1
				$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer3_id != -1
				$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer4_id != -1
				$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer5_id != -1
				$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer6_id != -1
				$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif

			$revalue = SubPlayerInfo(-1 , "item" , 63172 , 1)
			if $revalue != 0
				BC( "chat", "player", -1, "Item delete failed." )
				return
			endif

			//??????????
			$join_team_number = GetServerVar(30)
			//???????????
			$n = 2
			//if $n == 0
			//	$map_id = 123
			//	$map_x = 36
			//	$map_y = 26
			//endif
			//if $n == 1
			//	$map_id = 124
			//	$map_x = 86
			//	$map_y = 26
			//endif
			if $n == 2
				$map_id = 125
				$map_x = 31
				$map_y = 101
			endif
			//if $n == 3
			//	$map_id = 126
			//	$map_x = 95
			//	$map_y = 95
			//endif
			//???+1
			$join_team_number = $join_team_number + 1
			SetServerVar(30 , $join_team_number)
			
			#player_name = GetPlayerInfo( $team_headerID, "name" )	
			BC( "screen", "server", -1, "The hero ",#player_name," Enter Maze of Mystery in a team and challenge Osiris the fallen Solar God!" )
			
			$team_count = GetTeamMemberCount(-1)
			//????-START
			$TJ_join_number = GetGlobalVar(942)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(942 , $TJ_join_number)
			//????-END
			
			if $teamplayer1_id != -1
				$result = FlyToMap( $teamplayer1_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer1_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer1_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer2_id != -1
				$result = FlyToMap( $teamplayer2_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer2_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer2_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer3_id != -1
				$result = FlyToMap( $teamplayer3_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer3_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer3_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer4_id != -1
				$result = FlyToMap( $teamplayer4_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer4_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer4_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer5_id != -1
				$result = FlyToMap( $teamplayer5_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer5_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer5_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer6_id != -1
				$result = FlyToMap( $teamplayer6_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer6_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer6_id , 3214 ,$n )
				endif	
			endif
		else
			BC( "dialogbox", "player", -1, "You didn't carry a Pyramid Passport!" )
		endif
		
	}
	
		function OnOption5(){
		
		$today_days = GetSystemTime( "yday" )
		$line = GetServerLineID()
		//????6?????
		if $line != 6
			return
		endif
		
		//
		
		$count = GetPlayerInfo( -1, "item", 63172)
		if $count >= 1
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
				BC( "dialogbox", "player", -1, "Some teammates are too far from you!" )
				return
			endif
			

			
			//???????ID,??????ID?-1
			$teamplayer1_id =  GetTeamMemberID( -1, 0 )
			$teamplayer2_id =  GetTeamMemberID( -1, 1 )
			$teamplayer3_id =  GetTeamMemberID( -1, 2 )
			$teamplayer4_id =  GetTeamMemberID( -1, 3 )
			$teamplayer5_id =  GetTeamMemberID( -1, 4 )
			$teamplayer6_id =  GetTeamMemberID( -1, 5 )
			//????????
			if $teamplayer1_id != -1
				$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer2_id != -1
				$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer3_id != -1
				$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer4_id != -1
				$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer5_id != -1
				$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
			if $teamplayer6_id != -1
				$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
				if $temp_level < 50
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif

			$revalue = SubPlayerInfo(-1 , "item" , 63172 , 1)
			if $revalue != 0
				BC( "chat", "player", -1, "Item delete failed." )
				return
			endif

			//??????????
			$join_team_number = GetServerVar(30)
			//???????????
			$n = 3
			//if $n == 0
			//	$map_id = 123
			//	$map_x = 36
			//	$map_y = 26
			//endif
			//if $n == 1
			//	$map_id = 124
			//	$map_x = 86
			//	$map_y = 26
			//endif
			//if $n == 2
			//	$map_id = 125
			//	$map_x = 31
			//	$map_y = 101
			//endif
			if $n == 3
				$map_id = 126
				$map_x = 95
				$map_y = 95
			endif
			//???+1
			$join_team_number = $join_team_number + 1
			SetServerVar(30 , $join_team_number)
			
			#player_name = GetPlayerInfo( $team_headerID, "name" )	
			BC( "screen", "server", -1, "The hero ",#player_name," Enter Hexagram Array in a team and challenge Osiris the fallen Solar God!" )
			
			$team_count = GetTeamMemberCount(-1)
			//????-START
			$TJ_join_number = GetGlobalVar(942)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(942 , $TJ_join_number)
			//????-END
			
			if $teamplayer1_id != -1
				$result = FlyToMap( $teamplayer1_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer1_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer1_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer2_id != -1
				$result = FlyToMap( $teamplayer2_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer2_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer2_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer3_id != -1
				$result = FlyToMap( $teamplayer3_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer3_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer3_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer4_id != -1
				$result = FlyToMap( $teamplayer4_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer4_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer4_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer5_id != -1
				$result = FlyToMap( $teamplayer5_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer5_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer5_id , 3214 ,$n )
				endif	
			endif
			if $teamplayer6_id != -1
				$result = FlyToMap( $teamplayer6_id, $map_id, $map_x, $map_y )
					//??????
				if $result == 0
					SetPlayerVar($teamplayer6_id , 3617 ,$today_days )
					SetPlayerVar($teamplayer6_id , 3214 ,$n )
				endif	
			endif
		else
			BC( "dialogbox", "player", -1, "You didn't carry a Pyramid Passport!" )
		endif
		
	}