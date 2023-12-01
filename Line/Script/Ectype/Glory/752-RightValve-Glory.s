	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/11
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：光辉神殿开门机关
	//		TaskID：752-RightValve-Glory.s
	//
	//****************************************
	
	function OnRequest(){
	
	$is = GetEctypeVar(-1, 92)

	if $is > 0
		DisableNpcOption(0)
	endif

}
	
	function OnOption0(){
	
	$ectype_id = GetEctypeID(-1, 532)
	$npc_id = 752
	$effect = 51885
	$is = GetEctypeVar(-1, 92)

	if $is > 0 
		return
	else
		DeleteNPC($npc_id ,$ectype_id)
		AddMonsterByFloat( $effect, 1, $ectype_id, 175, 170, 1)
		SetEctypeVar(-1,92, 1)
	endif
	


		
	}