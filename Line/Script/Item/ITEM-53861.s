	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/30
	//		Author:???
	//		TaskName:ITEM-53861.s
	//		TaskID:4?????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		//???????
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		if $bag_count < 1
			BC( "screen", "player", -1, "Your Material Bag is full." )
			return
		endif					
		
		//????
		$del = SubPlayerInfo ( -1 , "item" , 53861 , 1 )
		if  $del != 0
			return
		endif
		
		//??????
		$random = RandomNumber(1 , 10000)
			
		if $random <= 2500
			AddPlayerInfo( -1, "item", 4664, 4 )
				
		endif
		
		if $random <= 5000
			if $random > 2500
				AddPlayerInfo( -1, "item", 4664, 5 )
					
			endif
		endif
		
		if $random <= 7500
			if $random > 5000
				AddPlayerInfo( -1, "item", 4664, 6 )
					
			endif
		endif
		
		if $random > 7500
			AddPlayerInfo( -1, "item", 4664, 7 )
				
		
		endif
			
							
	}