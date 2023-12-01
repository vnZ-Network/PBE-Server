//****************************************
//
//		Copyright:PERFECT WORLD
//		Modified:2009/05/05
//		Author:???
//		TaskName:??
//		TaskID:HD-Pyramid-NPC-1800_1801.s
//
//****************************************

	function OnRequest(){
		$wh_key_number = GetServerVar ( 83 )
		if $wh_key_number >= 10
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
		endif
	}

	function OnOption0(){
		$count = GetPlayerInfo( -1, "item", 50034 )
		if $count < 1
			BC( "dialogbox", "player", -1, "You don't have Labyrinth Key." )
			return
		endif
		$revalue = SubPlayerInfo( -1 , "item" , 50034 , 1 )
		if $revalue != 0
			return
		endif
		AddPlayerInfo( -1, "prestige" , 15 , 10 )      		
		$wh_key_number = GetServerVar ( 83 )
		$wh_key_number = $wh_key_number + 1
		SetServerVar ( 83, $wh_key_number)
		
		$RankList = GetRankListValue( 1, 499 )
		
		//?
		if $RankList < 75
			$SLMID = 30041
		endif
		
		//1???
		if $RankList >= 75
			if $RankList <= 89
				$SLMID = 11853
			endif
		endif
		
		//2???
		if $RankList >= 90
			if $RankList <= 99
				$SLMID = 11863
			endif
		endif
		
		//3???
		if $RankList >= 100
			if $RankList <= 109
				$SLMID = 11873
			endif
		endif
		
		//4???
		if $RankList >= 110
			if $RankList <= 119
				$SLMID = 11883
			endif
		endif
		
		//5???
		if $RankList >= 120
			
				$SLMID = 11893

		endif	
		
		
		//????????,?????
		$a = 10 - $wh_key_number
		#player_name = GetPlayerInfo( -1, "name" )
		if $a > 0
			BC( "screen", "map", 201, "The hero ",#player_name," has donated one Labyrinth Key. It requires ",$a ," more keys to open the portal.")
		else
			$yanhouBoss = AddSingleMonster( $SLMID, 201, 88, 38, 0 )
			SetServerVar( 87, $yanhouBoss )
			BC( "screen", "map", 201, "The hero ",#player_name," more keys to open the portal.")
		endif
	}
	
	function OnOption1(){	
		$wh_key_number = GetServerVar ( 83 )
		if $wh_key_number < 10
			BC( "dialogbox", "player", -1, "Not enough keys yet!" )
			return
		endif
		
		$Team_Number = GetTeamMemberCount( -1 )
		if $Team_Number < 2
			FlyToMap( -1, 201, 78, 48 )
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
		
		
		$map_id = 201
		$map_x = 78
		$map_y = 48
	
	
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
		BC( "chat", "server", -1, "The hero ",#player_name," has lead the party and entered the boss room of Maze of Mystery Hallucination." )
		BC( "screen", "server", -1, "The hero ",#player_name," has lead the party and entered the boss room of Maze of Mystery Hallucination." )
		
	}