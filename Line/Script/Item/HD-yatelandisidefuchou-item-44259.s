	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/07
	//		Author:???
	//		TaskName:HD-yatelandisidefuchou-item-44259.s
	//		TaskID:??????
	//
	//****************************************

	function OnUseItem(){

		$bag1 = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag1 < 2
			BC( "dialogbox", "player", -1, "Sorry, you need at least 2 empty slots in your bag!" )
			return
		endif

		$bag2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag2 < 1
			BC( "dialogbox", "player", -1, "You need at least 1 empty slot in your materials bag!" )
			return
		endif


		//???????
		$del_count = SubPlayerInfo( -1, "item", 44259, 1 )
		//??????????
		if $del_count != 0
			return
		endif


		$lvl = GetPlayerInfo($playerid,"level")

		if $lvl < 90
			AddPlayerInfo( -1, "item", 9, 2 )
			AddPlayerInfo( -1, "item", 59838, 1 )
		else
			$suiji = RandomNumber ( 0, 5 )
			if $suiji <= 2
				AddPlayerInfo( -1, "item", 9, 2 )
				AddPlayerInfo( -1, "item", 59838, 2 )
			else
				AddPlayerInfo( -1, "item", 9, 2 )
				AddPlayerInfo( -1, "item", 59838, 1 )
			endif
		endif


		$suiji = RandomNumber ( 0, 99 )
		if $suiji <= 5
			$revalue = AddPlayerInfo( -1, "item", 59839, 1 )
		endif


	}