//****************************************
//
//		Copyright:PERFECT WORLD
//		Modified:2009/05/05
//		Author:???
//		TaskName:?????
//		TaskID:HD-Pyramid-NPC-1793.s
//
//****************************************

	function OnRequest(){
		$yanhou = GetServerVar( 70 )
		$saisi = GetServerVar( 74 )
		if $yanhou != 1
			DisableNpcOption(0)
		endif
		if $saisi != 1
			DisableNpcOption(0)
		endif
	}
	
	function OnOption0(){	
		$yanhou = GetServerVar( 70 )
		$saisi = GetServerVar( 74 )
		if $yanhou != 1
			BC( "dialogbox", "player", -1, "Shadow of the Queen Hallucination has not been slain yet!" )
			return
		endif
		if $saisi != 1
			BC( "dialogbox", "player", -1, "You cannot enter Set's Temple." )
			return
		endif
		
		$Team_Number = GetTeamMemberCount( -1 )
		if $Team_Number < 2
			FlyToMap( -1, 203, 64, 40 )
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
				
		$map_id = 203
		$map_x = 64
		$map_y = 40
		
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
		
	}