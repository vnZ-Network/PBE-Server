	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/09
	//		Author:???
	//		TaskName:NPC-KBSNF-245.s
	//		TaskID:245 ?????
	//
	//****************************************
	
	function OnRequest(){
	
		$task = IsTaskAccept( -1, 791 )
		if $task != 0
			DisableNpcOption(0)
		endif
	
	}
	
	
	function OnOption0(){
	
		$task = IsTaskAccept( -1, 791 )
		if $task != 0
			BC( "dialogbox", "player", -1, "You haven't acquired the quest." )
			return
		endif
		
		$Item0 = GetPlayerInfo( -1, "item", 12224 )
		if $Item0 > 4
			$Sub0 = SubPlayerInfo( -1, "item", 12224, 5 )
			if $Sub0 != 0
				return
			endif
			AddPlayerInfo( -1, "item", 12223, 1 )
		else
			BC( "dialogbox", "player", -1, "Exchange for the Purple Key? The wraiths around Pharaoh's crypt are noisy. If you can find {#ffff0000=5 Penance Verdicts#} to release them, I will give you the Purple Key. {#ffff0000=(Penance Verdicts can be bought from Huth in Nile River West.)#}" )
			return
		endif
		
	}