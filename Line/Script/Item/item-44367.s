	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/31
	//		Author:???
	//		TaskName:item-44367.s
	//		TaskID:???
	//
	//****************************************

	function OnUseItem(){

		$bag = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag < 1
			BC( "dialogbox", "player", -1, "You need at least 1 empty slot in your bag!" )
			return
		endif

		//???????
		$del_count = SubPlayerInfo( -1, "item", 44367, 1 )
		//??????????
		if $del_count != 0
			return
		endif

		$suiji = RandomNumber ( 0, 99 )
		if $suiji < 40
			AddPlayerInfo( -1, "item", 9, 5 )
		endif
		
		if $suiji > 39
			if $suiji < 70
				AddPlayerInfo( -1, "item", 59839, 1 )
			endif
		endif
		
		if $suiji > 69
			if $suiji < 99
				AddPlayerInfo( -1, "item", 59557, 5 )
			endif
		endif		

	}