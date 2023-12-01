	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/01
	//		Author:???(??,??,??)
	//		TaskName:???479??NPC?????1
	//		TaskID:DXLM-JGNPC-Jian-598.s
	//
	//****************************************
	
	function OnRequest(){
		
}
	
	function OnOption0(){

	//??????
	$is_done = GetEctypeVar(-1, 4)
	if $is_done == 1
		BC( "screen", "map", -1, "You have already pledged to the 1st Shrine of Oath.")		
		return
	endif
	
	DeleteNPC(598, -1)
	AddNPC(607, -1)
	BC( "screen", "map", -1, "You have successfully pledged to the 1st Shrine of Oath.")
	
	//??????
	$n = GetEctypeVar(-1, 3)
	$n = $n + 1
	SetEctypeVar(-1, 3, $n )	
	//?????????
	SetEctypeVar(-1, 4, 1)
	
}
	