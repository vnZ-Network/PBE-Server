	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/12/5
	//		Author:???
	//		TaskName:Item-59555.s
	//		TaskID:???????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 1
			BC( "screen", "player", -1, "Your bag is full" )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 59555 , 1 )
		if  $info != 0
			return
		endif
		$n = RandomNumber ( 0 , 100 )
		if $n < 9
			AddPlayerInfo( -1 ,"item", 62560 , 1 )	
				BC("screen", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Aries Zodiac Pet!" )
				BC("chat", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Aries Zodiac Pet!" )
		endif
		
		if $n < 18
			if $n >= 9
				AddPlayerInfo( -1 ,"item", 62531 , 1 )
					BC("screen", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Taurus Zodiac Pet!" )
					BC("chat", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Taurus Zodiac Pet!" )
			endif
		endif
		if $n < 27
			if $n >= 18
				AddPlayerInfo( -1 ,"item", 62532 , 1 )	
					BC("screen", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Gemini Zodiac Pet!" )
					BC("chat", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Gemini Zodiac Pet!" )
			endif
		endif
		
		if $n < 35
			if $n >= 27
				AddPlayerInfo( -1 ,"item", 62533 , 1 )	
					BC("screen", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Cancer Zodiac Pet!" )
					BC("chat", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Cancer Zodiac Pet!" )
			endif
		endif
		
		if $n < 42
			if $n >= 35
				AddPlayerInfo( -1 ,"item", 62534 , 1 )	
					BC("screen", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Leo Zodiac Pet!" )
					BC("chat", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Leo Zodiac Pet!" )
			endif
		endif
		
		if $n < 50
			if $n >= 42
				AddPlayerInfo( -1 ,"item", 62548 , 1 )	
					BC("screen", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Virgo Zodiac Pet!" )
					BC("chat", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Virgo Zodiac Pet!" )
			endif
		endif

		if $n < 58
			if $n >= 50
				AddPlayerInfo( -1 ,"item", 62549 , 1 )	
					BC("screen", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Libra Zodiac Pet!" )
					BC("chat", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Libra Zodiac Pet!" )
			endif
		endif

		if $n < 66
			if $n >= 58
				AddPlayerInfo( -1 ,"item", 62550 , 1 )	
					BC("screen", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Scorpio Zodiac Pet!" )
					BC("chat", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Scorpio Zodiac Pet!" )
			endif
		endif

		if $n < 75
			if $n >= 66
				AddPlayerInfo( -1 ,"item", 62551 , 1 )	
					BC("screen", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Sagittarius Zodiac Pet!" )
					BC("chat", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Sagittarius Zodiac Pet!" )
			endif
		endif

		if $n < 84
			if $n >= 75
				AddPlayerInfo( -1 ,"item", 62557 , 1 )	
					BC("screen", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Capricorn Zodiac Pet!" )
					BC("chat", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Capricorn Zodiac Pet!" )
			endif
		endif
		
		if $n < 93
			if $n >= 84
				AddPlayerInfo( -1 ,"item", 62558 , 1 )	
					BC("screen", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Aquarius Zodiac Pet!" )
					BC("chat", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Aquarius Zodiac Pet!" )
			endif
		endif

		if $n >= 93
			AddPlayerInfo( -1 ,"item", 62559 , 1 )	
				BC("screen", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Pisces Zodiac Pet!" )
				BC("chat", "servergroup", -1, "The hero ",#name, "You opened a Zodiac Pet Chest and found a Pisces Zodiac Pet!" )
		endif
		
	}