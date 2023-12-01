	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/2/24
	//		Author:??
	//		TaskName:NPC-duihuanlongzuoji.s
	//		TaskID:?????????
	//
	//****************************************

	
	
	
	function OnRequest(){
		
		
	}
	
	
	function OnOption0(){
	
		$count = GetPlayerInfo(-1 , "item" , 63243)
		if $count < 300
			BC( "dialogbox", "player", -1, "You don't have 300 Soul Essence Fragments." )
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//
		if $bag_count < 1
			BC( "chat", "player", -1, "Insufficient bag slots" )
			return
		endif
		
		$revalue = SubPlayerInfo(-1 , "item" , 63243 ,300)
		if $revalue == 0
			AddPlayerInfo( -1, "item", 62006, 1 )
			#name = GetPlayerInfo(-1 , "name")
			BC( "screen", "servergroup", -1, "The hero ",#name,  " has acquired a Black Dragon mount by paying 300 Soul Essence Fragments!")
			BC( "chat", "servergroup", -1, "The hero ",#name,  " has acquired a Black Dragon mount by paying 300 Soul Essence Fragments!")
		endif
	}
	
	function OnOption1(){
	
		$count = GetPlayerInfo(-1 , "item" , 63243)
		if $count < 1
			BC( "dialogbox", "player", -1, "You don't have a Soul Essence Fragment." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//
		if $bag_count < 1
			BC( "chat", "player", -1, "Insufficient bag slots" )
			return
		endif
		
		$revalue = SubPlayerInfo(-1 , "item" , 63243 ,1)
		if $revalue == 0
			$r_number = RandomNumber(1 , 300)
			if $r_number == 1
				AddPlayerInfo( -1, "item", 62006, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC( "screen", "servergroup", -1, "The hero ",#name,  " has acquired the Black Dragon mount by paying only one Soul Essence Fragment! What luck!")
				BC( "chat", "servergroup", -1, "The hero ",#name,  " has acquired the Black Dragon mount by paying only one Soul Essence Fragment! What luck!")
			else
				BC( "dialogbox", "player", -1, "You are not fortunate enough this time. Please try again later.")
			endif
		endif
	}