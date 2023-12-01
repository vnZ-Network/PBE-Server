	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/31
	//		Author:???
	//		TaskName:item-44366.s
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
		$del_count = SubPlayerInfo( -1, "item", 44366, 1 )
		//??????????
		if $del_count != 0
			return
		endif

		$suiji = RandomNumber ( 0, 99 )
		if $suiji < 40
			AddPlayerInfo( -1, "item", 9, 1 )
		endif
		
		if $suiji >= 40
			if $suiji < 70
				AddPlayerInfo( -1, "item", 59838, 1 )
			endif
		endif
		
		if $suiji >= 70
			if $suiji < 100
//				AddPlayerInfo( -1, "item", 63710, 1 )
				AddPlayerInfo(-1,"givepoint",500)
				BC("screen","player",-1,"You received 500 Salary!")
			endif
		endif

	}