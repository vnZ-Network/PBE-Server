	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:??????2??
	//		TaskID:
	//
	//****************************************
	function OnUseItem(){
		
//59797	?????????
//59798	???????
//59799	?????
//59800	????
//59801	????
//59802	????
//59804	?????????      
//59805	????????
//59807	?????

		$item1 = GetPlayerInfo( -1, "item", 59801)
		if $item1 == 0
			BC( "screen", "player", -1, "You need an Ice Spirit Stone Fragment." )
			return
		endif
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag.")
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59800 ,1)
		$re = $re + $result
		$result = SubPlayerInfo( -1, "item", 59801 ,1)
		$re = $re + $result

		if $re == 0
			$result = AddPlayerInfo( -1, "item", 59799 ,1)
			BC( "screen" , "player" , -1 , "You obtain a Stone of Coldflow." )
			SetPlayerVar(-1, 3301, 0 )
		endif
		
	}