	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/02/24
	//		Author��������
	//		TaskName��Zhenshizhijing-Monster-Wrath-51555.s
	//		TaskID ������֮��ŭ
	//
	//****************************************
	
	
	function OnDead(){
	
		$ectype_ID = GetEctypeID( -1 , 253 )
		$posX = GetPlayerInfo( -1, "mapposx" )
		$posY = GetPlayerInfo( -1, "mapposy" )
		SetEctypeVar( $ectype_ID, 23, 0 )
		AddMonsterByFloat( 51586, 1, $ectype_ID, $posX, $posY, 0 )

	}