  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/09
	//		Author:???
	//		TaskName:Ectype-shuishen-Monster-55216.s
	//		TaskID:??
	//****************************************
	
	function OnDead(){
		$ectype_ID = GetEctypeID( -1, 265 )
		$player_var = GetPlayerVar( -1, 3246 )
		
		//??????
		$player_var = $player_var + 1
		SetPlayerVar( -1, 3246, $player_var )
		
		//????
		AddMonster( 55215, 1, $ectype_ID, 78, 30, 0 )
		BC("screen", "map", $ectype_ID, "Dream God! No, you defeated my brother but not me!")
		BC("chat", "map", $ectype_ID, "Hypnos shows up near 199, 79")
		PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		
	}