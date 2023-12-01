	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Task-196.s
	//		TaskID 找出拉达曼托斯
	//
	//****************************************
	
	function OnTaskAccept(){
		
		$ectype_ID = GetEctypeID( -1 , 253 )
		SetEctypeVar( $ectype_ID, 39, 37 )
		SetPlayerVar( -1, 3258, 0 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 209, 0 )

	}
	
	function OnTaskDone(){
		
		$ectype_ID = GetEctypeID( -1 , 253 )
		SetEctypeVar( $ectype_ID, 40, 6 )
		SetEctypeVar( $ectype_ID, 62, 1 )
		StartEctypeTimer( $ectype_ID, 9 )

	}