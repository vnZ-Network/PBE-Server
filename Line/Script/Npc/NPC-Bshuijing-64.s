	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/31
	//		Author:???
	//		TaskName:NPC-Bshuijing-64.s
	//		TaskID:64 ????
	//
	//****************************************
	
	function OnRequest(){
		$ItemID1 = 12396
		$TaskID1 = 797
	
		$task = IsTaskAccept( -1, $TaskID1 )
		if $task != 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		$item = GetPlayerInfo( -1, "item", $ItemID1 )
		if $item > 0
			DisableNpcOption(0)
		endif
	
	}
	
	
	function OnOption0(){
		$ItemID1 = 12396
		$ItemNum1 = 1
		$ItemID2 = 64003
		$ItemNum2 = 42
		$TaskNum1 = 797
	
		$task = IsTaskAccept( -1, $TaskNum1 )
		if $task != 0
			BC( "dialogbox", "player", -1, "You haven't acquired the quest." )
			return
		endif
		
		$item = GetPlayerInfo( -1, "item", $ItemID1 )
		if $item > 0
			BC( "dialogbox", "player", -1, "You already have Incantation of Seal(Blue)." )
			return
		endif
		
		$NullItem1 = GetPlayerInfo( -1, "nullitem", 0 )
		if $NullItem1 < 1
			BC( "dialogbox", "player", -1, "Your bag is full." )
			return
		endif		
		
		$Item0 = GetPlayerInfo( -1, "item", $ItemID2 )
		if $Item0 >= $ItemNum2
			$Sub0 = SubPlayerInfo( -1, "item", $ItemID2, $ItemNum2 )
			if $Sub0 != 0
				return
			endif
			AddPlayerInfo( -1, "item", $ItemID1, $ItemNum1 )	
		else
			BC( "dialogbox", "player", -1, "You need {#ffff002a=",$ItemNum2," Raw Jade#} to duplicate the incantation of seal from the Blue Crystal. {#ffff002a=(Use Incantation of Seal to locate the Blue Crystaloid within the Blue Crystal. Monsters below LV45 drop Raw Jade.)#}" )
			return
		endif
		
	}
	
	function OnOption1(){
		$ItemID3 = 12400
		$ItemNum3 = 1
		$TaskNum1 = 797
		$var1 = 17
		
		$task = IsTaskAccept( -1, $TaskNum1 )
		if $task != 0
			BC( "dialogbox", "player", -1, "You haven't acquired the quest." )
			return
		endif
		
		$NullItem1 = GetPlayerInfo( -1, "nullitem", 0 )
		if $NullItem1 < 1
			BC( "dialogbox", "player", -1, "Your bag is full." )
			return
		endif		
		
		$Item0 = GetPlayerInfo( -1, "item", $ItemID3 )
		if $Item0 >= $ItemNum3
			$Sub1 = SubPlayerInfo( -1, "item", $ItemID3, $ItemNum3 )
			if $Sub1 != 0
				return
			endif
			BC( "dialogbox", "player", -1, "The seal on the Blue Crystal has been removed!" )
			SetPlayerVar( -1, $var1, 1 )
		else
			BC( "dialogbox", "player", -1, "You need a {#ffff002a=Blue Crystaloid#} to remove the seal on the Blue Seal Crystal. {#ffff002a=Use Incantation of Seal (Blue) to locate the Blue Crystaloid within the Blue Crystal.#}" )
			return
		endif
		
		call Fengyin()
		return	
	}
	
	function Fengyin(){
		$var1 = 16
		$var2 = 17
		$var3 = 18
		$var4 = 19
		$ItemID4 = 12403
		$ItemNum = 1
		
		$var10 = GetPlayerVar( -1, $var1 )
		$var20 = GetPlayerVar( -1, $var2 )
		$var30 = GetPlayerVar( -1, $var3 )
		$var40 = GetPlayerVar( -1, $var4 )
		
		if $var10 > 0
			if $var20 > 0
				if $var30 > 0
					if $var40 > 0
						PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
						AddPlayerInfo( -1, "item", $ItemID4, $ItemNum )
					endif
				endif
			endif
		endif	
	}		