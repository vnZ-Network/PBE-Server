 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/6
	//		Author:???
	//		TaskName:ITEM-jinjiachongbeike-12503.s
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
	
	
	//--------------------	?????-------------------------
		$player_mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )
	//------------????ID---------------
		if $player_mapid != 13
			BC( "screen", "player", -1, "Gold Beetle's Shell cannot be activated in this area!" )
			return
		endif
	//-------------------------------------------------------		
		if $player_x < 65
			BC( "screen", "player", -1, "Gold Beetle's Shell cannot be activated here!" )
			return
		endif
		if $player_x > 75
			BC( "screen", "player", -1, "Gold Beetle's Shell cannot be activated here!" )
			return
		endif
		if $player_y < 55
			BC( "screen", "player", -1, "Gold Beetle's Shell cannot be activated here!" )
			return
		endif
		if $player_y > 65
			BC( "screen", "player", -1, "Gold Beetle's Shell cannot be activated here!" )
			return
		endif
		//--------??item----------
		$info = SubPlayerInfo ( -1 , "item" , 12503 , 1 )
		if  $info != 0
			return
		endif
		//----???item------
		AddPlayerInfo ( -1 ,"item",12504, 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "You have acquired Activated Gold Beetle's Shell" )
		
	}