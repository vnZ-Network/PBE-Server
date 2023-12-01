	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/7/18
	//		Author:???
	//		TaskName:ITEM-59877.s
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You must have at least 1 free bag space." )
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 59877 , 1 )
		if  $info != 0
			return
		endif
		//DropMonsterItems( -1 , 90143 )
		
		$random = RandomNumber( 1, 10000 )
		
		if $random <= 50
			AddPlayerInfo( -1, "item", 59841 , 1 )
			BC( "screen", "player", -1, "Congratulation, you obtained a LV5 Gem Coin." )
		endif
		
		if $random > 50
			if $random <= 1100
				AddPlayerInfo( -1, "item", 59840 , 1 )
				BC( "screen", "player", -1, "Congratulation, you obtained a LV4 Gem Coin." )
			endif
		endif
		
		if $random > 1100
			if $random <= 10000
				AddPlayerInfo( -1, "item", 59839 , 1 )
				BC( "screen", "player", -1, "Congratulation, you obtained a LV3 Gem Coin." )
			endif
		endif
		
	}

