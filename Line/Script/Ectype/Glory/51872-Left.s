	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/11
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：西斯堪的纳守护柱
	//		TaskID：51872-Left.s
	//
	//****************************************
	
	function OnDead(){

		//获取变量 副本id 532，记录怪物死亡数 96
		//记录是否开门 7
		//monster 51867
		
		$ectype_id = GetEctypeID(-1, 532)
		$count = GetEctypeVar(-1, 96)
		$is = GetEctypeVar(-1, 7)
		$monster = 51857
		
		$count = $count + 1
		SetEctypeVar(-1, 96, $count)

		if $is > 0
			return
		endif
		
		if $count > 1
			return
		else
			AddMonsterByFloat($monster, 1, $ectype_id, 129,216, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 137,220, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 122,220, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 136,220, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 123,229, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 129,233, 1)
		endif
		
		
		
	}