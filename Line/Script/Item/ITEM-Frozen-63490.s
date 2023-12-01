	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/20
	//		Author:???
	//		TaskName:ITEM-Frozen-63490.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
	
		$no_bag = GetPlayerInfo ( -1 , "nullitem" , 0  )
		if $no_bag < 5
			BC( "screen", "player", -1 , "You have less than empty slots in your bag.")
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 63490 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 63453 , 5 )
		
	}

