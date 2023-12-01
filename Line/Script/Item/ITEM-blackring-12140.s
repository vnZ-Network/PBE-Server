 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/2/27
	//		Author:???
	//		TaskName:ITEM-blackring-12140.s
	//		TaskID:97 ????
	//****************************************
	
	function OnUseItem(){
	
	//--------------------	????---------------------------

		$mapid = 155
		$x_1 = 90
		$y_1 = 73
		$x_2 = 90
		$y_2 = 92
		$blackring = 12140
		$monster_1 = 30167
		$monster_2 = 30168
		$mapposx1 = 35
		$mapposy1 = 27
		$mapposx2 = 35
		$mapposy2 = 39
		$mapr = 0
		$player_mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )

		
	//----------------------????-??????--------------------------
		$n = 4
		$incircle_a_x = $x_1 + $n
		$incircle_a_y = $y_1 + $n
		$incircle_b_x = $x_1 - $n
		$incircle_b_y = $y_1 - $n
		
	//-----------------------????-??????------------------------------
		$m = 10
		$outcircle_a_x = $x_1 + $m
		$outcircle_a_y = $y_1 + $m
		$outcircle_b_x = $x_1 - $m
		$outcircle_b_y = $y_1 - $m
		
	//----------------------????-??????--------------------------
		$n = 4
		$incircle_c_x = $x_2 + $n
		$incircle_c_y = $y_2 + $n	
		$incircle_d_x = $x_2 - $n
		$incircle_d_y = $y_2 - $n
		
	//-----------------------????-??????------------------------------
		$m = 10
		$outcircle_c_x = $x_2 + $m
		$outcircle_c_y = $y_2 + $m
		$outcircle_d_x = $x_2 - $m
		$outcircle_d_y = $y_2 - $m
		
	//-------------------????ID----------------------------		
		if $player_mapid != $mapid
			BC( "screen", "player", -1, "The power of the ring appears to be weak. The hidden evil force is not in this area!" )
			return
		endif
	//------------------y??85??? ???? ???-----------
		if $player_y < 85
			if $player_x < $outcircle_b_x
				return
			endif		
			if $player_x > $outcircle_a_x
				return
			endif
			if $player_y < $outcircle_b_y
				return
			endif		
			if $player_y > $outcircle_a_y
				return
			endif
			if $player_x < $incircle_b_x
				BC( "screen", "player", -1, "Wraith Sentinel Aricheno is hiding somewhere around. I can feel it!" )
				return
			endif
			if $player_x > $incircle_a_x
				BC( "screen", "player", -1, "Wraith Sentinel Aricheno is hiding somewhere around. I can feel it!" )
				return
			endif
			if $player_y < $incircle_b_y
				BC( "screen", "player", -1, "Wraith Sentinel Aricheno is hiding somewhere around. I can feel it!" )
				return
			endif
			if $player_y > $incircle_a_y
				BC( "screen", "player", -1, "Wraith Sentinel Aricheno is hiding somewhere around. I can feel it!" )
				return
			endif
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			AddMonster ( $monster_1 ,1,$mapid, $mapposx1 , $mapposy1 , $mapr)
			BC( "screen", "player", -1, "Wraith Sentinel Aricheno spotted!" )
		//------------------y??85??? ???? ???-----------
		else
			if $player_x < $outcircle_d_x
				return
			endif		
			if $player_x > $outcircle_c_x
				return
			endif
			if $player_y < $outcircle_d_y
				return
			endif		
			if $player_y > $outcircle_c_y
				return
			endif
			if $player_x < $incircle_d_x
				BC( "screen", "player", -1, "Wraith Sentinel Caborina is hiding somewhere around. I can feel it!" )
				return
			endif
			if $player_x > $incircle_c_x
				BC( "screen", "player", -1, "Wraith Sentinel Caborina is hiding somewhere around. I can feel it!" )
				return
			endif
			if $player_y < $incircle_d_y
				BC( "screen", "player", -1, "Wraith Sentinel Caborina is hiding somewhere around. I can feel it!" )
				return
			endif
			if $player_y > $incircle_c_y
				BC( "screen", "player", -1, "Wraith Sentinel Caborina is hiding somewhere around. I can feel it!" )
				return
			endif
			AddMonster ($monster_2,1,$mapid,$mapposx2,$mapposy2,$mapr)
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			BC( "screen", "player", -1, "Wraith Sentinel Caborina spotted!" )
			
		endif
	}