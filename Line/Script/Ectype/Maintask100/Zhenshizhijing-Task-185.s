	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Task-185.s
	//		TaskID 审判之石后续任务
	//
	//****************************************
	
	function OnTaskAccept(){
		
		$ectype_ID = GetEctypeID( -1 , 253 )
		SetEctypeVar( $ectype_ID, 39, 13 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 209, 0 )
		
	}
	
	function OnTaskDone(){
		
		

	}