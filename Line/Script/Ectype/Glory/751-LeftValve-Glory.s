	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/11
	//		Author�����쳽����ϸ������������
	//		TaskName��������Ż���
	//		TaskID��751-Valve-Glory.s
	//
	//****************************************
	
	function OnRequest(){

	$is = GetEctypeVar(-1, 91)

	if $is > 0
		DisableNpcOption(0)
	endif

}
	
	function OnOption0(){
	
	$ectype_id = GetEctypeID(-1, 532)
	$npc_id = 751
	$effect = 51884
	$is = GetEctypeVar(-1, 91)

	if $is > 0 
		return
	else
		DeleteNPC($npc_id ,$ectype_id)
		AddMonsterByFloat( $effect, 1, $ectype_id, 155, 170, 1)
		SetEctypeVar(-1,91, 1)
	endif
	
	
	


		
	}