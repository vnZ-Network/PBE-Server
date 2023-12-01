	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Monster-Lust-51571.s
	//		TaskID 七宗罪之色欲
	//
	//****************************************
	
	
	function OnDead(){
	
		$ectype_ID = GetEctypeID( -1 , 253 )
		$posX = GetPlayerInfo( -1, "mapposx" )
		$posY = GetPlayerInfo( -1, "mapposy" )
		SetEctypeVar( $ectype_ID, 23, 0 )
		AddMonsterByFloat( 51586, 1, $ectype_ID, $posX, $posY, 0 )

	}