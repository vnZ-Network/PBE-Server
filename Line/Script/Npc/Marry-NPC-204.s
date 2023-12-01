	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/07
	//		Author:???
	//		TaskName:Marry-NPC-204.s
	//		TaskID:????(?)
	//
	//****************************************
	
	function OnRequest(){
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 50
			DisableNpcOption(0)
		endif
		
		$result = IsTaskAccept( -1, 1658 )
		if $result == 0
			DisableNpcOption(0)
		endif
		
		$donetask = IsTaskDone( -1, 1657 )
		if $donetask != 0
			DisableNpcOption(0)
		endif
		
		$donetask1 = IsTaskDone( -1, 1658 )
		if $donetask1 == 0
			DisableNpcOption(0)
		endif
		
	}
	
	
	function OnOption0(){		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 50
			BC( "dialogbox", "player", -1, "You are not LV50 yet." )
			return
		endif
		
		$team_headerID = GetTeamHeaderID( -1 )
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "You are not the party leader." )
			return
		endif
		
		$team_count = GetTeamMemberCount(-1)
		//????????
		if $team_count != 2
			BC( "dialogbox", "player", -1, "You must form a 2-member-party with your friend before you take the quest." )
			return
		endif
		
		$size = GetTeamAreaSize( -1 )
		if $size > 15
			//?????????????
			BC( "dialogbox", "player", -1, "One or more of your party members is too far from you." )
			return
		endif
		
		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$temp_sex = GetPlayerInfo( $teamplayer1_id, "sex" )
		$temp_sex1 = GetPlayerInfo( $teamplayer2_id, "sex" )
		if $temp_sex == $temp_sex1
			BC( "dialogbox", "player", -1, "A marriage is available between two characters of different genders." )
			return
		endif
		
		//1???
		if $teamplayer1_id != -1
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
			if $temp_level < 50
				BC( "dialogbox", "player", -1, "You friend is not LV50 yet." )
				return
			endif		
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
			if $temp_level < 50
				BC( "dialogbox", "player", -1, "You friend is not LV50 yet." )
				return
			endif
		endif
		//-------------------------------------------
		$result = IsTaskAccept( -1, 1658 )
		if $result == 0
			BC( "dialogbox", "player", -1, "You have already acquired the quest." )
			return
		endif
		
		$donetask = IsTaskDone( -1, 1658 )
		if $donetask == 0
			BC( "dialogbox", "player", -1, "You have already finished the quest." )
			return
		endif
		
		$donetask1 = IsTaskDone( -1, 1657 )
		if $donetask1 != 0
			BC( "dialogbox", "player", -1, "You haven't finished a previous quest." )
			return
		endif
		
		AcceptTask( -1, 1658 )
		
	}	