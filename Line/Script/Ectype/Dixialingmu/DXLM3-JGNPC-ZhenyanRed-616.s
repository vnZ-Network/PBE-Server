	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479??3??NPC????
	//		TaskID:DXLM3-JGNPC-ZhenyanRed-616.s
	//
	//****************************************

	function OnRequest(){

	//???? ??id 479,?????? 14--0?1?,????? 16,??13--123? 1?RB10YG14,2?RB11YG15,3??12
	//??????????,?????,???Option0
	$ectype_id = GetEctypeID(-1, 479)
	$is_feng = GetEctypeVar(-1, 14)
	$red = GetEctypeVar(-1, 16)
	$yell = GetEctypeVar(-1, 17)
	$blue	= GetEctypeVar(-1, 18)
	$gree = GetEctypeVar(-1, 19)
	$line = GetEctypeVar(-1, 13)

	//??????????
	if $is_feng != 1
		DisableNpcOption(0)
		BC( "screen", "map", $ectype_id, "Five Color Seal- Green has been locked by a sealing trigger. Open the Nexus trigger first.")	
	endif

	//????????	
	if $line == 1
  	if $red != 10
  		BC( "screen", "player", -1, "Energy Balance Red Seal --10 Yellow Seal--14 Blue Seal--10 Green Seal--14")
  		BC( "screen", "player", -1, "Current energy Red Seal--" ,$red, " Yellow Seal--" ,$yell, " Blue Seal--" ,$blue, " Green Seal--" ,$gree, "")
  	else
  		BC( "screen", "map", $ectype_id, "The Red Seal's energy is just right. If you activate the Red-Yellow-Green Seal, the balance of energy will be broken.")
  	endif
  endif
  
	if $line == 2
  	if $red != 12
  		BC( "screen", "player", -1, "Energy balance point Red Seal--12 Yellow Seal--15 Blue Seal--12 Green Seal--15")
  		BC( "screen", "player", -1, "Current energy Red Seal--" ,$red, " Yellow Seal--" ,$yell, " Blue Seal--" ,$blue, " Green Seal--" ,$gree, "")
  	else
  		BC( "screen", "map", $ectype_id, "The Red Seal's energy is just right. If you activate the Red-Yellow-Green Seal, the balance of energy will be broken.")
  	endif
  endif
  
  if $line == 3
  	if $red != 12
  		BC( "screen", "player", -1, "Energy balance point Red Seal--12 Yellow Seal--12 Blue Seal--12 Green Seal--12")
  		BC( "screen", "player", -1, "Current energy Red Seal--" ,$red, " Yellow Seal--" ,$yell, " Blue Seal--" ,$blue, " Green Seal--" ,$gree, "")
  	else
  		BC( "screen", "map", $ectype_id, "The Red Seal's energy is just right. If you activate the Red-Yellow-Green Seal, the balance of energy will be broken.")
  	endif
  endif

}
		
	function OnOption0(){

	//???? ??id 479,??13--123?,??4????? ?16 ?17 ?18 ?19----????? ?+2?+2?+0?+2
	//??id ???? 51781 ???? 51782
	$ectype_id = GetEctypeID(-1, 479)
	$line = GetEctypeVar(-1, 13)
	$red = GetEctypeVar(-1, 16)
	$yell = GetEctypeVar(-1, 17)
	$blue	= GetEctypeVar(-1, 18)
	$gree = GetEctypeVar(-1, 19)
	$mst_1 = 51781
	$mst_2 = 51782

	//--------------------------------------??1 --------------------------------------
	//????????????--10 ??--14 ??--10 ??--14,??????
	if $line == 1
  //----------------------------  ? 10  ----------------------------
		if $red > 10
			BC( "screen", "map", $ectype_id, "The Red Seal's energy is too strong. The Seal needs to be reset though the black Seal's end.")
			return
		endif
	//??????12,???????
		if $red == 10
			BC( "screen", "map", $ectype_id, "The Red Seal has been opened. If another colored Seal was opened, you can go to the black Seal to remove the seal of Three Ancestors' soul.")
			return
		endif
	//----------------------------  ? 14  ----------------------------
		if $yell > 14
			BC( "screen", "map", $ectype_id, "The Yellow Seal's energy is too strong. The Seal needs to be reset though the black Seal's end.")
			return
		endif
	//----------------------------  ? 10  ----------------------------
		if $blue > 10
			BC( "screen", "map", $ectype_id, "The Blue Seal's energy is too strong. The Seal needs to be reset though the black Seal's end.")
			return
		endif
	//----------------------------  ? 14  ----------------------------
		if $gree > 14
			BC( "screen", "map", $ectype_id, "The Green Seal's energy is too strong. The Seal needs to be reset though the black Seal's end.")
			return
		endif
	endif

	//--------------------------------------??2 --------------------------------------
	//????????????--12 ??--15 ??--12 ??--15,??????
	if $line == 2
  //----------------------------  ? 12  ----------------------------
		if $red > 12
			BC( "screen", "map", $ectype_id, "The Red Seal's energy is too strong. The Seal needs to be reset though the black Seal's end.")
			return
		endif
	//??????12,???????
		if $red == 12
			BC( "screen", "map", $ectype_id, "The Red Seal has been opened. If another colored Seal was opened, you can go to the black Seal to remove the seal of Three Ancestors' soul.")
			return
		endif
	//----------------------------  ? 15  ----------------------------
		if $yell > 15
			BC( "screen", "map", $ectype_id, "The Yellow Seal's energy is too strong. The Seal needs to be reset though the black Seal's end.")
			return
		endif
	//----------------------------  ? 12  ----------------------------
		if $blue > 12
			BC( "screen", "map", $ectype_id, "The Blue Seal's energy is too strong. The Seal needs to be reset though the black Seal's end.")
			return
		endif
	//----------------------------  ? 15  ----------------------------
		if $gree > 15
			BC( "screen", "map", $ectype_id, "The Green Seal's energy is too strong. The Seal needs to be reset though the black Seal's end.")
			return
		endif
	endif
	
	//--------------------------------------??3 --------------------------------------
	//????????????--12 ??--12 ??--12 ??--12,??????
	if $line == 3
  //----------------------------  ? 12  ----------------------------
		if $red > 12
			BC( "screen", "map", $ectype_id, "The Red Seal's energy is too strong. The Seal needs to be reset though the black Seal's end.")
			return
		endif
	//??????12,???????
		if $red == 12
			BC( "screen", "map", $ectype_id, "The Red Seal has been opened. If another colored Seal was opened, you can go to the black Seal to remove the seal of Three Ancestors' soul.")
			return
		endif
	//----------------------------  ? 12  ----------------------------
		if $yell > 12
			BC( "screen", "map", $ectype_id, "The Yellow Seal's energy is too strong. The Seal needs to be reset though the black Seal's end.")
			return
		endif
	//----------------------------  ? 12  ----------------------------
		if $blue > 12
			BC( "screen", "map", $ectype_id, "The Blue Seal's energy is too strong. The Seal needs to be reset though the black Seal's end.")
			return
		endif
	//----------------------------  ? 12  ----------------------------
		if $gree > 12
			BC( "screen", "map", $ectype_id, "The Green Seal's energy is too strong. The Seal needs to be reset though the black Seal's end.")
			return
		endif
	endif


	//????44052	
	$revaluet = SubPlayerInfo(-1, "item", 44052 ,1)
	if $revaluet != 0
		BC( "screen", "player", -1, "The Five Color Seal can be activated by the Blue Aurora.")
		BC( "chat", "player", -1, "The Five Color Seal can be activated by the Blue Aurora.")
		return
	else
		BC( "screen", "map", $ectype_id, "The Red Seal has been activated.")
	
	//?????
	//----------------------------  ? +2  ----------------------------
		$red = $red + 2
		SetEctypeVar(-1, 16, $red)
	//----------------------------  ? +2  ----------------------------
		$yell = $yell + 2
		SetEctypeVar(-1, 17, $yell)
	//----------------------------  ? +0  ----------------------------

	//----------------------------  ? +2  ----------------------------
		$gree = $gree + 2
		SetEctypeVar(-1, 19, $gree)
		BC( "screen", "map", $ectype_id, "Red, Yellow, and Green Seal- adds 2 energy. Blue Seal- adds 0 energy.")

		AddMonster($mst_1, 1, $ectype_id, 102, 82, 4)
		AddMonster($mst_2, 1, $ectype_id, 102, 82, 4)

	endif
	

	
	
		
	
	
}