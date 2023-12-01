//****************************************
//
//		Copyright:PERFECT WORLD
//		Modified:2009/05/05
//		Author:???
//		TaskName:?????
//		TaskID:HD-Pyramid-NPC-1805.s
//
//****************************************

	function OnRequest(){
		$wh_key_number = GetServerVar ( 84 )
		if $wh_key_number >= 10
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
		endif
	}

	function OnOption0(){
		$count = GetPlayerInfo( -1, "item", 50035 )
		if $count < 1
			BC( "dialogbox", "player", -1, "You don't have any Hexagram Keys with you." )
			return
		endif
		$revalue = SubPlayerInfo( -1 , "item" , 50035 , 1 )
		if $revalue != 0
			return
		endif
		AddPlayerInfo( -1, "prestige" , 15 , 10 )      		
		$wh_key_number = GetServerVar ( 84 )
		$wh_key_number = $wh_key_number + 1
		SetServerVar ( 84, $wh_key_number)
		
		$RankList = GetRankListValue( 1, 499 )
		
		//?
		if $RankList < 75
			$SLMID = 30042
		endif
		
		//1???
		if $RankList >= 75
			if $RankList <= 89
				$SLMID = 11854
			endif
		endif
		
		//2???
		if $RankList >= 90
			if $RankList <= 99
				$SLMID = 11864
			endif
		endif
		
		//3???
		if $RankList >= 100
			if $RankList <= 109
				$SLMID = 11874
			endif
		endif
		
		//4???
		if $RankList >= 110
			if $RankList <= 119
				$SLMID = 11884
			endif
		endif
		
		//5???
		if $RankList >= 120
			
				$SLMID = 11894

		endif	
		
		
		//????????,?????
		$a = 10 - $wh_key_number
		#player_name = GetPlayerInfo( -1, "name" )
		if $a > 0
			BC( "screen", "map", 202, "The hero ",#player_name," has donated one Hexagram Key. It requires ",$a ," more keys to open the portal.")
		else
			$yanhouBoss = AddSingleMonster( $SLMID, 202, 44, 41, 0 )
			SetServerVar( 88, $yanhouBoss )
			BC( "screen", "map", 202, "The hero ",#player_name," more keys to open the portal.")
		endif
	}
	
	function OnOption1(){	
		$wh_key_number = GetServerVar ( 84 )
		if $wh_key_number < 10
			BC( "dialogbox", "player", -1, "Not enough keys yet!" )
			return
		endif
		
		$Team_Number = GetTeamMemberCount( -1 )
		if $Team_Number < 2
			FlyToMap( -1, 202, 52, 49 )
			return
		endif
		
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
	
		//????????
		if $player_id != $team_headerID
		//??????,?????
			BC( "dialogbox", "player", -1, "You are not the party leader!" )
			return
		endif
		$size = GetTeamAreaSize(-1)
		//?????????
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "You party member is too far from you." )
			return
		endif
	
		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		
		$map_id = 202
		$map_x = 52
		$map_y = 49
	
	
		if $teamplayer1_id != -1
			$result = FlyToMap( $teamplayer1_id, $map_id, $map_x, $map_y )
		endif
		if $teamplayer2_id != -1
			$result = FlyToMap( $teamplayer2_id, $map_id, $map_x, $map_y )
		endif
		if $teamplayer3_id != -1
			$result = FlyToMap( $teamplayer3_id, $map_id, $map_x, $map_y )
		endif
		if $teamplayer4_id != -1
			$result = FlyToMap( $teamplayer4_id, $map_id, $map_x, $map_y )
		endif
		if $teamplayer5_id != -1
			$result = FlyToMap( $teamplayer5_id, $map_id, $map_x, $map_y )
		endif
		if $teamplayer6_id != -1
			$result = FlyToMap( $teamplayer6_id, $map_id, $map_x, $map_y )
		endif
		
		//?????ID
		$team_head_id =	GetTeamHeaderID (-1)
		//???????
		#player_name = GetPlayerInfo( $team_head_id, "name" )
		BC( "chat", "server", -1, "The hero ",#player_name," has lead the party and entered the boss room of Hexagram Array Hallucination." )
		BC( "screen", "server", -1, "The hero ",#player_name," has lead the party and entered the boss room of Hexagram Array Hallucination." )
		
	}