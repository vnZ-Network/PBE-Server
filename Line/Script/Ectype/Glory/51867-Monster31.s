	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11
	//		Author:???(??,??,??)
	//		TaskName:???????(????TD)
	//		TaskID:51867-Monster31.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 532,??????? 8
		//?????? 7
		//monster 51868
		$ectype_id = GetEctypeID(-1, 532)		
		$count = GetEctypeVar(-1, 8)
		$is_open = GetEctypeVar(-1, 7)
		$effect = 51877
		$n = GetEctypeVar(-1, 94)
		$kill = GetEctypeVar(-1, 96)
		$monster = 51872		
		
//		$npc_left = 751
//		$npc_right = 752
		
		$count = $count + 1
		SetEctypeVar(-1, 8, $count)
		
		$n = $n + 1
		SetEctypeVar(-1, 94, $n)
		
		if $is_open >= 1
			return
		else
			if $count >= 18
				OpenMask(2, $ectype_id)
					AddMonsterByFloat($effect, 1, $ectype_id, 130, 227, 1)
					AddMonsterByFloat($effect, 1, $ectype_id, 202, 227, 1)
					
//				AddNPC($npc_left, $ectype_id)
//				AddNPC($npc_right, $ectype_id)
				SetEctypeVar(-1, 7, 1)
			endif
		endif	
	
//		if $kill >= 2
//			return
//		else
//			if $n == 8
//				AddMonsterByFloat($monster, 1, $ectype_id, 130, 227, 1)
//				BC("screen", "map", $ectype_id, "GUID:04372000000")		
//			endif
//		endif	
		
		
		
	}