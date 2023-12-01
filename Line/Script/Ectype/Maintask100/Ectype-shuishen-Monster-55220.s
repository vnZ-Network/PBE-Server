  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/09
	//		Author:???
	//		TaskName:Ectype-shuishen-Monster-55220.s
	//		TaskID:???
	//****************************************
	
	function OnDead(){
		$ectype_ID = GetEctypeID( -1, 265 )
		SetPlayerVar( -1, 3246, 7 )
		
		//????
		$Player_x = GetPlayerInfo( -1, "mapposx" )
		$Player_x = $Player_x - 1
		$Player_y = GetPlayerInfo( -1, "mapposy" )
		$Player_y = $Player_y + 1
		AddNpcByPos( 525, $ectype_ID, $Player_x, $Player_y, 3600, 0 )
		BC("screen", "map", $ectype_ID, "Good. Maybe you're strong enough to help Hades.")
		PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		
	}