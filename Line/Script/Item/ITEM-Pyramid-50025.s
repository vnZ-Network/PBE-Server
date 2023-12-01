	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/13
	//		Author:???
	//		TaskName:ITEM-Pyramid-50025.s
	//		TaskID:?????50025???
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$n = GetPlayerInfo( -1, "prestige", 15 )
		if $n >= 30000
			BC( "screen", "player", -1, "Your Valhalla Reputation is full!" )
			return
		endif
		$revalue = SubPlayerInfo( -1, "item", 50025, 1 )
		if $revalue == 0
			$n = RandomNumber ( 10, 100 )
			AddPlayerInfo( -1, "prestige", 15 , $n )
			//BC( "chat", "player", -1, "GUID:06731000001" )
		endif

	}
	
	