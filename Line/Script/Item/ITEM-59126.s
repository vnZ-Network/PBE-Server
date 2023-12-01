	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/30
	//		Author:???
	//		TaskName:ITEM-59126.s
	//		TaskID:????????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		//???????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "Your bag is full." )
			return
		endif					
		
		//????
		$del = SubPlayerInfo ( -1 , "item" , 59126 , 1 )
		if  $del != 0
			return
		endif
		
		//??????
		$random = RandomNumber(1 , 10000)
			
		if $random <= 2500
			AddPlayerInfo( -1, "item", 53850, 1 )
				
		endif
		
		if $random <= 5000
			if $random > 2500
				AddPlayerInfo( -1, "item", 53848, 1 )
					
			endif
		endif
		
		if $random <= 7500
			if $random > 5000
				AddPlayerInfo( -1, "item", 53852, 1 )
					
			endif
		endif
		
		if $random > 7500
			AddPlayerInfo( -1, "item", 53845, 1 )
				
		
		endif
			
							
	}