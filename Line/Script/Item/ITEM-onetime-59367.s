	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-10-24
	//		Author:??
	//		TaskName:ITEM-onetime-59367.s
	//		TaskID:????????????
	//
	//****************************************
	
	function OnUseItem(){
		
		//272
		//273
		//274
		$getvar = GetPlayerVar(-1,273)
		if $getvar == 1
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		if $bag_count2 < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 59367, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 9 , 60 )
		AddPlayerInfo( -1 , "item" , 2221 , 10 )
		AddPlayerInfo( -1 , "item" , 2338 , 1 )

		SetPlayerVar(-1,273,1)
		
	}
		