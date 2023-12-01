	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/13
	//		Author:??
	//		TaskName:???NPC????329?NPC
	//		TaskID:HD-jinzita-NPC-LMtoBOSS.s
	//
	//****************************************
	//??????
	function OnRequest(){
		
		$wh_key_number = GetServerVar (43)
		if $wh_key_number >= 100
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
		endif
	
	}
	//????,????
	function OnOption0(){
	
	
		$count = GetPlayerInfo( -1, "item", 63183)
		if $count < 1
			BC( "dialogbox", "player", -1, "You do not have a Key to the Hexagram Array." )
			return
		endif
		$revalue = SubPlayerInfo(-1 , "item" , 63183 , 1)
        if $revalue != 0
			return
		endif
		AddPlayerInfo(-1, "prestige" , 15 , 10)      

		$wh_key_number = GetServerVar (43)
		$wh_key_number = $wh_key_number + 1
		SetServerVar (43 , $wh_key_number)
		//????????,?????
		$a = 100 - $wh_key_number

		#player_name = GetPlayerInfo( -1, "name" )
		if $a > 0
			BC( "screen", "map", 126, "The hero ",#player_name," donated a key to the Hexagram Array. " ,$a , " more keys are needed.")
		else
			BC( "screen", "map", 126, "The hero ",#player_name," has donated the last key to the Hexagram Array. 100 keys have been donated and the path to the boss is open!")
		endif

		
	}
	//?????BOSS??
	function OnOption1(){
	
	
		$wh_key_number = GetServerVar (43)
		if $wh_key_number < 100
			BC( "dialogbox", "player", -1, "More keys are needed." )
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
		
		
		$map_id = 198
		$map_x = 52
		$map_y = 50
	
	
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
		
	}