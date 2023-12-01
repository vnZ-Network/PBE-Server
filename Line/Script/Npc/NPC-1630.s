	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/23
	//		Author:???
	//		TaskName:NPC-1630.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
		DisableNpcOption(0)
		DisableNpcOption(1)
	}
	
	function OnOption0(){
		
		$nullitem = GetPlayerInfo( -1, "nullitem", 1 )
		
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "Your material bag is full, can't exchange for a Major Fortify Crystal.")	
			return
		endif
		
		$a = GetPlayerInfo( -1, "item", 63409 )
		
		if $a > 0
			$result = SubPlayerInfo( -1, "item", 63409, 1)
			if $result < 0
				return
			endif
			AddPlayerInfo( -1, "item", 10 ,10 )
			BC( "screen", "player", -1, "Congratulatons! You got 10 Major Fortify Crystals.")
		endif
		
		
	}
	
  function OnOption1(){
		
		$nullitem = GetPlayerInfo( -1, "nullitem", 1 )
		
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "Your material bag is full, can't exchange for a Major Fortify Crystal.")	
			return
		endif
		
		$a = GetPlayerInfo( -1, "item", 63415 )

		if $a > 0
			$result = SubPlayerInfo( -1, "item", 63415, 1)
			if $result < 0
				return
			endif
			AddPlayerInfo( -1, "item", 10 ,16 )
			BC( "screen", "player", -1, "Congratulatons! You got 16 Major Fortify Crystals.")
		endif
		
		
	}