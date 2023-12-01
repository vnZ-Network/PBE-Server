	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/19
	//		Author:???(??,??,??)
	//		TaskName:???3?479NPC???
	//		TaskID:DXLM3-NPC-MN-Tianji-637.s
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	function OnOption0(){
	
	//???? ??id 479  ?????? 43
	$ectype_id = GetEctypeID(-1, 479)
	$is_call = GetEctypeVar(-1, 43)
	
	if $is_call == 0
		BC("dialogbox","player",-1,"The Gate of Betrayal is locked by the Imperial Seal. Destroy the seal to open the door.")
		return
	endif
		
	BC("dialogbox","player",-1,"The Gate of Betrayal is locked by the Imperial Seal. Destroy the seal to open the door.")	
	
	
		
	
}