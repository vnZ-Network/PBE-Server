	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/06/21
	//		Author:???
	//		TaskName:NPC-RuiYa-1884.s
	//		TaskID:????
	//
	//****************************************
	function OnRequest(){
		
	}
	//????
	
	function OnOption0(){
			
		$prestige = GetPlayerInfo(-1, "prestige" , 15)
		if $prestige < 30000
			BC( "dialogbox", "player", -1, "Your Valhalla Avenger Reputation must reach 30000." )
			return
		endif
		//????
		$result = AddTrump( -1, 11002, 1 )
		if $result == 0
			BC( "dialogbox", "player", -1, "Exchange successful." )
		else
			BC( "dialogbox", "player", -1, "You have obtained a Fallen Angel Feather. Please, check your Relic window." )
		endif
		
	}