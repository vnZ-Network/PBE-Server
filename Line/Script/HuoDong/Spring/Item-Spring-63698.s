	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/21
	//		Author:???
	//		TaskName:Item-Spring-63698.s
	//		TaskID:2??
	//
	//****************************************
	
	function OnUseItem(){
	
		//????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		
		//??????
		$result = SubPlayerInfo( -1, "item", 63698 , 1 )
		if $result == 0
			$random = RandomNumber( 1 , 100 )
			if $random >= 1
				if $random <= 25
					AddPlayerInfo( -1, "item" , 59930 , 1 )
				endif
			endif

			if $random >= 26
				if $random <= 55
					AddPlayerInfo( -1, "item", 2416 , 1 )
				endif
			endif
			
			if $random >= 56
				if $random <= 75
					AddPlayerInfo( -1, "item", 64246, 1 )
				endif
			endif
			
			if $random >= 76
				if $random <= 100
					AddPlayerInfo( -1 , "item" , 63709 , 6 )
				endif
			endif
		endif
	}