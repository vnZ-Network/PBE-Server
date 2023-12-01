	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2010/02/24
	//		Author£ºÍõ¼Ò÷è
	//		TaskName£ºZhenshizhijing-Monster-Envy-51553.s
	//		TaskID Æß×Ú×ïÖ®¼µ¶Ê
	//
	//****************************************
	
	
	function OnDead(){
	
		$ectype_ID = GetEctypeID( -1 , 253 )
		$posX = GetPlayerInfo( -1, "mapposx" )
		$posY = GetPlayerInfo( -1, "mapposy" )
		SetEctypeVar( $ectype_ID, 23, 0 )
		AddMonsterByFloat( 51586, 1, $ectype_ID, $posX, $posY, 0 )

	}