	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/18
	//		Author:???
	//		TaskName:ITEM-64274.s
	//		TaskID:????(???)
	//
	//****************************************
	
	function OnUseItem(){
		$ItemID1 = GetPlayerInfo( -1, "item", 64274 )
		if $ItemID1 < 1
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 , "nullitem", 0)
		if $nullitem < 1
			BC( "chat", "player", -1, "Bag is full!" )
			return
		endif
		
		$Sub0 = SubPlayerInfo( -1, "item", 64274, 1 )
		if $Sub0 != 0
			return
		endif
			
		AddPlayerInfo( -1, "item", 6358, 10 )
			
	}