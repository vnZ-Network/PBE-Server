	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/01
	//		Author:???(??,??,??)
	//		TaskName:???479??NPC?????3
	//		TaskID:DXLM-JGNPC-Jian-600.s
	//
	//****************************************

	function OnRequest(){

	//???? ??id 479,??3--0~10 ??????6--0?1?,??13--1?2?3?
	$ectype_id = GetEctypeID(-1, 479)
	$sum = GetEctypeVar(-1, 3)
	$is = GetEctypeVar(-1, 6)
	$line = GetEctypeVar(-1, 13)
	$mst_1 = 51783
	$mst_2 = 51783

	//?????7???
	if $sum < 7
		DisableNpcOption(1)
	endif
	
	//?????????
	if $sum > 9
		DisableNpcOption(1)
	endif
	
	//????????,????NPC,????????
	//1?--3??5??????,2?--3?5??????,3?--2??4??????	
	if $sum < 9
  	if $is == 3
  		if $line == 1
  			BC( "screen", "player", -1, "Please pledge to the furthest Shrine of Oath next.")
  			return
  		endif
  		if $line == 2
  			BC( "screen", "player", -1, "Please pledge to the furthest Shrine of Oath next.")
  			return
  		endif
  		if $line == 3
  			BC( "screen", "player", -1, "Please pledge to the closest Shrine of Oath next.")
  			return
  		endif
  	endif
  endif

		
}
	
	function OnOption0(){

	//???? ??id 479,???? 3--0?9, ???? 13--1?2?3?, ??3?? 6--0?1?,??1?? 4--0?1?
	//??1-?4???5??125437689,2-?4???5??147839265,3-????198367425,?????13?
	//???? 51783 ???? 51842
	$ectype_id = GetEctypeID(-1, 479)
	$sum = GetEctypeVar(-1, 3)
	$line = GetEctypeVar(-1, 13)
	$is_open3 = GetEctypeVar(-1, 6)
	$is_open1 = GetEctypeVar(-1, 4)
	$mst_1 = 51842
	$mst_2 = 51783

	//??1??????
	if $is_open1 == 0
		BC( "screen", "map", $ectype_id, "Please find the 1st Shrine of Oath to begin.")
		return
	endif

	//??????
	$is_open3 = GetEctypeVar(-1, 6)
	if $is_open3 == 3
		BC( "screen", "player", -1, "The shrine is glowing with approval.")		
		return
	endif
	
	//????????????,??????????????
	//1?--3??5??????,2?--3?5??????,3?--2??4??????

	if $line == 1
	//?????????
		if $sum != 4
			BC( "screen", "player", -1, "No response from the 3rd Shrine of Oath. You pledged to the wrong shrine.")
			BC( "screen", "map", $ectype_id, "You pledged to the wrong shrine and offended the Ancestral Spirit!")
	//???????
			AddMonsterByFloat(51783, 1, $ectype_id, 309,181, 0)
			return
		else
	//??NPC??
			DeleteNPC(600, $ectype_id)
			AddNPC(609, $ectype_id)
			BC( "screen", "map", $ectype_id, "You have successfully pledged to the 3rd Shrine of Oath.")
			AddMonsterByFloat($mst_1, 1, $ectype_id, 309, 208, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 299, 208, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 289, 208, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 309, 195, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 299, 195, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 289, 195, 0)

    	AddMonsterByFloat($mst_1, 1, $ectype_id, 299, 181, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 289, 181, 0)
			PlayEffect(-1,"Common\shenshengyiji\tx_shenshengyiji_fire.ini")
			BC( "screen", "map", $ectype_id, "Please pledge to the furthest Shrine of Oath next.")
	//?????????	
			SetEctypeVar(-1, 6, 3)
	//????????
			$sum = GetEctypeVar(-1, 3)
			$sum = $sum + 1
			SetEctypeVar(-1, 3, $sum )
			BC( "screen", "map", $ectype_id, "Number of shrines pledged to: " , $sum , " ")
			$check = GetEctypeVar(-1, 6)
//			BC( "screen", "map", $ectype_id, "GUID:04065000010" , $check , " ")		
		endif
	endif		

	if $line == 2
	//?????????
		if $sum != 4
			BC( "screen", "player", -1, "No response from the 3rd Shrine of Oath. You pledged to the wrong shrine.")
			BC( "screen", "map", $ectype_id, "You pledged to the wrong shrine and offended the Ancestral Spirit!")
	//???????
			AddMonsterByFloat(51783, 1, $ectype_id, 309,181, 0)
			return
		else
	//??NPC??
			DeleteNPC(600, $ectype_id)
			AddNPC(609, $ectype_id)
			BC( "screen", "map", $ectype_id, "You have successfully pledged to the 3rd Shrine of Oath.")
			AddMonsterByFloat($mst_1, 1, $ectype_id, 309, 208, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 299, 208, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 289, 208, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 309, 195, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 299, 195, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 289, 195, 0)

    	AddMonsterByFloat($mst_1, 1, $ectype_id, 299, 181, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 289, 181, 0)
			PlayEffect(-1,"Common\shenshengyiji\tx_shenshengyiji_fire.ini")
			BC( "screen", "map", $ectype_id, "Please pledge to the furthest Shrine of Oath next.")
	//?????????	
			SetEctypeVar(-1, 6, 3)
	//????????
			$sum = GetEctypeVar(-1, 3)
			$sum = $sum + 1
			SetEctypeVar(-1, 3, $sum )
			BC( "screen", "map", $ectype_id, "Number of shrines pledged to: " , $sum , " ")	
			$check = GetEctypeVar(-1, 6)
//			BC( "screen", "map", $ectype_id, "GUID:04065000016" , $check , " ")		
		endif
	endif
	
	if $line == 3
	//?????????
		if $sum != 3
			BC( "screen", "player", -1, "No response from the 3rd Shrine of Oath. You pledged to the wrong shrine.")
			BC( "screen", "map", $ectype_id, "You pledged to the wrong shrine and offended the Ancestral Spirit!")
	//???????
			AddMonsterByFloat(51783, 1, $ectype_id, 309,181, 0)
			return
		else
	//??NPC??
			DeleteNPC(600, $ectype_id)
			AddNPC(609, $ectype_id)
			BC( "screen", "map", $ectype_id, "You have successfully pledged to the 3rd Shrine of Oath.")
			AddMonsterByFloat($mst_1, 1, $ectype_id, 309, 208, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 299, 208, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 289, 208, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 309, 195, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 299, 195, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 289, 195, 0)

    	AddMonsterByFloat($mst_1, 1, $ectype_id, 299, 181, 0)
    	AddMonsterByFloat($mst_1, 1, $ectype_id, 289, 181, 0)
			PlayEffect(-1,"Common\shenshengyiji\tx_shenshengyiji_fire.ini")
			BC( "screen", "map", $ectype_id, "Please pledge to the closest Shrine of Oath next.")
	//?????????	
			SetEctypeVar(-1, 6, 3)
	//????????
			$sum = GetEctypeVar(-1, 3)
			$sum = $sum + 1
			SetEctypeVar(-1, 3, $sum )
			BC( "screen", "map", $ectype_id, "Number of shrines pledged to: " , $sum , " ")
			$check = GetEctypeVar(-1, 6)
//			BC( "screen", "map", $ectype_id, "GUID:04065000022" , $check , " ")	
		endif
	endif	

}
	
	
	function OnOption1(){
	
	//???? ??id 479,???? 3--0?9, ??????
	$ectype_id = GetEctypeID(-1, 479)
	$sum = GetEctypeVar(-1, 3)
	$null = GetPlayerInfo(-1, "nullitem", 0)
	
	if $null < 1
		BC( "screen", "player", -1, "There is no space for your bag.")
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
			BC( "screen", "map", $ectype_id, "Oath Sword obtained successfully.")
		endif
	endif
	

}

	function OnOption2(){
	
	BC("dialogbox","player",-1,"Start from the 1st Shrine of Oath. The next correct shrine will be either the closest or furthest shrine from the one you just successfully pledged to. This does not include the shrines you have already pledged to.")	
		
		
		
}