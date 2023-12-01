	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479??NPC????
	//		TaskID:DXLM2-JGNPC-ZhenyanBlack-620.s
	//
	//****************************************

	function OnRequest(){
	//??????????,?????,???Option0
	$is_feng = GetEctypeVar(-1, 14)
	if $is != 1
		DisableNpcOption(0)
	endif
			
		
}	
	
	function OnOption0(){

	//????4????????,????,?????
	$is_zhen = GetEctypeVar(-1, 20)
	if $is_zhen < 4
		BC( "screen", "map", -1, "Five Color Aura has not been completely activated. You cannot yet rescue Ancestor's Soul.")
		return
	endif	

	//?????????,??????,?????????21
	$is_done = GetEctypeVar(-1, 21)
	if $is_done == 1
		BC( "screen", "map", -1, "You've got Ancestor's Soul. There is nothing left except the aura.")
		return
	endif	
	
	//??????
	$dif = GetEctypeVar(-1, 1)
	//????
	if $dif == 1
	//????,????21
		AddPlayerInfo(-1, "item", ?????????ID, 1 )
		BC( "screen", "map", -1, "Congratulations! You've gotten a Cloudsky's Ancestor's Soul. Please keep it carefully.")
		$n = GetEctypeVar(-1, 21)
		$n = $n + 1
		SetEctypeVar(-1, 21, $n )
	endif
		
	

	
}
