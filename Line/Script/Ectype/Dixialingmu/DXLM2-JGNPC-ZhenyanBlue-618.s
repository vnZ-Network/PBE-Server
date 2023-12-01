	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479??NPC????
	//		TaskID:DXLM2-JGNPC-ZhenyanBlue-618.s
	//
	//****************************************

	function OnRequest(){

	//??????????,?????,???Option0
	$is_feng = GetEctypeVar(-1, 14)
	if $is_feng != 1
		DisableNpcOption(0)
	endif

	//??????
	$dif = GetEctypeVar(-1, 1)
	//????,2?????
	if $dif == 1
	//?????????,??????,???Option0
		$is_zhen = GetPlayerVar(-1, 18)
		if $is_zhen >= 2
			DisableNpcOption(0)
		endif
	endif			

	}	
	
	function OnOption0(){
		
	$revaluet = SubPlayerInfo(-1, "item", ???????ID ,1)
	if $revaluet != 1
		BC( "screen", "map", -1, "You don't have an Ancestor's Soul. Cannot activate the aura.")
		return
	endif 
	
	$count = GetEctypeVar(-1, 18)	
	while $count < 1
		$count = $count + 1
		SetEctypeVar(-1, 18, $count)
		$a = 2 - $count
		BC( "screen", "map", -1, "Five Color Aura Red End has been activated 1 time, it needs to be activated " , $a , " more times to be completely activated.")
	endwhile

	//?????????,?????????20?,??????!?????????if $count = 2
	$n = GetEctypeVar(-1, 20)
	$n = $n + 1
	SetEctypeVar(-1, 20, $n )
	BC( "screen", "map", -1, "Five Color Aura Red End has been activated.")		
		
	
	
}