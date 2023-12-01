	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-10-24
	//		Author:??
	//		TaskName:ITEM-onetime-59368.s
	//		TaskID:????????????
	//
	//****************************************
	
	function OnUseItem(){
		
		//272
		//273
		//274
		$getvar = GetPlayerVar(-1,274)
		if $getvar == 1
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 59368, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 59840 , 3 )
		AddPlayerInfo( -1 , "item" , 2211 , 3 )
		AddPlayerInfo( -1 , "item" , 2264 , 3 )
		
		SetPlayerVar(-1,274,1)
		
	}
		