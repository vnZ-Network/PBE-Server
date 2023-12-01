	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/17
	//		Author:??
	//		TaskName:NPC-zhandui-2221
	//		TaskID:????
	//
	//****************************************
	
	
	function OnRequest(){
	//????104?????????
	//????104?????????			
//		$line = GetServerLineID()
//		if $line <= 104
//			DisableNpcOption(1)
//		else	
//			DisableNpcOption(0)
//		endif
//?????1-12?????????
		$hour = GetSystemTime( "hour" )	
		if $hour < 12
			DisableNpcOption(0)
		endif

	}
	function OnOption0(){
		
		$count = GetTeamMemberCount( -1 )
		if $count < 6
			BC( "messagebox", "player", -1, "The team needs 6 members." )
			return
		endif
		$Men1 = GetTeamMemberID( -1, 0 )
		$Men2 = GetTeamMemberID( -1, 1 )
		$Men3 = GetTeamMemberID( -1, 2 )
		$Men4 = GetTeamMemberID( -1, 3 )
		$Men5 = GetTeamMemberID( -1, 4 )
		$Men6 = GetTeamMemberID( -1, 5 )
		$bat_team1 = GetBattleTeam($Men1, 2)
		$bat_team2 = GetBattleTeam($Men2, 2)
		$bat_team3 = GetBattleTeam($Men3, 2)
		$bat_team4 = GetBattleTeam($Men4, 2)
		$bat_team5 = GetBattleTeam($Men5, 2)
		$bat_team6 = GetBattleTeam($Men6, 2)
			if $bat_team1 != $bat_team2
				BC ( "messagebox", "player", -1, "A team member is not in your group." )
				return
			endif	
			if $bat_team1 != $bat_team3
				BC ( "messagebox", "player", -1, "A team member is not in your group." )
				return
			endif	
			if $bat_team1 != $bat_team4
				BC ( "messagebox", "player", -1, "A team member is not in your group." )
				return
			endif	
			if $bat_team1 != $bat_team5
				BC ( "messagebox", "player", -1, "A team member is not in your group." )
				return
			endif	
			if $bat_team1 != $bat_team6
				BC ( "messagebox", "player", -1, "A team member is not in your group." )
				return
			endif
		$n2 = 0
		while $n2 < 6
		$teamplayer_id = GetTeamMemberID( -1 , $n2 )
		$n2 = $n2 + 1
		$teamplayer_map = GetPlayerInfo( $teamplayer_id , "mapid" )
		#name = GetPlayerInfo( $teamplayer_id , "name" )
			if	$teamplayer_map != 282
				BC ( "chat", "player", -1, #name , "Not in this scene." )
				BC ( "messagebox", "player", -1, "Someone is not in this map now." )
				return
			endif
		endwhile			
		$result = BattleTeamSign( 266 )

		if $result == 0
			if $Men1 != -1
				BC( "chat", "player", $Men1 , "Queuing for Arena, please wait for the war to start!" )
				BC( "screen", "player", $Men1 , "Queuing for Arena, please wait for the war to start!" )
			endif
			if $Men2 != -1
				BC( "chat", "player", $Men2 , "Queuing for Arena, please wait for the war to start!" )
				BC( "screen", "player", $Men2 , "Queuing for Arena, please wait for the war to start!" )
			endif
			if $Men3 != -1
				BC( "chat", "player", $Men3 , "Queuing for Arena, please wait for the war to start!" )
				BC( "screen", "player", $Men3 , "Queuing for Arena, please wait for the war to start!" )
			endif
			if $Men4 != -1
				BC( "chat", "player", $Men4 , "Queuing for Arena, please wait for the war to start!" )
				BC( "screen", "player", $Men4 , "Queuing for Arena, please wait for the war to start!" )
			endif
			if $Men5 != -1
				BC( "chat", "player", $Men5 , "Queuing for Arena, please wait for the war to start!" )
				BC( "screen", "player", $Men5 , "Queuing for Arena, please wait for the war to start!" )
			endif
			if $Men6 != -1
				BC( "chat", "player", $Men6 , "Queuing for Arena, please wait for the war to start!" )
				BC( "screen", "player", $Men6 , "Queuing for Arena, please wait for the war to start!" )
			endif
		endif
		
		if $result == 2
			BC( "messagebox", "player", -1, "You have signed up, please wait to enter the battleground." )
			return
		endif
		
		if $result == 3
			BC( "dialogbox", "player", -1, "Arena instance is full now, please wait." )
			return
		endif
		
		if $result == 4
			BC( "dialogbox", "player", -1, "You are not the leader of the team!" )
			return
		endif
		
//		if $result == 5
//			BC( "messagebox", "player", -1, "GUID:03445000023" )
//			return
//		endif		
		
	}			
	
