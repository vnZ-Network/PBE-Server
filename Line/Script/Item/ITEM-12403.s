	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/24
	//		Author:???
	//		TaskName:ITEM-12403.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		$Quest = 797
		//??ID
		
		$ItemID1 = 12403
		//??ID
		
		$ItemNum1 = 1
		//????
		
		$mapid01 = 1
		//??ID
		
		#mapname = ???
		//????
		
		$mapx0 = 222
		//X????
		
		$mapx1 = 232
		//X????
		
		$mapy0 = 236
		//Y????
		
		$mapy1 = 246
		//Y????
		
		$MonsterID2 = 20993
		//??ID
		
		$MonsterNum2 = 1
		//????
		
		$task0 = IsTaskAccept( -1, $Quest )
		if $task0 != 0
			return
		endif
		
		$ItemInfo = GetPlayerInfo( -1, "item", $ItemID1 )
		if $ItemInfo < $ItemNum1
			BC( "screen", "player", -1, "You don't have Universe Emblem to proceed!" )
			return
		endif
		
		$player0 = GetPlayerInfo( -1, "mapid" )
		$player1 = GetPlayerInfo( -1, "mapposx" )
		$player2 = GetPlayerInfo( -1, "mapposy" )
		
		if $player0 != $mapid01
			BC( "screen", "player", -1, "Available only in ",#mapname,"!" )
			return
		endif
		
		if $player1 < $mapx0
			BC( "screen", "player", -1, "You are not at the required location to proceed!" )
			return
		endif
		if $player1 > $mapx1
			BC( "screen", "player", -1, "You are not at the required location to proceed!" )
			return
		endif
		
		if $player2 < $mapy0
			BC( "screen", "player", -1, "You are not at the required location to proceed!" )
			return
		endif
		if $player2 > $mapy1
			BC( "screen", "player", -1, "You are not at the required location to proceed!" )
			return
		endif
		
		$Sub = SubPlayerInfo( -1, "item", $ItemID1, $ItemNum1 )
		if $Sub != 0
			return
		endif
		
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		AddMonster( $MonsterID2, $MonsterNum2, $mapid01, $playerX, $playerY, 0 )
		
	}