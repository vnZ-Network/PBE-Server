	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Posui-NPC-541.s
	//		TaskID：破碎的真实之镜
	//
	//****************************************
	
	
	function OnRequest(){
	
		$done = IsTaskDone( -1 , 184 )
		$accept = IsTaskAccept( -1, 184 )
		
		if $done == 0
			DisableNpcOption( 0 )
		else
			if $accept != 0
				DisableNpcOption( 0 )
			endif	
		endif
	
	}
	
	function OnOption0(){
		
		$ectype_ID = GetEctypeID( -1 , 253 )
		AddStatus( -1, 6005, 1 )
		SetEctypeVar( $ectype_ID, 39, 56 )
		$posX = GetPlayerInfo( -1, "mapposx" )
		$posY = GetPlayerInfo( -1, "mapposy" )
		AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
		
	}