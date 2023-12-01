	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/09
	//		Author:???
	//		TaskName:item_44406.s
	//		TaskID:????????
	//
	//****************************************
	function OnUseItem(){

		$bag1 = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag1 < 5
			BC( "dialogbox", "player", -1, "You must have at least 5 spaces in your bag!" )
			return
		endif

		$bag2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag2 < 1
			BC( "dialogbox", "player", -1, "You need at least 1 empty slot in your materials bag!" )
			return
		endif

		//???????
		$del_count = SubPlayerInfo( -1, "item", 44406, 1 )
		//??????????
		if $del_count != 0
			return
		endif

		$suiji = RandomNumber(1, 1000)
		if $suiji <= 200
			$revalue = AddPlayerInfo( -1, "item", 59103, 1 )
		endif

		if $suiji > 200
			if $suiji <= 250
				$revalue = AddPlayerInfo( -1, "item", 2141, 1 )
			endif
		endif
		
		if $suiji > 250
			if $suiji <= 595
				$revalue = AddPlayerInfo( -1, "item", 59838, 1 )
			endif
		endif

		if $suiji > 595
			if $suiji <= 795
				$revalue = AddPlayerInfo( -1, "item", 9, 1 )
			endif
		endif

		if $suiji > 795
			if $suiji <= 995
				$revalue = AddPlayerInfo( -1, "item", 60014, 1 )
			endif
		endif

		if $suiji > 995
			if $suiji <= 1000
				$revalue = AddPlayerInfo( -1, "item", 60014, 1 )
			endif
		endif
		
	}