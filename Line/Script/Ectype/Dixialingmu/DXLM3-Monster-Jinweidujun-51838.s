	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479???????51838
	//		TaskID:DXLM3-Monster-Jinweidujun-51838.s
	//
	//****************************************

		function OnDead(){

		//???? ??id 479, ???? 45 7  ???? 46 6 ???? 47 5
		//NPC???? 633, MST???? 51830 ,NPC???? 634 ,MST???? 51831 , NPC???? 635 ,MST???? 61832
		//???? 51836 ???? 51837	 ???? 51838	???? 51839


		$ectype_id = GetEctypeID(-1, 479)
		$npc_1 = 635
		$mst_1 = 51832
		$npc_2 = 636
		$mst_2 = 51833
		$mst_jun = 51838
		$count = GetEctypeVar(-1, 47)
		$n = 6
		
		$count = $count + 1
		SetEctypeVar(-1, 47, $count)
		
		if $count < $n
			$a = $n - $count
			if $a > 0
				BC("screen", "map", $ectype_id, "You must kill " , $a , " more Royal Guards.")
				return
			endif
		else
  
  		DeleteNPC($npc_1 , $ectype_id)
  		AddNPC($npc_2 , $ectype_id)
  		DeleteMonster($ectype_id, $mst_1)
  
  		AddMonsterByFloat(51833, 1, $ectype_id, 263, 62, 0)
  		AddMonsterByFloat(51834, 1, $ectype_id, 256, 75, 0)
  		AddMonsterByFloat(51835, 1, $ectype_id, 270, 75, 0)
		
			BC("screen", "map", $ectype_id, "The Tao has been destroyed. The formation of the seal has changed.") 
  	endif		
	

}