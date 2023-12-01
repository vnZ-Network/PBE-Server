  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/09
	//		Author:???
	//		TaskName:Ectype-shuishen-Monster-55224.s
	//		TaskID:??
	//****************************************
	
	function OnDead(){
		$ectype_ID = GetEctypeID( -1, 265 )
		SetPlayerVar( -1, 3246, 4 )
		
		//????
		AddMonsterByFloat( 55215, 1, $ectype_ID, 209, 79, 0 )
		BC("screen", "map", $ectype_ID, "Dream God! No, you defeated my brother but not me!")
		BC("chat", "map", $ectype_ID, "Hypnos shows up near 209, 79")
		BC("messagebox", "map", $ectype_ID, "Hypnos shows up near 209, 79")
		PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		
	}