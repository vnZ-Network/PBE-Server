  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11
	//		???
	//		TaskName:ItemCard-
	//		
	//
	//****************************************
	
	
	function OnUseItem(){
		
//2542	??
//2541	???
//12542	??(?)
//12541	???(?)
		$HorN = HaveTarot( -1 , 2542 )
		if $HorN == 1
			BC( "screen", "player", -1 , "You already have this Fate Card!")
			return
		endif
		if $HorN == 0
			$delor = SubPlayerInfo( -1 , "item", 54277 , 1 )
			if $delor == 0
				AddTarotCard( -1 , 2542 )
			endif
		endif
		
		
		
	}