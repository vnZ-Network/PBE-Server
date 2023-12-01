	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/06/23
	//		Author:???
	//		TaskName:ITEM-Pyramid-50026.s
	//		TaskID:??????????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		
		$n = GetPlayerInfo( -1, "prestige", 15 )
		if $n >= 30000
			BC( "screen", "player", -1, "Your Valhalla Reputation is full!" )
			return
		endif
		$revalue = SubPlayerInfo( -1, "item", 50026, 1 )
		if $revalue == 0
			$n = RandomNumber ( 10, 100 )
			AddPlayerInfo( -1, "prestige", 15 , $n )
			//BC( "chat", "player", -1, "GUID:06732000001" )
		endif
	
	}
	
	