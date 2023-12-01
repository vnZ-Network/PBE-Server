	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:????5??
	//		TaskID:
	//
	//****************************************
	
	function OnUseItem(){
		
		$item1 = GetPlayerInfo( -1, "item", 59775)
		if $item1 < 5
			BC( "screen", "player", -1, "You have less than 5 Fire Spirit Stone Fragments. You can not combine them into one Fire Spirit stone." )
			return
		endif
		
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag.")
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59775 ,5)
		if $result == 0
			$result = AddPlayerInfo( -1, "item", 59776 ,1)
			BC( "screen" , "player" , -1 , "You got a complete Fire Spirit Stone." )
		endif
	}