	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/17
	//		Author:??
	//		TaskName:ITEM-jiashengwang63173.s
	//		TaskID:?????63173???
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$n = GetPlayerInfo( -1, "prestige", 15 )
		if $n >= 30000
			BC( "screen", "player", -1, "Your Valhalla Reputation is full!" )
			return
		endif
		$revalue = SubPlayerInfo( -1, "item", 63173, 1 )
		if $revalue == 0
			$n = RandomNumber ( 10, 100 )
			AddPlayerInfo( -1, "prestige", 15 , $n)
			//BC( "chat", "player", -1, "GUID:06653000001" )
		endif
		
		
		
	}
	
	