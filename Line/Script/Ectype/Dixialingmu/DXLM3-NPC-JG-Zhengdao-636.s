	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479???????636
	//		TaskID:DXLM3-NPC-JG-Zhengdao-636.s
	//
	//****************************************

	function OnRequest(){

	//???? ??id 479 ???? 51 0?1?
	//NPC???? 633, MST???? 51830 ,NPC???? 634 ,MST???? 51831 , NPC???? 635 ,MST???? 61832 ,NPC???? 636
	//???? 51833,	???? 51834 , ???? 51835	
	//???? 51836 ???? 51837	 ???? 51838	???? 51839

	$ectype_id = GetEctypeID(-1, 479)	
	$is_open = GetEctypeVar(-1, 51)
	
	if $is_open != 0
		DisableNpcOption(0)
	endif


	
	}	
	
	function OnOption0(){

	//???? ??id 479 ???? 51 0?1? 
	//NPC???? 633, MST???? 51830 ,NPC???? 634 ,MST???? 51831 , NPC???? 635 ,MST???? 61832 ,NPC???? 636
	//???? 51833,	???? 51834 , ???? 51835	
	//???? 51836 ???? 51837	 ???? 51838	???? 51839
	//NPC??? 637 ??? 51805


	$ectype_id = GetEctypeID(-1, 479)	
	$is_open = GetEctypeVar(-1, 51)
	$npc_1 = 637
	$BOSS_1 = 51805
	
	OpenMask(17, $ectype_id)

	SetEctypeVar(-1, 51, 1)
	BC("screen", "map", $ectype_id, "The Mystery Seal was broken. The Main Tomb is now available.")
	PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
	
	DeleteNPC($npc_1, $ectype_id)
	AddMonsterByFloat( $BOSS_1, 1, $ectype_id, 232, 104, 0)
	
}