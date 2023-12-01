	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/20
	//		Author:???(??,??,??)
	//		TaskName:???479NPC????640
	//		TaskID:DXLM2-NPC-Door-Peizang-640.s
	//
	//****************************************
	
	function OnRequest(){
		
		
}

	function OnOption(){
	
	//???? ??ID 479
	$ectype_id = GetEctypeID(-1, 479)
	BC( "screen", "map", $ectype_id, "This door cannot be opened anymore.")		
	BC("dialogbox","player",-1,"This door cannot be opened anymore. Try other ones.")	

}
