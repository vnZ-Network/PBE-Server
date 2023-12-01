	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/24
	//		Author:???
	//		TaskName:ITEM-12398.s
	//		TaskID:????(?)
	//
	//****************************************
	
	function OnUseItem(){
		$Quest = 797
		//??ID
		
		$ItemID1 = 12398
		//??ID
		
		$ItemNum1 = 1
		//????
		
		$mapid01 = 4
		//??ID
		
		#mapname = ??????
		//????
		
		$mapx0 = 61
		//X????
		
		$mapx1 = 71
		//X????
		
		$mapy0 = 191
		//Y????
		
		$mapy1 = 201
		//Y????
		
		$ItemID2 = 12402
		//??ID
		
		$ItemNum2 = 1
		//????
		
		$task0 = IsTaskAccept( -1, $Quest )
		if $task0 != 0
			return
		endif
		
		$ItemInfo = GetPlayerInfo( -1, "item", $ItemID1 )
		if $ItemInfo < $ItemNum1
			BC( "screen", "player", -1, "You don't have the Seal Incantation(Green) to proceed!" )
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
		
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		AddPlayerInfo( -1, "item", $ItemID2, $ItemNum2 )
		
	}