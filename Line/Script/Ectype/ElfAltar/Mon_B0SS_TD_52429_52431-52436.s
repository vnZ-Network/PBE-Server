	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/8
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：BOSSII型玩法TD怪
	//		TaskID：Mon_B0SS_TD_52429_52431-52436.s
	//
	//****************************************
	
	function OnDead(){

		//获取变量 副本id 541

		$ectype_id = GetEctypeID(-1, 541)

		$count = GetEctypeVar($ectype_id,90)
		$count = $count + 1
		SetEctypeVar($ectype_id,90,$count)
		
	}