	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/03
	//		Author:???
	//		TaskName:ITEM-63422.s
	//		TaskID:??????
	//
	//****************************************
	
	
	function OnUseItem(){
		$count01 = GetPlayerInfo( -1, "nullitem", 0 )
		if $count01 < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 63422 )
		if $Item < 5
			BC( "screen", "player", -1, "You need 5 Gem of Hel Fragments to make a Gem of Hel." )
			return
		endif
		
		$revalue = SubPlayerInfo( -1, "item", 63422, 5 )
		if $revalue != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 5381, 1 )
		
	}
	
	