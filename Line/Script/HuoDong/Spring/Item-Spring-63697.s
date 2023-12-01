	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/21
	//		Author:???
	//		TaskName:Item-Spring-63697.s
	//		TaskID:1??
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
		$result = SubPlayerInfo( -1, "item", 63697 , 1 )
		if $result == 0
			$random = RandomNumber( 1 , 100 )
			if $random >= 1
				if $random <= 30
					AddPlayerInfo( -1, "item", 2419, 1 )
				endif
			endif

			if $random >= 31
				if $random <= 60
					AddPlayerInfo( -1, "item", 59935 , 1 )
				endif
			endif
			
			if $random >= 61
				if $random <= 75
					AddPlayerInfo( -1, "item", 64247, 1 )
				endif
			endif
			
			if $random >= 76
				if $random <= 100
					AddPlayerInfo( -1, "item", 63709 , 20 )
				endif
			endif
				
		endif
	}