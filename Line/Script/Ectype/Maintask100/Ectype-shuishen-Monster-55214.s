  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/09
	//		Author:???
	//		TaskName:Ectype-shuishen-Monster-55214.s
	//		TaskID:???
	//****************************************
	
	function OnDead(){
		$ectype_ID = GetEctypeID( -1, 265 )
		SetPlayerVar( -1, 3246, 6 )
		
		//????
		AddMonsterByFloat( 55220, 1, $ectype_ID, 163, 80, 0 )
		BC("screen", "map", $ectype_ID, "Ha-ha, you have figured out all was fake. But do you think you can defeat me?")
		BC("chat", "map", $ectype_ID, "Hypnos(True) shows up near 163, 80")
		BC("messagebox", "map", $ectype_ID, "Hypnos(True) shows up near 163, 80")
		PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		
	}