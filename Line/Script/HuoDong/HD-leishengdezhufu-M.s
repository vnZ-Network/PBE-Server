    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/12
	//		Author:??
	//		TaskName:HD-leishengdezhufu-M.s
	//		TaskID:?????.BOSS??
	//
	//****************************************
	function OnDead(){
		//BOSS??????
		SetServerVar(34, 1)
		//1???BOSS??????????
		SetServerVar(28 ,0)
		
		$team_head_id =	GetTeamHeaderID (-1)
		//???????
		#player_name = GetPlayerInfo( $team_head_id, "name" )
		//????BOSS???
		AddMapPlayerInfo(64 , "prestige" , 8 ,50)
		BC( "screen", "server", -1, "The hero ",#player_name," and their party has defeated Khar's Shadow, protecting the ceremony of Thor's awakening. All players in the Altar of Thor have received 50 Thor's Faith reputation!" )
		BC( "chat", "server", -1, "The hero ",#player_name," and their party has defeated Khar's Shadow, protecting the ceremony of Thor's awakening. All players in the Altar of Thor have received 50 Thor's Faith reputation!" )	

	}