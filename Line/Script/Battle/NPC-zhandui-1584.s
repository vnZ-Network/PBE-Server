	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/17
	//		Author:??
	//		TaskName:NPC-zhandui-1584
	//		TaskID:????
	//
	//****************************************
	
	
	function OnRequest(){
		
//		$time_week = GetSystemTime( "week" )
//		$time_hour = GetSystemTime( "hour" )
//		if $time_week != 6
//			DisableNpcOption(0)
//		endif
//		if $time_hour < 12
//			DisableNpcOption(0)
//		endif
						
	}

	
	function OnOption0(){
												
//		$team_headerID = GetTeamHeaderID(-1)
//		$player_id = GetPlayerID()
//		//????????
//		if $player_id != $team_headerID
//			BC( "dialogbox", "player", -1, "GUID:03444000000" )
//			return
//		endif
//		$count = GetTeamMemberCount( -1 )
//			if $count < 6
//				BC( "dialogbox", "player", -1, "GUID:03444000001" )
//				return
//			endif		
		
//		$size = GetTeamAreaSize(-1)	
//		if $size > 10
//			//?????????????
//			BC( "dialogbox", "player", -1, "GUID:03444000002" )
//			return
//		endif
//		$a = 0
//		while $a < 6
//			$teamplayer_id = GetTeamMemberID( -1 , $a )
//			$a = $a + 1
//			if $teamplayer_id != -1
//			$headerID = GetTeamHeaderID( -1 )
//			if  $headerID != -1
//			BC( "dialogbox", "player", -1, "Only a single player can queue up!" )
//			BC( "chat", "player", -1, "Only a single player can queue up!" )
//			return
//			endif
//			$temp_level = GetPlayerInfo( -1, "level" )
//			if $temp_level < 75
//					//????75???,????
//				BC( "dialogbox", "player", -1, "GUID:03444000005" )
//				return
//			endif					
//				
//				ParticipateZoneWar(-1, 1)	
		$time_week = GetSystemTime( "week" )
		$time_hour = GetSystemTime( "hour" )
		$bat_team = GetBattleTeam( -1, 2 )
		$lv = GetPlayerInfo( -1, "level" )
		if $time_week != 6
			BC( "dialogbox", "player", -1, "Group Arena is only open on Saturday." )
			return
		endif
		
		if $time_hour < 12
			BC( "dialogbox", "player", -1, "The Group Arena will open after 12:00." )
			return
		endif
		
		if $bat_team == -1 
			BC( "dialogbox", "player", -1, "You have to be in one team." )
			return
		endif	
			
		if $lv < 75
			BC( "dialogbox", "player", -1, "Your level is lower than 75." )
			BC( "chat", "player", -1, "6" )
			return
		endif
		$headerID = GetTeamHeaderID( -1 )
		if  $headerID != -1
			BC( "dialogbox", "player", -1, "Only a single player can queue up!" )
			BC( "chat", "player", -1, "Only a single player can queue up!" )
			return
		endif
			
		ParticipateZoneWar( -1 , 1 )
				
	}	

	function OnOption1(){
		$level = GetPlayerInfo( -1, "level" )
		$Now_Week = GetSystemTime( "week" )
		$New_Yday = GetSystemTime( "yday" )
		$team_days = GetPlayerVar(-1 , 3947)
    $team_weeks = GetPlayerVar(-1 , 3257)
    $team_point = CalBattleTeamPoint(-1 , 2)
    	 
		//75???????
		if $level < 75
				BC( "dialogbox", "player", -1, "Players who are lower than 75 cannot enter the Group Arena." )
				return
		endif		
		  //???????
			//?????????????????,?????????
			if $Now_Week < $team_weeks
				AddPlayerInfo( -1, "prestige" , 27 , $team_point )
				SetPlayerVar(-1 , 3947 , $New_Yday)
				SetPlayerVar(-1 , 3257 , $Now_Week)
				BC( "screen", "player", -1, "Received" , "$team_point" , "Team Honor Points" )
			//???????????????????????,?????????????7?,???????
			else
				//?????????????????,????????,??????
				if $New_Yday >= $team_days
					$decrease_days = $New_Yday - $team_days
					if $decrease_days >= 7
						AddPlayerInfo( -1, "prestige" , 27 , $team_point )
						SetPlayerVar(-1 , 3947 , $New_Yday)                                 
						SetPlayerVar(-1 , 3257 , $Now_Week)
						BC( "screen", "player", -1, "Received" , "$team_point" , "Team Honor Points" ) 
					endif
				//???????...
				else
					//?????0???,??365?????????,???????????,????12??1???????????????
					$team_value = $New_Yday + 365
		            $decrease_days = $team_value - $team_days
					if $decrease_days >= 7
						AddPlayerInfo( -1, "prestige" , 27 , $team_point )
						SetPlayerVar(-1 , 3947 , $New_Yday)                                 
						SetPlayerVar(-1 , 3257 , $Now_Week)
						BC( "screen", "player", -1, "Received" , "$team_point" , "Team Honor Points" ) 
					endif
				endif
			endif
		
	
	}
	function OnOption2(){

		$team_days = GetPlayerVar( -1 ,3951 )
		$Now_Yday = GetSystemTime( "yday" )
		$New_Yday = $Now_Yday + 1
		$team = GetBattleTeam( -1 , 2 )
		$team_rank = GetBattleTeamRank( $team )
		$single_score = GetBattleTeamMemberScore( -1 , 2 )
//		$team_score = GetBattleTeamScore( $team )
		$bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		$lost = GetBattleTeamMemberLost( -1 , 2 )
		$win = GetBattleTeamMemberWin( -1 , 2 )
		$finalrank = GetBattleTeamFinalRank( $team )
//		$teamcup = GetBattleTeamCup( $team )
		if $team_rank < 0
			BC( "dialogbox", "player", -1, "Rewards only for those who entered the knockout match." )
			return
		endif
		if $team_rank > 95
			BC( "dialogbox", "player", -1, "Rewards only for those who entered the knockout match." )
			return
		endif
		$times = $lost + $win		
		if $times <= 0
			BC( "dialogbox", "player", -1, "Rewards only for those who entered the Group Arena." )
			return
		endif
//		if $single_score <= 0
//			BC( "dialogbox", "player", -1, "Rewards only for those who entered the Group Arena." )
//			return
//		endif	
		if $bag < 1
			BC( "dialogbox", "player", -1, "Your bag is full." )
			return
		endif										
		if $team_rank >= 0
			if $team_rank <= 31
				if $finalrank >= 4
					if $finalrank <= 31
						//?????????????????,????????,??????
						if $New_Yday >= $team_days
							$decrease_days = $New_Yday - $team_days
							if $decrease_days > 14
								AddPlayerInfo( -1, "item" , 51836 , 1 )
								SetPlayerVar(-1 , 3951 , $New_Yday )
								BC( "screen", "player", -1, "Received Rewards' Pack(God Of War)." )
							else
								BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )	
							endif
								//???????...
						else						
							$team_value = $New_Yday + 365
			            $decrease_days = $team_value - $team_days
							if $decrease_days > 14
								AddPlayerInfo( -1, "item" , 51836, 1 )
								SetPlayerVar(-1 , 3951 , $New_Yday)
								BC( "screen", "player", -1, "Received Rewards' Pack(God Of War)." )
							else
								BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
							endif
						endif				
					endif					
				endif					
				if $finalrank == 3
					//?????????????????,????????,??????
					if $New_Yday >= $team_days
						$decrease_days = $New_Yday - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51835 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday )
							BC( "screen", "player", -1, "Received Gift Pack of Consolation Prize(God Of War)." )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )						
						endif
						//???????...
					else						
						$team_value = $New_Yday + 365
			            		$decrease_days = $team_value - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51835 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday)
							BC( "screen", "player", -1, "Received Gift Pack of Consolation Prize(God Of War)." )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )	
						endif
					endif					
				endif					
				if $finalrank == 2
					//?????????????????,????????,??????
					if $New_Yday >= $team_days
						$decrease_days = $New_Yday - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51834 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday )
							BC( "screen", "player", -1, "Received Bronze Medalist's Gift Pack(God Of War)." )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )	
						endif
						//???????...
					else						
						$team_value = $New_Yday + 365
			            		$decrease_days = $team_value - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51834 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday)
							BC( "screen", "player", -1, "Received Bronze Medalist's Gift Pack(God Of War)." )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )		
						endif
					endif					
				endif
				if $finalrank == 1
					//?????????????????,????????,??????
					if $New_Yday >= $team_days
						$decrease_days = $New_Yday - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51833 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday )
							BC( "screen", "player", -1, "Received Runner-up's Gift Pack(God Of War)." )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )		
						endif
						//???????...
					else						
						$team_value = $New_Yday + 365
			            		$decrease_days = $team_value - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51833 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday)
							BC( "screen", "player", -1, "Received Runner-up's Gift Pack(God Of War)." )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
						endif
					endif					
				endif
				if $finalrank == 0
					//?????????????????,????????,??????
					if $New_Yday >= $team_days
						$decrease_days = $New_Yday - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51832 , 1 )
							AddPlayerInfo( -1, "prename" , 19912 )
							SetPlayerVar(-1 , 3951 , $New_Yday )
							BC( "screen", "player", -1, "Received Champion's Gift Pack(God Of War)." )
							BC( "screen", "player", -1, "Received special title: Peak Team."  )
							BC( "chat", "player", -1, "Received special title: Peak Team."  )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )	
						endif
						//???????...
					else						
						$team_value = $New_Yday + 365
			            		$decrease_days = $team_value - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51832 , 1 )
							AddPlayerInfo( -1, "prename" , 19912 )
							SetPlayerVar(-1 , 3951 , $New_Yday)
							BC( "screen", "player", -1, "Received special title: Peak Team."  )
							BC( "chat", "player", -1, "Received special title: Peak Team."  )
							BC( "screen", "player", -1, "Received Champion's Gift Pack(God Of War)." )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
						endif
					endif					
				endif			
			endif
		endif
		
		if $team_rank >= 32
			if $team_rank <= 63
				if $finalrank >= 4
					if $finalrank <= 31
						//?????????????????,????????,??????
						if $New_Yday >= $team_days
							$decrease_days = $New_Yday - $team_days
							if $decrease_days > 14
								AddPlayerInfo( -1, "item" , 51841 , 1 )
								SetPlayerVar(-1 , 3951 , $New_Yday )
								BC( "screen", "player", -1, "Received Rewards' Pack(Warrior)." )
							else
								BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
							endif
							//???????...
						else						
							$team_value = $New_Yday + 365
		            				$decrease_days = $team_value - $team_days
							if $decrease_days > 14
								AddPlayerInfo( -1, "item" , 51841, 1 )
								SetPlayerVar(-1 , 3951 , $New_Yday)
								BC( "screen", "player", -1, "Received Rewards' Pack(Warrior)." )
							else
								BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
							endif
						endif									
					endif					
				endif
				if $finalrank == 3
					//?????????????????,????????,??????
					if $New_Yday >= $team_days
						$decrease_days = $New_Yday - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51840 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday )
							BC( "screen", "player", -1, "Received Gift Pack of Consolation Prize(Warrior)." )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
						endif
						//???????...
					else						
						$team_value = $New_Yday + 365
		            			$decrease_days = $team_value - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51840 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday)
							BC( "screen", "player", -1, "Received Gift Pack of Consolation Prize(Warrior)." )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
						endif
					endif					
				endif					
				if $finalrank == 2
					//?????????????????,????????,??????
					if $New_Yday >= $team_days
						$decrease_days = $New_Yday - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51839 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday )
							BC( "screen", "player", -1, "Received Bronze Medalist's Gift Pack(Warrior)." )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
						endif
						//???????...
					else						
						$team_value = $New_Yday + 365
		            			$decrease_days = $team_value - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51839 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday)
							BC( "screen", "player", -1, "Received Bronze Medalist's Gift Pack(Warrior)." )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
						endif
					endif					
				endif
				if $finalrank == 1
					//?????????????????,????????,??????
					if $New_Yday >= $team_days
						$decrease_days = $New_Yday - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51838 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday )
							BC( "screen", "player", -1, "Received Runner-up's Gift Pack(Warrior)" )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
						endif
						//???????...
					else						
						$team_value = $New_Yday + 365
		            			$decrease_days = $team_value - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51838 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday)
							BC( "screen", "player", -1, "Received Runner-up's Gift Pack(Warrior)" )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
						endif
					endif					
				endif
				if $finalrank == 0
					//?????????????????,????????,??????
					if $New_Yday >= $team_days
						$decrease_days = $New_Yday - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51837 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday )
							BC( "screen", "player", -1, "Received Champion's Gift Pack(Warrior)" )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
						endif
						//???????...
					else						
						$team_value = $New_Yday + 365
		            			$decrease_days = $team_value - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51837 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday)
							BC( "screen", "player", -1, "Received Champion's Gift Pack(Warrior)" )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
						endif
					endif					
				endif			
			endif
		endif
		if $team_rank >= 64
			if $team_rank <= 95
				if $finalrank >= 4
					if $finalrank <= 31
						//?????????????????,????????,??????
						if $New_Yday >= $team_days
							$decrease_days = $New_Yday - $team_days
							if $decrease_days > 14
								AddPlayerInfo( -1, "item" , 51846 , 1 )
								SetPlayerVar(-1 , 3951 , $New_Yday )
								BC( "screen", "player", -1, "Received Rewards' Pack(Challenge)" )
							else
								BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
							endif
							//???????...
						else						
							$team_value = $New_Yday + 365
		            				$decrease_days = $team_value - $team_days
							if $decrease_days > 14
								AddPlayerInfo( -1, "item" , 51846, 1 )
								SetPlayerVar(-1 , 3951 , $New_Yday)
								BC( "screen", "player", -1, "Received Rewards' Pack(Challenge)" )
							else
								BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
							endif
						endif				
					
					endif					
				endif
				if $finalrank == 3
					//?????????????????,????????,??????
					if $New_Yday >= $team_days
						$decrease_days = $New_Yday - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51845 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday )
							BC( "screen", "player", -1, "Received Gift Pack of Consolation Prize(Challenge)" )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
						endif
						//???????...
					else						
						$team_value = $New_Yday + 365
		            			$decrease_days = $team_value - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51845 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday)
							BC( "screen", "player", -1, "Received Gift Pack of Consolation Prize(Challenge)" )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
						endif
					endif					
				endif					
				if $finalrank == 2
					//?????????????????,????????,??????
					if $New_Yday >= $team_days
						$decrease_days = $New_Yday - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51844 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday )
							BC( "screen", "player", -1, "Received Bronze Medalist's Gift Pack(Challenge)" )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
						endif
						//???????...
					else						
						$team_value = $New_Yday + 365
		            			$decrease_days = $team_value - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51844 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday)
							BC( "screen", "player", -1, "Received Bronze Medalist's Gift Pack(Challenge)" )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
						endif
					endif					
				endif
				if $finalrank == 1
					//?????????????????,????????,??????
					if $New_Yday >= $team_days
						$decrease_days = $New_Yday - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51843 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday )
							BC( "screen", "player", -1, "Received Runner-up's Gift Pack(Challenge)" )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
						endif
						//???????...
					else						
						$team_value = $New_Yday + 365
		            			$decrease_days = $team_value - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51843 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday)
							BC( "screen", "player", -1, "Received Runner-up's Gift Pack(Challenge)" )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
						endif
					endif					
				endif
				if $finalrank == 0
					//?????????????????,????????,??????
					if $New_Yday >= $team_days
						$decrease_days = $New_Yday - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51842 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday )
							BC( "screen", "player", -1, "Received Champion's Gift Pack(Challenge)" )
						else
							BC( "chat", "player", -1, "You've already received the knockout match rewards of this season." )
						endif
						//???????...
					else						
						$team_value = $New_Yday + 365
		            			$decrease_days = $team_value - $team_days
						if $decrease_days > 14
							AddPlayerInfo( -1, "item" , 51842 , 1 )
							SetPlayerVar(-1 , 3951 , $New_Yday)
						endif
					endif					
				endif			
			endif
		endif				
				


	}
	
	
	
		function OnOption3(){
			
			
		$group_day = GetGlobalVar(50)
		$Now_Yday = GetSystemTime( "yday" )
		$New_Yday = $Now_Yday + 1		
		$team = GetBattleTeam( -1 , 2 )
		$group_master = IsBattleTeamLeader( -1 , $team )
		$team_rank = GetBattleTeamRank( $team )
		$finalrank = GetBattleTeamFinalRank( $team )		
		#name = GetPlayerInfo( -1 , "name" )
		#team_name = GetBattleTeamName( $team )
		$bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		//??????????
		if $group_master != 0
			BC( "dialogbox", "player", -1, "You are not the leader of the team!" )
			return
		endif
		//?????????????
		if $team_rank < 0
			BC( "dialogbox", "player", -1, "Only the Champion of God of War can get the rewards." )
			return
		endif
		if $team_rank >= 32
			BC( "dialogbox", "player", -1, "Only the Champion of God of War can get the rewards." )
			return
		endif									
		if $finalrank != 0
			BC( "dialogbox", "player", -1, "Only the Champion of God of War can get the rewards." )
			return
		endif
		if $bag < 1
			BC( "dialogbox", "player", -1, "Your bag is full." )
			return
		endif			
		//?????????????????,????????,??????
		if $New_Yday >= $group_day
			$decrease_days = $New_Yday - $group_day
			if $decrease_days > 14
				AddPlayerInfo( -1 , "item", 62068 , 1 )
				SetGlobalVar( 50 , $New_Yday )
				BC( "scrollbar", "servergroup", -1, "#name" , "Representative" , "#team_name"  ,  "The team has claimed Spacecraft, the special mount of God of War!" )
			else
				BC( "chat", "player", -1, "This season's special mount has already been claimed." )
			endif
				//???????...
		else						
			$team_value = $New_Yday + 364
		        $decrease_days = $team_value - $team_days
			if $decrease_days > 14
				AddPlayerInfo( -1 , "item", 62068 , 1 )
				SetGlobalVar( 50 , $New_Yday )
				BC( "scrollbar", "servergroup", -1, "#name" , "Representative" , "#team_name"  ,  "The team has claimed Spacecraft, the special mount of God of War!" )
			else
				BC( "chat", "player", -1, "This season's special mount has already been claimed." )
			endif
		endif	

	}	
	
	function OnOption4(){
		
		$league_section = GetBattleTeamLeagueSection
		$Now_Week = GetSystemTime( "week" )	
		if $league_section <= 1
			if $Now_Week == 6
				BC( "dialogbox", "player", -1, "The first week of the qualifying match.." )
			else
				BC( "dialogbox", "player", -1, "The second week of the qualifying match.." )
			endif	
		endif	
		if $league_section == 2
			if $Now_Week == 6
				BC( "dialogbox", "player", -1, "The second week of the qualifying match.." )
			else
				BC( "dialogbox", "player", -1, "The last week of the qualifying match.." )
			endif	
		endif
		if $league_section == 3
			if $Now_Week == 6
				BC( "dialogbox", "player", -1, "The last week of the qualifying match.." )
			else
				BC( "dialogbox", "player", -1, "Knockout match is held this week." )
			endif	
		endif
		if $league_section == 4
			if $Now_Week == 6
				BC( "dialogbox", "player", -1, "Knockout match is held this week." )
			else
				BC( "dialogbox", "player", -1, "The first week of the qualifying match.." )
			endif	
		endif	
				
	}	 		