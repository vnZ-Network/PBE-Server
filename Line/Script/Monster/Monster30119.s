    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/06
	//		Author:??|???
	//		TaskName:Monster30119.s
	//		TaskID:???????
	//****************************************
	
	function OnDead(){
		AddStatusToMap(83 , 10596 , 1)
		BC( "screen", "map", 83, "The Surveillant has been killed. Everybody has acquired Surveillant's Decoy." )
		
		$red = GetPlayerInfo( -1 , "prestige", 0)
		if $red <= 10
			return
		endif
		
		$buff = GetStatusLevel( -1 , 11561)
		if $buff == 14
			$card = RandomNumber( 0, 200 )
			if $card == 1
				$HorN = HaveTarot( -1 , 12007 )
				if $HorN == 0
					AddTarotCard( -1 , 12007 )
					BC( "screen", "player", -1, "Congratulations! You received a Silver Ashura King Tanno Fate Card!")
					BC( "chat", "player", -1, "Congratulations! You received a Silver Ashura King Tanno Fate Card!")
				endif
			endif
		endif
	}