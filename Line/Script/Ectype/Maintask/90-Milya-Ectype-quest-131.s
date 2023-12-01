	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/11/10
	//		Author：司文博
	//		TaskName：90-Milya-Ectype-quest-131.s
	//		TaskID： 主线 131传送完成的记录
	//
	//****************************************
	
	function OnTaskAccept(){
	
		$ectype_id = GetEctypeID( -1 , 242 )
		DeleteNPC( 383 , $ectype_id )
		AddMonsterByFloat( 55064 , 1 , $ectype_id , 253, 129, 0 )
		
	}	
	
	function OnTaskDone(){
	
		SetPlayerVar( -1 , 44 , 1 )
		
	}