	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/30
	//		Author:???
	//		TaskName:ITEM-53863.s
	//		TaskID:??:????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		
		//???????
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		if $bag_count < 1
			BC( "screen", "player", -1, "Your bag is full." )
			return
		endif
		
		//?????53310??
		$item = GetPlayerInfo( -1, "item", 53310 )
		
		if $item < 1
			BC( "screen", "player", -1, "This requires a Starword - Rage to use!" )
			return
		endif
		
		//????
		$del = SubPlayerInfo ( -1 , "item" , 53863 , 1 )
		if  $del != 0
			return
		endif
		$del = SubPlayerInfo ( -1 , "item" , 53310 , 1 )
		if  $del != 0
			return
		endif
		
		AddPlayerInfo( -1, "item" , 53317 , 1 )
							
	}