	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:????3??
	//		TaskID:
	//
	//****************************************
	function OnUseItem(){

		$item1 = GetPlayerInfo( -1, "item", 59777)
		$item2 = GetPlayerInfo( -1, "item", 59778)
		if $item1 == 0
			BC( "screen", "player", -1, "You need Will of the Far Sky and Eye of Understanding." )
			return
		endif
		if $item2 == 0
			BC( "screen", "player", -1, "You need Will of the Far Sky and Eye of Understanding." )
			return
		endif
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag.")
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59777 ,1)
		$re = $re + $result
		$result = SubPlayerInfo( -1, "item", 59778 ,1)
		$re = $re + $result
		$result = SubPlayerInfo( -1, "item", 59779 ,1)
		$re = $re + $result

		if $re == 0
			$result = AddPlayerInfo( -1, "item", 59782 ,1)
			BC( "screen" , "player" , -1 , "You obtained the Scarlet Phoenix Core" )
		endif
		
	}