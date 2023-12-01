	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/4
	//		Author:??
	//		TaskName:Battle-NPC-paidui-2170.s
	//		TaskID: ??????NPC??????
	//
	//****************************************
	
	
	function OnRequest(){
		
//		$time_week = GetSystemTime( "week" )
//		BC( "chat", "player", -1, "1" )
//		$time_hour = GetSystemTime( "hour" )
//		BC( "chat", "player", -1, "2" )
//		if $time_week != 6
//			DisableNpcOption(1)
//			BC( "chat", "player", -1, "3" )
//		else
//			DisableNpcOption(0)
//			BC( "chat", "player", -1, "4" )
//		endif
//		if $time_hour < 12
//			DisableNpcOption(1) 
//			DisableNpcOption(0)
//			BC( "chat", "player", -1, "5" )
//		endif
						
	}
	
	function OnOption0(){
		
		$lv = GetPlayerInfo( -1, "level" )
		if $lv < 45
			BC( "dialogbox", "player", -1, "You are lower than LV45!" )
			BC( "chat", "player", -1, "6" )
			return
		endif
		$headerID = GetTeamHeaderID( -1 )
		if  $headerID != -1
			BC( "dialogbox", "player", -1, "Only a single player can queue up for the Ancient Ruins!" )
			BC( "chat", "player", -1, "Only a single player can queue up for the Ancient Ruins!" )
			return
		endif
			
		ParticipateZoneWar( -1 , 0 )
		
		
		
	}	
	function OnOption1(){
												
//		$team_headerID = GetTeamHeaderID(-1)
//		$player_id = GetPlayerID()
//		//????????
//		if $player_id != $team_headerID
//			BC( "dialogbox", "player", -1, "GUID:03356000003" )
//			return
//		endif
//		$count = GetTeamMemberCount( -1 )
//			if $count < 6
//				BC( "dialogbox", "player", -1, "GUID:03356000004" )
//				return
//			endif		
		
		$size = GetTeamAreaSize(-1)	
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Your party members are too far away from you!" )
			return
		endif
		$a = 0
		while $a < 6
			$teamplayer_id = GetTeamMemberID( -1 , $a )
			$a = $a + 1
			if $teamplayer_id != -1
			$temp_level = GetPlayerInfo( $teamplayer_id, "level" )
				if $temp_level < 75
					//????75???,????
					BC( "dialogbox", "player", -1, "Someone is lower than LV75 in your team!" )
					return
				endif
			endif
		endwhile								
				ParticipateZoneWar(-1, 1)	
				
	
	
	}
	

			
		
		
					