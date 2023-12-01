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
		
//59814   ????????
//59815   ????
//59816   ?????
//59817   ?????
//59820   ?????
//59822   ?????????
//59823   ????????


		$item1 = GetPlayerInfo( -1, "item", 59814)
		if $item1 < 5
			BC( "screen", "player", -1, "You have less than 5 Light element pieces. You can not combine them." )
			return
		endif
		
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag.")
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59814 ,5)
		if $result == 0
			$result = AddPlayerInfo( -1, "item", 59815 ,1)
			BC( "screen" , "player" , -1 , "You got a Light Origin Crystal." )
		endif
		
	}