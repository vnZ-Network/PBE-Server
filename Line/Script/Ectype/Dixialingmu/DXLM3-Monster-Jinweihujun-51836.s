	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479???????51836
	//		TaskID:DXLM3-Monster-Jinweihujun-51836.s
	//
	//****************************************

		function OnDead(){


		//???? ??id 479, ???? 45 7  ???? 46 6 ???? 47 5
		//NPC???? 633, MST???? 51830 ,NPC???? 634 ,MST???? 51831 , NPC???? 635 ,MST???? 61832
		//???? 51836 ???? 51837	 ???? 51838	???? 51839

		$ectype_id = GetEctypeID(-1, 479)
		$npc_1 = 633
		$mst_1 = 51830
		$npc_2 = 634
		$mst_2 = 51831
		$mst_jun = 51837
		$count = GetEctypeVar(-1, 45)
		$n = 8
		
		$count = $count + 1
		SetEctypeVar(-1, 45, $count)
		
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
  
  		AddMonsterByFloat($mst_2, 1, $ectype_id, 263, 62, 0)
  		AddMonsterByFloat($mst_2, 1, $ectype_id, 254, 69, 0)
  		AddMonsterByFloat($mst_2, 1, $ectype_id, 257, 78, 0)
  		AddMonsterByFloat($mst_2, 1, $ectype_id, 267, 78, 0)
  		AddMonsterByFloat($mst_2, 1, $ectype_id, 270, 69, 0)

			BC("screen", "map", $ectype_id, "The Tao has been destroyed. The formation of the seal has changed.") 
  	endif
	

}