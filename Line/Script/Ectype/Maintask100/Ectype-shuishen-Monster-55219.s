  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/09
	//		Author:???
	//		TaskName:Ectype-shuishen-Monster-55219.s
	//		TaskID:?????
	//****************************************
	
	function OnDead(){
		$ectype_ID = GetEctypeID( -1, 265 )
		SetPlayerVar( -1, 3246, 1 )
		
		//????
		AddMonsterByFloat( 55218, 1, $ectype_ID, 203, 124, 0 )
		BC("screen", "map", $ectype_ID, "Latamantis is a small part of the netherworld, Minos will show you the power of our world.")
		BC("chat", "map", $ectype_ID, "Minos shows up near 203,124")
		BC("messagebox", "map", $ectype_ID, "Minos shows up near 203,124")
		PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		
	}