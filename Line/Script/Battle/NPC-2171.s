	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/05
	//		Author:??
	//		TaskName:npc-2170
	//		TaskID:????
	//
	//****************************************
	
	
	function OnRequest(){
	//????4?????????
	//????4?????????			
		$line = GetServerLineID()
		if $line <= 4
			DisableNpcOption(1)
		else	
			DisableNpcOption(0)
		endif
	//?????1-12?????????
		$hour = GetSystemTime( "hour" )	
		if $time < 12
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
}

	
	function OnOption0(){
		
		$Men1 = GetTeamMemberID( -1, 0 )
		$Men2 = GetTeamMemberID( -1, 1 )
		$Men3 = GetTeamMemberID( -1, 2 )
		$Men4 = GetTeamMemberID( -1, 3 )
		$Men5 = GetTeamMemberID( -1, 4 )
		$Men6 = GetTeamMemberID( -1, 5 )
		
		$result = BattleSign( 259 )
		
		if $result == 0
			if $Men1 != -1
				BC( "chat", "player", $Men1 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men1 , "You are in the battlefield queue." )
			endif
			if $Men2 != -1
				BC( "chat", "player", $Men2 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men2 , "You are in the battlefield queue." )
			endif
			if $Men3 != -1
				BC( "chat", "player", $Men3 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men3 , "You are in the battlefield queue." )
			endif
			if $Men4 != -1
				BC( "chat", "player", $Men4 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men4 , "You are in the battlefield queue." )
			endif
			if $Men5 != -1
				BC( "chat", "player", $Men5 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men5 , "You are in the battlefield queue." )
			endif
			if $Men6 != -1
				BC( "chat", "player", $Men6 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men6 , "You are in the battlefield queue." )
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
			BC( "dialogbox", "player", -1, "You are not the party leader." )
			return
		endif
}			

	function OnOption1(){
	
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
			if $bat_team1 = $bat_team2
				if $bat_team1 = $bat_team3
					if $bat_team1 = $bat_team4
						if $bat_team1 = $bat_team5
							if $bat_team1 = $bat_team6
								$result = BattleSign( 266 )
							else 
								BC ( "messagebox", "player", -1, "A team member is not in your group." )
							endif
						endif
					endif
				endif
			endif					

		
		
		if $result == 0
			if $Men1 != -1
				BC( "chat", "player", $Men1 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men1 , "You are in the battlefield queue." )
			endif
			if $Men2 != -1
				BC( "chat", "player", $Men2 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men2 , "You are in the battlefield queue." )
			endif
			if $Men3 != -1
				BC( "chat", "player", $Men3 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men3 , "You are in the battlefield queue." )
			endif
			if $Men4 != -1
				BC( "chat", "player", $Men4 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men4 , "You are in the battlefield queue." )
			endif
			if $Men5 != -1
				BC( "chat", "player", $Men5 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men5 , "You are in the battlefield queue." )
			endif
			if $Men6 != -1
				BC( "chat", "player", $Men6 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men6 , "You are in the battlefield queue." )
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
}
	
	function OnOption2(){
	
		ReceiveExtraCredit()
		
	}