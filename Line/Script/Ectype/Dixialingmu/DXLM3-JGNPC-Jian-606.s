	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/01
	//		Author:???(??,??,??)
	//		TaskName:???479??NPC?????9
	//		TaskID:DXLM-JGNPC-Jian-606.s
	//
	//****************************************
	
	function OnRequest(){

	$sum = GetEctypeVar(-1, 3)
	//?????7???
	if $sum < 7
		DisableNpcOption(1)
	endif
	
	//?????????
	if $sum > 9
		DisableNpcOption(1)
	endif
		
}
	
	function OnOption0(){

	//???? ??id 479,???? 3--0?9, ???? 13--1?2?3?, ??5?? 8--0?1?,??1?? 4--0?1?
	//??1-?4???5??125437689,2-?4???5??147839265,3-????198367425,?????13?
	$ectype_id = GetEctypeID(-1, 479)
	$sum = GetEctypeVar(-1, 3)
	$line = GetEctypeVar(-1, 13)
	$is_open9 = GetEctypeVar(-1, 12)
	$is_open1 = GetEctypeVar(-1, 4)

	//??1??????
	if $is_open1 == 0
		BC( "screen", "map", $ectype_id, "A sword is the most important item for an army. Please search the opening clue from the first tomb.")
		return
	endif

	//??????
	$is_open9 = GetEctypeVar(-1, 12)
	if $is_open9 == 1
		BC( "screen", "map", $ectype_id, "The shrine is glowing with approval.")		
		return
	endif
	
	//????????????,??????????????
	//1?--9??9?!!????,2?--9?6??????,3?--9?2????????

	if $line == 1
	//?????????
		if $sum != 8
			BC( "screen", "map", $ectype_id, "No response from the 9th Shrine of Oath. You pledged to the wrong shrine.")
			BC( "screen", "map", $ectype_id, "The aura resists. The sword that kills monsters has appeared.")
	//???????
			AddMonsterByFloat(51785, 1, $ectype_id, 309, 208, 0)
			return
		else
	//??NPC??
			DeleteNPC(606, $ectype_id)
			AddNPC(615, $ectype_id)
			BC( "screen", "map", $ectype_id, "You have successfully pledged to the 9th Shrine of Oath.")
			PlayEffect(0, "common\shengji\tx_shengji_fire.ini")
			BC( "screen", "map", $ectype_id, "Please pledge to the closest Shrine of Oath next.")
	//??12???
			OpenMask(12, $ectype_id)
	//?????????	
			SetEctypeVar(-1, 10, 1)
	//????????
			$sum = GetEctypeVar(-1, 3)
			$sum = $n + 1
			SetEctypeVar(-1, 3, $sum )
	//???????,??????-????,????,????,??????
	//		OpenMask(, $ectype_id)
	//		AddMonsterByFloat( , 1, $ectype_id, , ,0)
	//		AddMonsterByFloat( , 1, $ectype_id, , ,0)
		endif
	endif		

	if $line == 2
	//?????????
		if $sum != 5
			BC( "screen", "map", $ectype_id, "No response from the 9th Shrine of Oath. You pledged to the wrong shrine.")
			BC( "screen", "map", $ectype_id, "The aura resists. The sword that kills monsters has appeared.")
	//???????
			AddMonsterByFloat(51785, 1, $ectype_id, 309, 208, 0)
			return
		else
	//??NPC??
			DeleteNPC(606, $ectype_id)
			AddNPC(615, $ectype_id)
			BC( "screen", "map", $ectype_id, "You have successfully pledged to the 9th Shrine of Oath.")
			PlayEffect(-1,"Common\shenshengyiji\tx_shenshengyiji_fire.ini")
			BC( "screen", "map", $ectype_id, "Please pledge to the closest Shrine of Oath next.")
	//?????????	
			SetEctypeVar(-1, 10, 1)
	//????????
			$sum = GetEctypeVar(-1, 3)
			$sum = $n + 1
			SetEctypeVar(-1, 3, $sum )	
		endif
	endif
	
	if $line == 3
	//?????????
		if $sum != 1
			BC( "screen", "map", $ectype_id, "No response from the 9th Shrine of Oath. You pledged to the wrong shrine.")
			BC( "screen", "map", $ectype_id, "The aura resists. The sword that kills monsters has appeared.")
	//???????
			AddMonsterByFloat(51785, 1, $ectype_id, 309, 208, 0)
			return
		else
	//??NPC??
			DeleteNPC(606, $ectype_id)
			AddNPC(615, $ectype_id)
			BC( "screen", "map", $ectype_id, "You have successfully pledged to the 9th Shrine of Oath.")
			PlayEffect(-1,"Common\shenshengyiji\tx_shenshengyiji_fire.ini")
			BC( "screen", "map", $ectype_id, "Please pledge to the closest Shrine of Oath next.")
	//?????????		
			SetEctypeVar(-1, 10, 1)
	//????????
			$sum = GetEctypeVar(-1, 3)
			$sum = $n + 1
			SetEctypeVar(-1, 3, $sum )		
		endif
	endif	
			
}
	
	
	function OnOption1(){
	
	//???? ??id 479,???? 3--0?9, ??????
	$ectype_id = GetEctypeID(-1, 479)
	$sum = GetEctypeVar(-1, 3)
	$null = GetPlayerInfo(-1, "item", 0)
	
	if $null < 1
		BC( "screen", "player", -1, "There is no space in your bag.")
		return
	endif
	
	if $sum != 9
		BC( "screen", "player", -1, "You have not fully pledged your oath yet!")
		return
	else
	//????,???
	$revaluet = AddPlayerInfo(-1, "item", 44058, 1)
		if $revaluet == 0
			SetEctypeVar(-1, 3, 10)
			BC( "screen", "map", $ectype_id, "Successfully received the Oath Sword.")
		endif
	endif
	

}