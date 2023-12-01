  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/09
	//		Author:???
	//		TaskName:Ectype-shuishen-Monster-55218.s
	//		TaskID:???
	//****************************************
	
	function OnDead(){
		$ectype_ID = GetEctypeID( -1, 265 )
		SetPlayerVar( -1, 3246, 2 )
		
		//????
		AddMonsterByFloat( 55217, 1, $ectype_ID, 123, 124, 0 )
		BC("screen", "map", $ectype_ID, "Stupid! You defeated Minos, Aeacus will teach you a lesson soon.")
		BC("chat", "map", $ectype_ID, "Aeacus shows up near 123,124")
		BC("messagebox", "map", $ectype_ID, "Aeacus shows up near 123,124")
		PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		
	}