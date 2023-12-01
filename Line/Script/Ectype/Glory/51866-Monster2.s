	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/11
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：第二波怪贝塔
	//		TaskID：51866-Monster2.s
	//
	//****************************************
	
	function OnDead(){

		//获取变量 副本id 532，记录怪物死亡数 3
		//记录是否开门刷BOSS 4
		//boss 51862
		$ectype_id = GetEctypeID(-1, 532)
		
		$count = GetEctypeVar(-1, 3)
		$is_finish = GetEctypeVar(-1, 4)
		
		$boss = 51862
		
		$count = $count + 1
		SetEctypeVar(-1, 3, $count)
		
		if $is_finish > 0
			return
		else
			if $count >= 6
				OpenMask(1, $ectype_id)
				AddMonsterByFloat($boss, 1, $ectype_id, 165, 256, 1)
				SetEctypeVar(-1, 4, 1)
			endif
		endif	
	
		
		
		
	}