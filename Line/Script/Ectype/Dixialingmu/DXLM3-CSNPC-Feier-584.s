	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479??3NPC??584
	//		TaskID:DXLM3-CSNPC-Feier-584.s
	//
	//****************************************

	function OnRequest(){
	
	//???? ??id 479, ????39--0?1?,????????0;????14--0?1?,????????1
	$ectype_id = GetEctypeID(-1, 479)
	$open = GetEctypeVar(-1, 39)
	$is_done = GetEctypeVar(-1, 14)
	
	if $open == 1
		DisableNpcOption(0)
		if $is_done != 1
			BC( "screen", "player", -1, "The door to the room has been open. How is the Cloudsky going?")
		else
			BC( "screen", "player", -1, "Thanks for removing the seal of Cloudsky. I hope you can get valuable treasures.")
		endif
	endif
	
	
	if $is_done != 1
		DisableNpcOption(1)
	endif

			
}	
	
	function OnOption0(){
	
	//???? ??ID 479,?????? 44058
	$ectype_id = GetEctypeID(-1, 479)
	$item = GetPlayerInfo(-1, "item", 44058)
	$sub = SubPlayerInfo(-1, "item", 44058, 1)
	
	if $item < 1
		BC( "screen", "player", -1, "You must bring the Oath Sword to enter the Scarlet Torment.")
		return
	endif
	
	if $sub != 0
		return
	endif
	
	//??????,??4??,??????, ??????,????NPC??690,????39--0?1?
	$revaluet = OpenMask( 4, $ectype_id)
	if $revaluet == 0
//		PlayEffect(-1, "")
		AddNPC(690, $ectype_id)
		AddMonsterByFloat(51828 , 1,$ectype_id, 123, 186, 0)
		AddMonsterByFloat(51828 , 1,$ectype_id, 125, 184, 0)
		AddMonsterByFloat(51828 , 1,$ectype_id, 125, 188, 0)
		BC( "screen", "map", $ectype_id, "The Torment Gate has been opened.")
		SetEctypeVar(-1, 39, 1)
	endif
	
}

	function OnOption1(){
	//???? ??ID 479,???? 14--0?1?
	$ectype_id = GetEctypeID(-1, 479)
	$is_done = GetEctypeVar(-1, 14)
	
	if $is_done != 1
		BC( "screen", "player", -1, "The teleportation power of the secret passage has been controlled by traps in the Nexus Gate.")		
		return
	else
		//????NPC??id??????
		$playerid = GetPlayerID()
		$mapid = GetPlayerInfo($playerid, "mapid")
		if $mapid >= 14851
			if $mapid <= 15050

				$result = FlyToMap(-1, $ectype_id, 119, 76)
	//		PlayEffect(-1, "")
				BC( "screen", "player", -1, "You have arrived in the Aqua room though the Secret passage.")	
	
				return
			endif
		endif
	endif
	
		//?????????????????NPC??,????????
		FlyToMap(-1,146,52,35)
		BC("screen","player",-1,"You have triggered the NPC of Pangaea Catacomb outside the Pangaea Catacomb instance. If you have any problems, please contact customer service."



}