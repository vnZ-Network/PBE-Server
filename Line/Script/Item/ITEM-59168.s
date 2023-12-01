	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/26
	//		Author:??
	//		TaskName:ITEM-59168.s
	//		TaskID:????(???)
	//
	//****************************************
	
	function OnUseItem(){
		$ItemID1 = GetPlayerInfo( -1, "item", 59168 )
		if $ItemID1 < 1
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 , "nullitem", 0)
		if $nullitem < 1
			BC( "chat", "player", -1, "Your bag is full." )
			return
		endif
			
		$Sub0 = SubPlayerInfo( -1, "item", 59168, 1 )
		if $Sub0 != 0
			return
		endif
			
		AddPlayerInfo( -1, "item", 6621, 10 )
			
	}