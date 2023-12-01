    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/03
	//		Author:??
	//		TaskName:HD-xihongduopo-M-30105.s
	//		TaskID:????????-BOSS????
	//
	//****************************************
	
	
	
	function OnDead(){
		
		//????-START
			$TJ_join_number = GetGlobalVar(939)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(939 , $TJ_join_number)
		//????-END
		//60?BOSS????.????
		$boss_exp_base = 57960
		//60?BOSS????.????
		$boss_money_base = 6000
	
	//????????????ID
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )

		
		//?????ID
		$team_head_id =	GetTeamHeaderID (-1)
		//???????
		#player_name = GetPlayerInfo( $team_head_id, "name" )
		//????BOSS???
		
		BC( "chat", "server", -1, "The hero ",#player_name,"team defeat Khar Elite Guard in Nordic Lands,got amount EXP and gold." )
		BC( "screen", "server", -1, "The hero ",#player_name,"team defeat Khar Elite Guard in Nordic Lands,got amount EXP and gold."  )
		
		if $teamplayer1_id != -1
			//???????BOSS?????,??????????
			$len = GetPlayerDistance( -1, $teamplayer1_id )
			if $len <= 30
			//??1??????
				//???????????,??
				$player_level = GetPlayerInfo( $teamplayer1_id, "level" )
				
				//???????????
				if $player_level >= 90
					$add_exp = $boss_exp_base
				else
					$temp_value = $boss_exp_base * $player_level
					$add_exp = $temp_value / 90
				endif
				//???????
				$add_money = $boss_money_base
				//????
				AddPlayerInfo($teamplayer1_id , "exp" , $add_exp)

				//????
				AddPlayerInfo($teamplayer1_id , "money" , $add_money)
				////BC( "chat", "player", $teamplayer1_id, "GUID:05175000004", $add_exp ,"GUID:05175000005",$add_money)
				
			endif
		endif
		
		
		
		if $teamplayer2_id != -1
			//???????BOSS?????,??????????
			$len = GetPlayerDistance( -1, $teamplayer2_id )
			if $len <= 30
			//??1??????
				//???????????,??
				$player_level = GetPlayerInfo( $teamplayer2_id, "level" )
				
				//???????????
				if $player_level >= 90
					$add_exp = $boss_exp_base
				else
					$temp_value = $boss_exp_base * $player_level
					$add_exp = $temp_value / 90
				endif
				//???????
				$add_money = $boss_money_base
				//????
				AddPlayerInfo($teamplayer2_id , "exp" , $add_exp)
				
				//????
				AddPlayerInfo($teamplayer2_id , "money" , $add_money)
				//BC( "chat", "player", $teamplayer2_id, "GUID:05175000006", $add_exp ,"GUID:05175000007",$add_money)
				
			endif
		endif
		
		
		if $teamplayer3_id != -1
			//???????BOSS?????,??????????
			$len = GetPlayerDistance( -1, $teamplayer3_id )
			if $len <= 30
			//??1??????
				//???????????,??
				$player_level = GetPlayerInfo( $teamplayer3_id, "level" )
				
				//???????????
				if $player_level >= 90
					$add_exp = $boss_exp_base
				else
					$temp_value = $boss_exp_base * $player_level
					$add_exp = $temp_value / 90
				endif
				//???????
				$add_money = $boss_money_base
				//????
				AddPlayerInfo($teamplayer3_id , "exp" , $add_exp)
		
				//????
				AddPlayerInfo($teamplayer3_id , "money" , $add_money)
				//BC( "chat", "player", $teamplayer3_id, "GUID:05175000008", $add_exp ,"GUID:05175000009",$add_money)
				
			endif
		endif		
		if $teamplayer4_id != -1
			//???????BOSS?????,??????????
			$len = GetPlayerDistance( -1, $teamplayer4_id )
			if $len <= 30
			//??1??????
				//???????????,??
				$player_level = GetPlayerInfo( $teamplayer4_id, "level" )
				
				//???????????
				if $player_level >= 90
					$add_exp = $boss_exp_base
				else
					$temp_value = $boss_exp_base * $player_level
					$add_exp = $temp_value / 90
				endif
				//???????
				$add_money = $boss_money_base
				//????
				AddPlayerInfo($teamplayer4_id , "exp" , $add_exp)
			
				//????
				AddPlayerInfo($teamplayer4_id , "money" , $add_money)
				//BC( "chat", "player", $teamplayer4_id, "GUID:05175000010", $add_exp ,"GUID:05175000011",$add_money)
				
			endif
		endif	
		
		
		if $teamplayer5_id != -1
			//???????BOSS?????,??????????
			$len = GetPlayerDistance( -1, $teamplayer5_id )
			if $len <= 30
			//??1??????
				//???????????,??
				$player_level = GetPlayerInfo( $teamplayer5_id, "level" )
				
				//???????????
				if $player_level >= 90
					$add_exp = $boss_exp_base
				else
					$temp_value = $boss_exp_base * $player_level
					$add_exp = $temp_value / 90
				endif
				//???????
				$add_money = $boss_money_base
				//????
				AddPlayerInfo($teamplayer5_id , "exp" , $add_exp)
	
				//????
				AddPlayerInfo($teamplayer5_id , "money" , $add_money)
				//BC( "chat", "player", $teamplayer5_id, "GUID:05175000012", $add_exp ,"GUID:05175000013",$add_money)
				
			endif
		endif
		
		
		if $teamplayer6_id != -1
			//???????BOSS?????,??????????
			$len = GetPlayerDistance( -1, $teamplayer6_id )
			if $len <= 30
			//??1??????
				//???????????,??
				$player_level = GetPlayerInfo( $teamplayer6_id, "level" )
				
				//???????????
				if $player_level >= 90
					$add_exp = $boss_exp_base
				else
					$temp_value = $boss_exp_base * $player_level
					$add_exp = $temp_value / 90
				endif
				//???????
				$add_money = $boss_money_base
				//????
				AddPlayerInfo($teamplayer6_id , "exp" , $add_exp)
				
				//????
				AddPlayerInfo($teamplayer6_id , "money" , $add_money)
				//BC( "chat", "player", $teamplayer6_id, "GUID:05175000014", $add_exp ,"GUID:05175000015",$add_money)
				
			endif
		endif				
	}	