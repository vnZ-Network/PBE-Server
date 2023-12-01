	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/18
	//		Author:???
	//		TaskName:ITEM-64272.s
	//		TaskID:????(???)
	//
	//****************************************
	
	function OnUseItem(){
		$ItemID1 = GetPlayerInfo( -1, "item", 64272 )
		if $ItemID1 < 1
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 , "nullitem", 0)
		if $nullitem < 1
			BC( "chat", "player", -1, "Bag is full!" )
			return
		endif
		
		$Sub0 = SubPlayerInfo( -1, "item", 64272, 1 )
		if $Sub0 != 0
			return
		endif
			
		AddPlayerInfo( -1, "item", 6356, 10 )
			
	}