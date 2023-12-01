	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/11/10
	//		Author：司文博
	//		TaskName：90-Minghe-Ectype-quest-147.s
	//		TaskID： 主线 潘多拉传送
	//
	//****************************************
	
	function OnTaskDone(){
	
		$ectype_id = GetEctypeID( -1 , 244 )
		FlyToMap( -1 , $ectype_id , 133 , 180 )
		AddStatus( -1 , 10703, 1 )
		
	}