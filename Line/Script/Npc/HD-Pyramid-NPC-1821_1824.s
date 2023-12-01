	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/07
	//		Author:???
	//		TaskName:HD-Pyramid-NPC-1821_1824.s
	//		TaskID:???????
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$ServerVar1 = GetServerVar( 75 )
		$ServerVar2 = GetServerVar( 79 )
		$ServerVarJ = GetServerVar( 80 )
		$PlayerVarInto = GetPlayerVar( -1, 3658 )
		if $ServerVar1 != 1
			BC( "dialogbox", "player", -1, "Event Pyramid illusion has not been activated yet." )
			return
		endif
		if $ServerVar2 != 0
			BC( "dialogbox", "player", -1, "Someone has already used the portal and emptied its energy. The portal cannot afford another man coming through." )
			return
		endif
		if $PlayerVarInto == $ServerVarJ
			BC( "dialogbox", "player", -1, "The portal is out of use now." )
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
		
		$Team_Number = GetTeamMemberCount( -1 )
		if $Team_Number < 6
			BC( "dialogbox", "player", -1, "You don't want to enter Pyramid illusion unless you have a perfect 6-member-party, or it would be suicide." )
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
		
		$StatusID1 = IsExistStatus( $teamplayer1_id, 10652 )
		$StatusID2 = IsExistStatus( $teamplayer2_id, 10652 )
		$StatusID3 = IsExistStatus( $teamplayer3_id, 10652 )
		$StatusID4 = IsExistStatus( $teamplayer4_id, 10652 )
		$StatusID5 = IsExistStatus( $teamplayer5_id, 10652 )
		$StatusID6 = IsExistStatus( $teamplayer6_id, 10652 )
		
		$teamplayer1_lv =  GetPlayerInfo( $teamplayer1_id , "level" )
		$teamplayer2_lv =  GetPlayerInfo( $teamplayer2_id , "level" )
		$teamplayer3_lv =  GetPlayerInfo( $teamplayer3_id , "level" )
		$teamplayer4_lv =  GetPlayerInfo( $teamplayer4_id , "level" )
		$teamplayer5_lv =  GetPlayerInfo( $teamplayer5_id , "level" )
		$teamplayer6_lv =  GetPlayerInfo( $teamplayer5_id , "level" )
	
		if $teamplayer1_lv < 65
			BC( "dialogbox", "player", -1, "Unable to enter Pyramid illusion. One or more of your party members is below LV65." )
			return
		endif
		
		if $teamplayer2_lv < 65
			BC( "dialogbox", "player", -1, "Unable to enter Pyramid illusion. One or more of your party members is below LV65." )
			return
		endif
		
		if $teamplayer3_lv < 65
			BC( "dialogbox", "player", -1, "Unable to enter Pyramid illusion. One or more of your party members is below LV65." )
			return
		endif
		
		if $teamplayer4_lv < 65
			BC( "dialogbox", "player", -1, "Unable to enter Pyramid illusion. One or more of your party members is below LV65." )
			return
		endif
		
		if $teamplayer5_lv < 65
			BC( "dialogbox", "player", -1, "Unable to enter Pyramid illusion. One or more of your party members is below LV65." )
			return
		endif
		
		if $teamplayer6_lv < 65
			BC( "dialogbox", "player", -1, "Unable to enter Pyramid illusion. One or more of your party members is below LV65." )
			return
		endif
		
		if $StatusID1 == 0
			BC( "dialogbox", "player", -1, "Unable to enter Pyramid illusion. One or more of your party members is suffering from Pharaoh's Curse." )
			return
		endif
		if $StatusID2 == 0
			BC( "dialogbox", "player", -1, "Unable to enter Pyramid illusion. One or more of your party members is suffering from Pharaoh's Curse." )
			return
		endif
		if $StatusID3 == 0
			BC( "dialogbox", "player", -1, "Unable to enter Pyramid illusion. One or more of your party members is suffering from Pharaoh's Curse." )
			return
		endif
		if $StatusID4 == 0
			BC( "dialogbox", "player", -1, "Unable to enter Pyramid illusion. One or more of your party members is suffering from Pharaoh's Curse." )
			return
		endif
		if $StatusID5 == 0
			BC( "dialogbox", "player", -1, "Unable to enter Pyramid illusion. One or more of your party members is suffering from Pharaoh's Curse." )
			return
		endif
		if $StatusID6 == 0
			BC( "dialogbox", "player", -1, "Unable to enter Pyramid illusion. One or more of your party members is suffering from Pharaoh's Curse." )
			return
		endif
		
		$map_id = 202
		$map_x = 35
		$map_y = 93
	
		//??
		$Now_Minute =  GetSystemTime( "minute" )
		//?
		$Now_Second = GetSystemTime( "second" )
		
		if $teamplayer1_id != -1
			SubPlayerInfo( $teamplayer1_id, "item", 50035, -1 )
			SetPlayerVar( $teamplayer1_id, 3659, 202 )
			SetPlayerVar( $teamplayer1_id, 3651, $Now_Minute )
			SetPlayerVar( $teamplayer1_id, 3652, $Now_Second )
			AcceptTask( $teamplayer1_id, 4427 )
			AddStatus( $teamplayer1_id, 10652, 1 )
			SetPlayerVar( $teamplayer1_id, 3658, $ServerVarJ )
			FlyToMap( $teamplayer1_id, $map_id, $map_x, $map_y )
		endif
		if $teamplayer2_id != -1
			SubPlayerInfo( $teamplayer2_id, "item", 50035, -1 )
			SetPlayerVar( $teamplayer2_id, 3659, 202 )
			SetPlayerVar( $teamplayer2_id, 3651, $Now_Minute )
			SetPlayerVar( $teamplayer2_id, 3652, $Now_Second )
			AcceptTask( $teamplayer2_id, 4427 )
			AddStatus( $teamplayer2_id, 10652, 1 )
			SetPlayerVar( $teamplayer2_id, 3658, $ServerVarJ )
			FlyToMap( $teamplayer2_id, $map_id, $map_x, $map_y )
		endif
		if $teamplayer3_id != -1
			SubPlayerInfo( $teamplayer3_id, "item", 50035, -1 )
			SetPlayerVar( $teamplayer3_id, 3659, 202 )
			SetPlayerVar( $teamplayer3_id, 3651, $Now_Minute )
			SetPlayerVar( $teamplayer3_id, 3652, $Now_Second )
			AcceptTask( $teamplayer3_id, 4427 )
			AddStatus( $teamplayer3_id, 10652, 1 )
			SetPlayerVar( $teamplayer3_id, 3658, $ServerVarJ )
			FlyToMap( $teamplayer3_id, $map_id, $map_x, $map_y )
		endif
		if $teamplayer4_id != -1
			SubPlayerInfo( $teamplayer4_id, "item", 50035, -1 )
			SetPlayerVar( $teamplayer4_id, 3659, 202 )
			SetPlayerVar( $teamplayer4_id, 3651, $Now_Minute )
			SetPlayerVar( $teamplayer4_id, 3652, $Now_Second )
			AcceptTask( $teamplayer4_id, 4427 )
			AddStatus( $teamplayer4_id, 10652, 1 )
			SetPlayerVar( $teamplayer4_id, 3658, $ServerVarJ )
			FlyToMap( $teamplayer4_id, $map_id, $map_x, $map_y )
		endif
		if $teamplayer5_id != -1
			SubPlayerInfo( $teamplayer5_id, "item", 50035, -1 )
			SetPlayerVar( $teamplayer5_id, 3659, 202 )
			SetPlayerVar( $teamplayer5_id, 3651, $Now_Minute )
			SetPlayerVar( $teamplayer5_id, 3652, $Now_Second )
			AcceptTask( $teamplayer5_id, 4427 )
			AddStatus( $teamplayer5_id, 10652, 1 )
			SetPlayerVar( $teamplayer5_id, 3658, $ServerVarJ )
			FlyToMap( $teamplayer5_id, $map_id, $map_x, $map_y )
		endif
		if $teamplayer6_id != -1
			SubPlayerInfo( $teamplayer6_id, "item", 50035, -1 )
			SetPlayerVar( $teamplayer6_id, 3659, 202 )
			SetPlayerVar( $teamplayer6_id, 3651, $Now_Minute )
			SetPlayerVar( $teamplayer6_id, 3652, $Now_Second )
			AcceptTask( $teamplayer6_id, 4427 )
			AddStatus( $teamplayer6_id, 10652, 1 )
			SetPlayerVar( $teamplayer6_id, 3658, $ServerVarJ )
			FlyToMap( $teamplayer6_id, $map_id, $map_x, $map_y )
		endif
		
		SetPlayerActLog($teamplayer1_id,18,0)
		SetPlayerActLog($teamplayer2_id,18,0)
		SetPlayerActLog($teamplayer3_id,18,0)
		SetPlayerActLog($teamplayer4_id,18,0)
		SetPlayerActLog($teamplayer5_id,18,0)
		SetPlayerActLog($teamplayer6_id,18,0)
		
		SetServerVar( 79, 1 )
		DeleteNPC( 1821 )
		DeleteNPC( 1822 )
		DeleteNPC( 1823 )
		DeleteNPC( 1824 )
		
		//?????ID
		$team_head_id =	GetTeamHeaderID (-1)
		//???????
		#player_name = GetPlayerInfo( $team_head_id, "name" )
		BC( "chat", "server", -1, "The hero ",#player_name," has lead the party and entered Hexagram Array Hallucination." )
		BC( "screen", "server", -1, "The hero ",#player_name," has lead the party and entered Hexagram Array Hallucination." )
		//??-START
			$TJ_join_number = GetGlobalVar(926)
			$TJ_join_number = $TJ_join_number + 6
			SetGlobalVar(926 , $TJ_join_number)
		//??-END
	}
