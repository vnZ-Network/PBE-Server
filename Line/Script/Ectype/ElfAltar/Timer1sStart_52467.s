	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/7
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：BOSS2清除周围冰柱子
	//		TaskID：Timer1sStart_52467.s
	//
	//****************************************
	
	function OnDead(){

		//获取变量 副本id 541

		$ectype_id = GetEctypeID(-1, 541)

		DeleteMonster(-1,52453)
		DeleteMonster(-1,52454)
//		BC("screen","map",$ectype_id,"111111111111111111111")
		
		
	}