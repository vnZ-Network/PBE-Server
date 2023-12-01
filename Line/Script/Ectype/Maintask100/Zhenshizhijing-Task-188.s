	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Task-188.s
	//		TaskID 任务完成，三个金属扳手打开
	//
	//****************************************
	
	function OnTaskAccept(){
		
		$ectype_ID = GetEctypeID( -1 , 253 )
		SetEctypeVar( $ectype_ID, 39, 26 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 184, 151, 0 )
	}
	
	function OnTaskDone(){
		
		SetPlayerVar( -1, 3256, 4 )
	}