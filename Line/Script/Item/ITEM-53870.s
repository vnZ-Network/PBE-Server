	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/30
	//		Author:???
	//		TaskName:ITEM-53870.s
	//		TaskID:??????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		//???????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 2
			BC( "screen", "player", -1, "Your bag is full." )
			return
		endif
	
		
		//????
		$del = SubPlayerInfo ( -1 , "item" , 53870 , 1 )
		if  $del != 0
			return
		endif
		
		AddPlayerInfo( -1, "item" , 4664 , 5 )		
		AddPlayerInfo( -1, "item" , 4665 , 3 )
				
	}