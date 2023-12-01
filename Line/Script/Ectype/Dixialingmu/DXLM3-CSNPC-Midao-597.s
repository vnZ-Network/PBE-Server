	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479??NPC?????
	//		TaskID:DXLM-CSNPC-Midao-597.s
	//
	//****************************************

	function OnRequest(){
		
}	
	
	function OnOption0(){

	//???? ??id 479	????14--0?1?
	$ectype_id = GetEctypeID(-1, 479)
	$is = GetEctypeVar(-1, 14)

	//?????????,??????;???????,????	
	if $is != 1
		BC( "screen", "player", -1, "The portal is currently inactive. ")	
		return
	else
		//????NPC??id??????
		$playerid = GetPlayerID()
		$mapid = GetPlayerInfo($playerid, "mapid")
		if $mapid >= 14851
			if $mapid <= 15050

				$result = FlyToMap(-1, $ectype_id, 55, 69 )
		//		PlayEffect(-1, "")
				BC( "screen", "player", -1, "You have arrived at the Scarlet Torment.")
				
				return
			endif
		endif				
	endif
	
		//?????????????????NPC??,????????
		FlyToMap(-1,146,52,35)
		BC("screen","player",-1,"You have triggered the NPC of Pangaea Catacomb outside the Pangaea Catacomb instance. If you have any problems, please contact customer service."
	
	
}