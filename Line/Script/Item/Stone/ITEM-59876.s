	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/7/18
	//		Author:???
	//		TaskName:ITEM-59876.s
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You must have at least 1 free bag space." )
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 59876 , 1 )
		if  $info != 0
			return
		endif
		//DropMonsterItems( -1 , 90142 )
		
		$random = RandomNumber( 1, 10000 )
		
		if $random <= 100
			AddPlayerInfo( -1, "item", 59839 , 1 )
			BC( "screen", "player", -1, "Congratulation, you obtained a LV3 Gem Coin." )
		endif
		
		if $random > 100
			if $random <= 900
				AddPlayerInfo( -1, "item", 59838 , 1 )
				BC( "screen", "player", -1, "Congratulation, you obtained a LV2 Gem Coin." )
			endif
		endif
		
		if $random > 900
			if $random <= 10000
				AddPlayerInfo( -1, "item", 59837 , 1 )
				BC( "screen", "player", -1, "Congratulation, you obtained a LV1 Gem Coin." )
			endif
		endif
		
		
	}

