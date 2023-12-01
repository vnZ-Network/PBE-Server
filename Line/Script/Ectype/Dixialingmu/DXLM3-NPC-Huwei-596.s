	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/01
	//		Author:???(??,??,??)
	//		TaskName:???479??3NPC????
	//		TaskID:DXLM3-NPC-Huwei-596.s
	//
	//****************************************
	
	function OnRequest(){
		
}

	function OnOption0(){
	//???? ??id 479,?? ????44049 ?? ???? 51776 ????51814 ????51813 NPC???? 646
	$ectype_id = GetEctypeID(-1, 479)
	$item_id = 44049
	$guard_id = 51776
	$npc_id = 646
	$mst_fire = 51814
	$mst_ice = 51813
	$is_get = GetPlayerInfo(-1, "item", $item_id)
	
	if $is_get < 1
		BC( "screen", "player", -1, "You are not permitted to enter the Imperial Gate without the Tiger Talisman.")
		return
	else
		$revaluet = OpenMask(19, $ectype_id)
		BC( "screen", "map", $ectype_id, "The Imperial Gate has opened!")
		BC( "screen", "player", -1, "Tiger Talisman?! General, please come in.")
	//?????
	//????6?
		AddMonsterByFloat($guard_id, 1, $ectype_id, 272, 126, 0, 0, 90)
		AddMonsterByFloat($guard_id, 1, $ectype_id, 272, 128, 0, 0, 90)
		AddMonsterByFloat($guard_id, 1, $ectype_id, 272, 130, 0, 0, 90)
		AddMonsterByFloat($guard_id, 1, $ectype_id, 275, 126, 0, 0, 90)
		AddMonsterByFloat($guard_id, 1, $ectype_id, 275, 128, 0, 0, 90)
		AddMonsterByFloat($guard_id, 1, $ectype_id, 275, 130, 0, 0, 90)
		AddMonsterByFloat($guard_id, 1, $ectype_id, 298, 117, 0, 0, 90)
		AddMonsterByFloat($guard_id, 1, $ectype_id, 304, 117, 0, 0, 90)
	//??NPC???2?
		AddMonsterByFloat($guard_id, 1, $ectype_id, 298, 117, 0, 0, 90)
		AddMonsterByFloat($guard_id, 1, $ectype_id, 304, 117, 0, 0, 90)	
		
		
	//?????
		AddMonsterByFloat($mst_fire, 1, $ectype_id, 270, 110, 0)	
		AddMonsterByFloat($mst_fire, 1, $ectype_id, 270, 99, 0)
		AddMonsterByFloat($mst_fire, 1, $ectype_id, 270, 88, 0)
		AddMonsterByFloat($mst_fire, 1, $ectype_id, 275, 104, 0)
		AddMonsterByFloat($mst_fire, 1, $ectype_id, 275, 94, 0)
		AddMonsterByFloat($mst_fire, 1, $ectype_id, 275, 83, 0)
	//?????	
		AddMonsterByFloat($mst_fire, 1, $ectype_id, 275, 110, 0)	
		AddMonsterByFloat($mst_fire, 1, $ectype_id, 275, 99, 0)
		AddMonsterByFloat($mst_fire, 1, $ectype_id, 275, 88, 0)
		AddMonsterByFloat($mst_fire, 1, $ectype_id, 270, 104, 0)
		AddMonsterByFloat($mst_fire, 1, $ectype_id, 270, 94, 0)
		AddMonsterByFloat($mst_fire, 1, $ectype_id, 270, 83, 0)

	//?NPC	
		AddNPC($npc_id, $ectype_id)
	endif
	
	
}