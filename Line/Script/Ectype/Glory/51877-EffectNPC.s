	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/11
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：特效召唤NPC
	//		TaskID：51877-EffectNPC.s
	//
	//****************************************
	
	function OnDead(){

		//获取变量 副本id 532
		$ectype_id = GetEctypeID(-1, 532)		
		$npc_left = 751
		$npc_right = 752
		$is = GetEctypeVar(-1, 90)
			
		
		if $is > 0
			return
		else					
			AddNPC($npc_left, $ectype_id)
			AddNPC($npc_right, $ectype_id)
			SetEctypeVar(-1, 90, 1)
		endif


		
		
		
	}