	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/01
	//		Author:???(??,??,??)
	//		TaskName:???479??NPC?????4
	//		TaskID:DXLM-JGNPC-Jian-601.s
	//
	//****************************************
	
	function OnRequest(){
		
}
	
	function OnOption0(){

	//??????
	$is_done = GetEctypeVar(-1, 7)
	if $is_done == 1
		BC( "screen", "map", -1, "You have already pledged to the 4th Shrine of Oath.")		
		return
	endif
	
	DeleteNPC(601, -1)
	AddNPC(610, -1)
	BC( "screen", "map", -1, "You have successfully pledged to the 4th Shrine of Oath.")
	
	//????????
	$n = GetEctypeVar(-1, 3)
	$n = $n + 1
	SetEctypeVar(-1, 3, $n )
	//?????????	
	SetEctypeVar(-1, 7, 1)
	
}	