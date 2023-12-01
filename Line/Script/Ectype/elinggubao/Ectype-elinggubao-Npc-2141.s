	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/08
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2141.s
	//		TaskID:????NPC
	//
	//****************************************
	
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		
		
		$ectype_id = GetEctypeID( -1 , 258 )
		
		$size = GetTeamAreaSize(-1)
		if $size > 10
			BC( "screen", "player", -1, "Gather your teammates to start the Challenge" )
			return
		endif
		
		StartEctypeTimer ( -1 , 8 )
		StartEctypeTimer ( -1 , 9 )
		
		PlayEffect(-1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini", 1 )
		BC( "screen" , "map" , $ectype_id , "Dark Harbinger: Haha! Puny weaklings!" )
		
		$team_count = GetTeamMemberCount(-1)
		SetEctypeVar( $ectype_id, 96, $team_count )
		$k = 113
		while $team_count > 0
			$team_count = $team_count - 1
			$teamplayer_id =  GetTeamMemberID( -1, $team_count )
			if $teamplayer_id == -1
				$player_id = GetPlayerID()
				SetEctypeVar( $ectype_id, $k, $player_id )
			else
				SetEctypeVar( $ectype_id, $k, $teamplayer_id )
			endif
			$k = $k + 1
		endwhile
		

	}