 //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11
	//		???
	//		TaskName:ItemCard-54281
	//		
	//
	//****************************************
	
	
	function OnUseItem(){
		
//2544    ????????       
//12544   ????????(?) 
//
//
		$HorN = HaveTarot( -1 , 12544 )
		if $HorN == 1
			BC( "screen", "player", -1 , "You already have this Fate Card!")
			return
		endif
		if $HorN == 0
			$delor = SubPlayerInfo( -1 , "item", 54282 , 1 )
			if $delor == 0
				AddTarotCard( -1 , 12544 )
			endif
		endif
		
		
		
	}