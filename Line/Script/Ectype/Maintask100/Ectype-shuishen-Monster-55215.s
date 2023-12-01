  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/09
	//		Author:???
	//		TaskName:Ectype-shuishen-Monster-55215.s
	//		TaskID:??
	//****************************************
	
	function OnDead(){
		$ectype_ID = GetEctypeID( -1, 265 )
		SetPlayerVar( -1, 3246, 5 )
		
		//????
		AddMonsterByFloat( 55214, 1, $ectype_ID, 164, 115, 0 )
		BC("screen", "map", $ectype_ID, "Sir Hades! Sir Hades will freak you out!")
		BC("chat", "map", $ectype_ID, "Hades shows up near 164,115")
		BC("messagebox", "map", $ectype_ID, "Hades shows up near 164,115")
		PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		
	}