	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/11
	//		Author:???
	//		TaskName:Ectype-Titan-Npc-744.s
	//		TaskID:????????
	//
	//****************************************
	//
	function OnRequest(){
		
		//?????????????
		
		$ectype_IDM = GetEctypeID( -1, 313 )	
		if $ectype_IDM > 0
			DisableNpcOption(0)
		endif
		
	}
	
	//????
	function OnOption0(){
		
		$team_count = GetTeamMemberCount(-1)
		//????????
		if $team_count < 2
			$team_headerID = GetTeamHeaderID(-1)
			$player_id = GetPlayerID()
			//????????
			if $player_id != $team_headerID
				BC( "dialogbox", "player", -1, "Please form a party." )
				return
			endif
		else
			$team_headerID = GetTeamHeaderID(-1)
			$player_id = GetPlayerID()
			//????????
			if $player_id != $team_headerID
				BC( "dialogbox", "player", -1, "You are not the party leader." )
				return
			endif
		endif
		
		$size = GetTeamAreaSize( -1 )
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Your party member is too far away." )
			return
		endif
		
		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		//-------------------------------------------------------------------------------------1?
		if $teamplayer1_id != -1
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
			if $temp_level < 110
				BC( "dialogbox", "player", -1, "At least one member of your party is below LV110. Unable to enter." )
				return
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
			if $temp_level < 110
				BC( "dialogbox", "player", -1, "At least one member of your party is below LV110. Unable to enter." )
				return
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------3?
		if $teamplayer3_id != -1
			$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
			if $temp_level < 110
				BC( "dialogbox", "player", -1, "At least one member of your party is below LV110. Unable to enter." )
				return
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------4?
		if $teamplayer4_id != -1
			$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
			if $temp_level < 110
				BC( "dialogbox", "player", -1, "At least one member of your party is below LV110. Unable to enter." )
				return
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------5?
		if $teamplayer5_id != -1
			$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
			if $temp_level < 110
				BC( "dialogbox", "player", -1, "At least one member of your party is below LV110. Unable to enter." )
				return
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------6?
		if $teamplayer6_id != -1
			$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
			if $temp_level < 110
				BC( "dialogbox", "player", -1, "At least one member of your party is below LV110. Unable to enter." )
				return
			endif
		endif
		//------------------------------------------------------------------------------------------
		//????.?????
		
		$is_succeed = FlyToEctype( $team_headerID, 313, 40, 80 )
		if $is_succeed > 0
			SetPlayerVar( $team_headerID, 3833, $is_succeed )
			BC( "screen", "player", $team_headerID, "You have entered the Throne Hallway. " )
			//????ID
			$ectype_ID = GetEctypeID( $team_headerID, 303 )
			$ectype_IDM = GetEctypeID( $team_headerID, 313 )
			$ectype_type = GetEctypeVar( $ectype_ID, 0 )
			StartEctypeTimer( $team_headerID, 313, 0 )
			StartEctypeTimer( $team_headerID, 303, 3 )
			//??????
			SetEctypeVar( $ectype_IDM, 0, $ectype_type )
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif
		
		//------------------------------------------------------------------------------------------  1
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer1_id, 313, 40, 80 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer1_id , 3833 , $is_succeed )
					BC( "screen", "player", $teamplayer1_id, "You have entered the Throne Hallway. " )
				else
					BC( "dialogbox", "player", $teamplayer1_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  2
		if $teamplayer2_id != -1
			if $teamplayer2_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer2_id, 313, 40, 80 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer2_id , 3833 , $is_succeed )
					BC( "screen", "player", $teamplayer2_id, "You have entered the Throne Hallway. " )
				else
					BC( "dialogbox", "player", $teamplayer2_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  3
		if $teamplayer3_id != -1
			if $teamplayer3_id != $team_headerID			
				$is_succeed = FlyToEctype( $teamplayer3_id, 313, 40, 80 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer3_id , 3833 , $is_succeed )
					BC( "screen", "player", $teamplayer3_id, "You have entered the Throne Hallway. " )
				else
					BC( "dialogbox", "player", $teamplayer3_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  4
		if $teamplayer4_id != -1
			if $teamplayer4_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer4_id, 313, 40, 80 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer4_id , 3833 , $is_succeed )
					BC( "screen", "player", $teamplayer4_id, "You have entered the Throne Hallway. " )
				else
					BC( "dialogbox", "player", $teamplayer4_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  5
		if $teamplayer5_id != -1
			if $teamplayer5_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer5_id, 313, 40, 80 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer5_id , 3833 , $is_succeed )
					BC( "screen", "player", $teamplayer5_id, "You have entered the Throne Hallway. " )
				else
					BC( "dialogbox", "player", $teamplayer5_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  6
		if $teamplayer6_id != -1
			if $teamplayer6_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer6_id, 313, 40, 80 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer6_id , 3833 , $is_succeed )
					BC( "screen", "player", $teamplayer6_id, "You have entered the Throne Hallway. " )
				else
					BC( "dialogbox", "player", $teamplayer6_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		
	}