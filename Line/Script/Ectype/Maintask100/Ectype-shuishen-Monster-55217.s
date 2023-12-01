  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/09
	//		Author:???
	//		TaskName:Ectype-shuishen-Monster-55217.s
	//		TaskID:???
	//****************************************
	
	function OnDead(){
		$ectype_ID = GetEctypeID( -1, 265 )
		SetPlayerVar( -1, 3246, 3 )
		
		//????
		AddMonsterByFloat( 55216, 1, $ectype_ID, 117, 79, 0 )
		BC("screen", "map", $ectype_ID, "3 judges have been defeated. It is Dream God's turn now.")
		BC("chat", "map", $ectype_ID, "Dream God shows up near 117,79")
		BC("messagebox", "map", $ectype_ID, "Dream God shows up near 117,79")
		PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		
	}