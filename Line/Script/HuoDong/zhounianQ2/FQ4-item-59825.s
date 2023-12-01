	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:??????
	//		TaskID:
	//
	//****************************************
	function OnUseItem(){
		
	//59825	?????????
	//59826	???
	//59827	?????
	//59828	?????
	//59831	?????????
	//59832	????
	//59833	????????


		$item1 = GetPlayerInfo( -1, "item", 59825)
		if $item1 < 5
			BC( "screen", "player", -1, "You have less than 5 Dark Origin Fragments. You cannot combine them." )
			return
		endif
		
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag.")
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59825 ,5)
		if $result == 0
			$result = AddPlayerInfo( -1, "item", 59826 ,1)
			BC( "screen" , "player" , -1 , "You've obtained the Dark Origin Crystal." )
		endif
		
	}