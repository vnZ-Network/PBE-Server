	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/31
	//		Author:???
	//		TaskName:item-44368.s
	//		TaskID:???
	//
	//****************************************

	function OnUseItem(){

		$bag = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag < 2
			BC( "dialogbox", "player", -1, "Sorry, you need at least 2 empty slots in your bag!" )
			return
		endif

		//???????
		$del_count = SubPlayerInfo( -1, "item", 44368, 1 )
		//??????????
		if $del_count != 0
			return
		endif

		AddPlayerInfo( -1, "item", 59840, 1 )
		AddPlayerInfo( -1, "item", 59557, 5 )
		
	}