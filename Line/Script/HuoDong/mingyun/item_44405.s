	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/09
	//		Author:???
	//		TaskName:item_44405.s
	//		TaskID:????????
	//
	//****************************************
	function OnUseItem(){

		$bag1 = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag1 < 6
			BC( "dialogbox", "player", -1, "You need at least 6 empty slots in your bag!" )
			return
		endif

		$bag2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag2 < 1
			BC( "dialogbox", "player", -1, "You need at least 1 empty slot in your materials bag!" )
			return
		endif

		$yaoshi1 = GetPlayerInfo( -1, "item", 44407 )
		$yaoshi2 = GetPlayerInfo( -1, "item", 44408 )
		$yaoshi = $yaoshi1 + $yaoshi2
		//?????????
		if $yaoshi < 1
			BC( "dialogbox", "player", -1, "Sorry, you don't have enough Golden Keys! Go find Skuld (255, 155) in the Atrium to get a free Golden Key, or purchase one from the Marketplace!" )
			return
		endif

		//???????
		if $yaoshi1 > 0
			$del_count = SubPlayerInfo( -1, "item", 44405, 1 )
			$del_count = SubPlayerInfo( -1, "item", 44407, 1 )
		else
			$del_count = SubPlayerInfo( -1, "item", 44405, 1 )
			$del_count = SubPlayerInfo( -1, "item", 44408, 1 )			
		endif

  	//??????-START
		$join_number = GetGlobalVar(890)
		$join_number = $join_number + 1
		SetGlobalVar(890 , $join_number)
		//??????-END

		//??????????
		if $del_count != 0
			return
		endif

		$suiji = RandomNumber(1, 10000)
		if $suiji <= 2400
			$revalue = AddPlayerInfo( -1, "item", 59839, 1 )
		endif

		if $suiji > 2400
			if $suiji <= 4700
				$revalue = AddPlayerInfo( -1, "item", 9, 10 )
			endif
		endif
		
		if $suiji > 4700
			if $suiji <= 7000
				$revalue = AddPlayerInfo( -1, "item", 60014, 10 )
			endif
		endif

		if $suiji > 7000
			if $suiji <= 9390
				$revalue = AddPlayerInfo( -1, "item", 5701, 3 )
			endif
		endif

		if $suiji > 9390
			if $suiji <= 9890
				$revalue = AddPlayerInfo( -1, "item", 9, 10 )
			endif
		endif

		if $suiji > 9890
			if $suiji <= 9997
				$revalue = AddPlayerInfo( -1, "item", 9, 10 )
			endif
		endif

		if $suiji > 9997
			$revalue = AddPlayerInfo( -1, "item", 62616, 1 )
			#name = GetPlayerInfo(-1 , "name")
			BC( "chat", "server", -1, "The hero ",#name," was lucky enough to find a True Dragon Emperor egg in their Golden Chest!" )
			BC( "screen", "server", -1, "The hero ",#name," was lucky enough to find a True Dragon Emperor egg in their Golden Chest!" )
		endif
	}