  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/01/08
	//		Author:???
	//		TaskName:ItemCard-54294
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		
		$HorN = HaveTarot( -1 , 12026 )
		if $HorN == 1
			BC( "screen", "player", -1 , "You already have this Fate Card!")
			return
		endif
		if $HorN == 0
			$delor = SubPlayerInfo( -1 , "item", 54294 , 1 )
			if $delor == 0
				AddTarotCard( -1 , 12026 )
			endif
		endif
		
	}