    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/13
	//		Author:??
	//		TaskName:HD-jinzita-M-10846.s
	//		TaskID:???.BOSS?????????
	//
	//****************************************
	
	
	
	function OnDead(){
		
		//?????ID
		$team_head_id =	GetTeamHeaderID ( -1 )
		//???????
		#player_name = GetPlayerInfo( $team_head_id, "name" )
		//????BOSS???
		BC( "chat", "server", -1, "The hero ",#player_name," led a party and successfully trapped Osiris with a powerful seal." )
		BC( "screen", "server", -1, "The hero ",#player_name," led a party and successfully trapped Osiris with a powerful seal."  )
		
		$playerX = GetPlayerInfo( $team_head_id, "mapx" )
		$playerY = GetPlayerInfo( $team_head_id, "mapy" )
		
		AddMonster( 41047, 1, 127, 63, 69, 0 )
		AddMonster( 41047, 1, 127, 61, 70, 0 )
		
	}	