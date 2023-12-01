	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Task-194.s
	//		TaskID NPC马蒂任务
	//
	//****************************************
	
	function OnTaskAccept(){
		
		$ectype_ID = GetEctypeID( -1 , 253 )
		DeleteNPC( 547, $ectype_ID )
		AddMonsterByFloat( 51575, 1, $ectype_ID, 183, 116, 0 )
	}