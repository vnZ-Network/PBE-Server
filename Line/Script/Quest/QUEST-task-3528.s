	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/09/22
	//		Author：司文博
	//		TaskName：QUEST-task-3528.s
	//		TaskID：
	//
	//****************************************
	
	//3242记录第一次完成
	//3243记录星座卡的完成次数
	
	function OnTaskFailedDone(){
	
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$map = GetEctypeID( -1 , 25 )
		if $mapid == $map
			FlyToMap( -1 , 475 , 100 , 64 )
		endif
		
	}
	
	
	
	
	