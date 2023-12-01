	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479???????51837
	//		TaskID:DXLM3-Monster-Jinweitongjun-51837.s
	//
	//****************************************

		function OnDead(){

		//???? ??id 479, ???? 45 7  ???? 46 6 ???? 47 5
		//NPC???? 633, MST???? 51830 ,NPC???? 634 ,MST???? 51831 , NPC???? 635 ,MST???? 61832
		//???? 51836 ???? 51837	 ???? 51838	???? 51839


		$ectype_id = GetEctypeID(-1, 479)
		$npc_1 = 634
		$mst_1 = 51831
		$npc_2 = 635
		$mst_2 = 51832
		$mst_jun = 51837
		$count = GetEctypeVar(-1, 46)
		$n = 7
		
		$count = $count + 1
		SetEctypeVar(-1, 46, $count)
		
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
  		AddMonsterByFloat($mst_2, 1, $ectype_id, 263, 80, 0)
  		AddMonsterByFloat($mst_2, 1, $ectype_id, 254, 71, 0)
  		AddMonsterByFloat($mst_2, 1, $ectype_id, 272, 71, 0)

			BC("screen", "map", $ectype_id, "The Tao has been destroyed. The formation of the seal has changed.") 
  	endif	

}