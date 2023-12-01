	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/13
	//		Author:??
	//		TaskName:???NPC???????????324?NPC
	//		TaskID:HD-jinzita-NPC-MStoWH.s
	//
	//****************************************
	//??????
	function OnRequest(){
	
	}
	
	function OnOption0(){
	
	
		//$count = GetPlayerInfo( -1, "item", 63182)
		//if $count < 1
		//	BC( "dialogbox", "player", -1, "GUID:04993000000" )
		//	return
		//endif
		
		$boss_wh_kill = GetServerVar(44)
		//$boss_js_kill = GetServerVar(45)
		$boss_ms_kill = GetServerVar(46)
		//$boss_lm_kill = GetServerVar(47)
		
		//????BOSS?????
		if $boss_wh_kill == 0
			if $boss_ms_kill == 0
				BC( "dialogbox", "player", -1, "Prince Arbyss' power hasn't vanished, it can be transferred after the death of Prince Arbyss or Shadow of the Queen!" )
				return
			endif
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
		
		
		$map_id = 123
		$map_x = 32
		$map_y = 101
	
	
		if $teamplayer1_id != -1
			$result = FlyToMap( $teamplayer1_id, $map_id, $map_x, $map_y )
			//??????
			if $result == 0
	
			endif	
		endif
		if $teamplayer2_id != -1
			$result = FlyToMap( $teamplayer2_id, $map_id, $map_x, $map_y )
			//??????
			if $result == 0
	
			endif	
		endif
		if $teamplayer3_id != -1
			$result = FlyToMap( $teamplayer3_id, $map_id, $map_x, $map_y )
			//??????
			if $result == 0
	
			endif	
		endif
		if $teamplayer4_id != -1
			$result = FlyToMap( $teamplayer4_id, $map_id, $map_x, $map_y )
			//??????
			if $result == 0
	
			endif	
		endif
		if $teamplayer5_id != -1
			$result = FlyToMap( $teamplayer5_id, $map_id, $map_x, $map_y )
			//??????
			if $result == 0
	
			endif	
		endif
		if $teamplayer6_id != -1
			$result = FlyToMap( $teamplayer6_id, $map_id, $map_x, $map_y )
			//??????
			if $result == 0
	
			endif	
		endif
			
		//SubPlayerInfo(-1 , "item" , 63182 , 1)
	}