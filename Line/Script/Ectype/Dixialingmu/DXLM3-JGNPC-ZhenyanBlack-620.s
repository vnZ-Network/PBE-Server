	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479??3??NPC????
	//		TaskID:DXLM3-JGNPC-ZhenyanBlack-620.s
	//
	//****************************************

	function OnRequest(){

	//???? ??id 479,????? 14--0?1?
	//??????????,?????,???Option0
	$ectype_id = GetEctypeID(-1, 479)
	$is_feng = GetEctypeVar(-1, 14)

	//??????????
	if $is_feng != 1
		DisableNpcOption(0)
		DisableNpcOption(1)
		BC( "screen", "map", $ectype_id, "Five Color Seal- Green has been locked by a sealing trigger. Open the Nexus trigger first.")	
	endif		

}	
	
	function OnOption0(){

	//???? ??id 479,??4????? ?16 ?17 ?18 ?19----4????? 3??12 ?12 ?12 ?12,2? 12 15 12 15,1? 10 14 10 14,????--??0
	//??id ???? 51781 ???? 51782
	$ectype_id = GetEctypeID(-1, 479)
	$red = GetEctypeVar(-1, 16)
	$yell = GetEctypeVar(-1, 17)
	$blue	= GetEctypeVar(-1, 18)
	$gree = GetEctypeVar(-1, 19)
	$mst_1 = 51781
	$mst_2 = 51782

	//????????0,????0,?????
	if $red == 0
		if $yell == 0
			if $blue == 0
				if $gree == 0
					BC( "screen", "player", -1, "Five Color Seal has no energy. There's no need to reset it.")
					return
				endif
			endif
		endif
	endif
	
	//????44052,????2?, ???? ????51781
	$revaluet = SubPlayerInfo(-1, "item", 44052 ,2)
	if $revaluet != 0
		BC( "screen", "player", -1, "There's not enough Blue Aurora, the Seal can not be reset.")
		return
	else
		BC( "screen", "map", $ectype_id, "Five Color Seal has been reset successfully.")		
	//?? ?????
	//----------------------------  ? 0  ----------------------------
		SetEctypeVar(-1, 16, 0)
	//----------------------------  ? 0  ----------------------------
		SetEctypeVar(-1, 17, 0)
	//----------------------------  ? 0  ----------------------------
		SetEctypeVar(-1, 18, 0)
	//----------------------------  ? 0  ----------------------------
		SetEctypeVar(-1, 19, 0)
		BC( "screen", "map", $ectype_id, "Red, Yellow, Blue, and Green's Seal energy has been reset to zero.")
		$n = RandomNumber(1, 4)
    	if $n == 1
    		AddMonsterByFloat(51781 , 1, $ectype_id, 264, 194, 0)
    		AddMonsterByFloat(51781 , 1, $ectype_id, 258, 211, 0)
    	endif
    	if $n == 2
    		AddMonsterByFloat(51781 , 1, $ectype_id, 270, 211, 0)
    		AddMonsterByFloat(51781 , 1, $ectype_id, 264, 230, 0)
    	endif
    	if $n == 3
    		AddMonsterByFloat(51781 , 1, $ectype_id, 264, 202, 0)
    		AddMonsterByFloat(51781 , 1, $ectype_id, 261, 212, 0)
    	endif
    	if $n == 4
    		AddMonsterByFloat(51781 , 1, $ectype_id, 264, 220, 0)
    		AddMonsterByFloat(51781 , 1, $ectype_id, 267, 212, 0)
    	endif 

		AddMonster($mst_1, 1, $ectype_id, 102, 82, 4)
		AddMonster($mst_2, 1, $ectype_id, 102, 82, 4)
	endif
		

	
}

	function OnOption1(){

	//???? ??id 479,??13--123?,???? 20--0?1?,???? 21--0?1? ??4????? ?16 ?17 ?18 ?19
	//4????? 3??12 ?12 ?12 ?12,2? ?12 ?15 ?12 ?015,1? ?10 ?14 ?10 ?14
	$ectype_id = GetEctypeID(-1, 479)
	$line = GetEctypeVar(-1, 13)
	$red = GetEctypeVar(-1, 16)
	$yell = GetEctypeVar(-1, 17)
	$blue	= GetEctypeVar(-1, 18)
	$gree = GetEctypeVar(-1, 19)
	$is_done1 = GetEctypeVar(-1, 20)
	$is_done2 = GetEctypeVar(-1, 21)
	
	//?????????????
	if $is_done1 != 0
		BC( "screen", "map", $ectype_id, "The seal for the three Ancestors' Souls has been broken, and it is empty.")
		if $is_done2 != 0
			BC( "screen", "player", -1, "Ask Cloudsky about Tiger Talisman.")
			return
		else
			BC( "screen", "player", -1, "The seal pillar around the Nexus can remove the seal of the Ancestors seven souls.")
			return
		endif
	else
		BC( "screen", "player", -1, "The Three Ancestors' Soul is trapped in the Five Color Seal and can only be freed by breaking the seal.")
		return
	endif
	
	//????????????? 4??????? ?12 ?12 ?12 ?12
	if $line == 3
  	if $red == 12
  		if $yell == 12
  			if $blue	== 12
  				if $gree == 12
  					SetEctypeVar(-1, 20, 1)
  					BC( "screen", "player", -1, "There's no good way to be devoted to your country.")
  					BC( "screen", "map", $ectype_id, "Three of the Ancestors of Cloudskys' souls have been rescued.")
						PlayEffect(0,"Common\shenshengyiji\tx_shenshengyiji_fire.ini")  
  				endif
  			endif
  		endif
  	endif
  endif 
  
	//????????????? 4??????? ?12 ?15 ?12 ?15
	if $line == 2
  	if $red == 12
  		if $yell == 15
  			if $blue	== 12
  				if $gree == 15
  					SetEctypeVar(-1, 20, 1)
  					BC( "screen", "player", -1, "There's no good way to be devoted to your country.")
  					BC( "screen", "map", $ectype_id, "Three of the Ancestors of Cloudskys' souls have been rescued.")
						PlayEffect(0,"Common\shenshengyiji\tx_shenshengyiji_fire.ini")  
  				endif
  			endif
  		endif
  	endif
  endif 
  
	//????????????? 4??????? ?10 ?14 ?10 ?14
	if $line == 1
  	if $red == 10
  		if $yell == 14
  			if $blue	== 10
  				if $gree == 14
  					SetEctypeVar(-1, 20, 1)
  					BC( "screen", "player", -1, "There's no good way to be devoted to your country.")
  					BC( "screen", "map", $ectype_id, "Three of the Ancestors of Cloudskys' souls have been rescued.")
						PlayEffect(0,"Common\shenshengyiji\tx_shenshengyiji_fire.ini")  
  				endif
  			endif
  		endif
  	endif
  endif 

					
}
