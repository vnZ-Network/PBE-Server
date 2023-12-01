	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/06/23
	//		Author:???
	//		TaskName:ITEM-jiashengwang63174.s
	//		TaskID:?????63174???
	//
	//****************************************
	
	
	function OnUseItem(){
		$n = GetPlayerInfo( -1, "prestige", 15 )
		if $n >= 30000
			BC( "screen", "player", -1, "Your Valhalla Reputation is full!" )
			return
		endif
		$revalue = SubPlayerInfo( -1, "item", 63174, 1 )
		if $revalue == 0
			$n = RandomNumber ( 10, 100 )
			AddPlayerInfo( -1, "prestige", 15 , $n)
			//BC( "chat", "player", -1, "GUID:06654000001" )
		endif
		
	}
	
	