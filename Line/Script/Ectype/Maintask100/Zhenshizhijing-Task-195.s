	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Task-195.s
	//		TaskID 叹息的精魂
	//
	//****************************************
	
	function OnTaskAccept(){
		
		$ectype_ID = GetEctypeID( -1 , 253 )
		SetEctypeVar( $ectype_ID, 40, 5 )
		SetEctypeVar( $ectype_ID, 62, 1 )
		StartEctypeTimer( $ectype_ID, 9 )

	}
	
	function OnTaskDone(){
		
		$ectype_ID = GetEctypeID( -1 , 253 )
		SetEctypeVar( $ectype_ID, 39, 86 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 209, 0 )
		DeleteNPC( 542, $ectype_ID )
		AddNPC( 549, $ectype_ID )

	}