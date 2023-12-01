	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/3/16
	//		Author:??
	//		TaskName:NPC-duihuanmibaotu213.s
	//		TaskID:20???????
	//
	//****************************************
	//
	function OnRequest(){
	
		
		
	}
	
	
	function OnOption0(){
	
		$null = GetPlayerInfo( -1, "nullitem", 0 )
		if $null < 1
			BC( "dialogbox", "player", -1, "Your bag is full." )
			return
		endif
		
		$Item0 = GetPlayerInfo( -1, "item", 64230 )
		if $Item0 < 20
			BC( "dialogbox", "player", -1, "You don't have 20 Soul Shards." )
			return
		endif
		
		$revalue = SubPlayerInfo(-1 , "item" , 64230 , 20)
		$n = RandomNumber(1 , 5)
		if $revalue == 0
			if $n == 1
				AddPlayerInfo(-1 , "item" , 63218 , 1)
			endif
			if $n == 2
				AddPlayerInfo(-1 , "item" , 63219 , 1)
			endif
			if $n == 3
				AddPlayerInfo(-1 , "item" , 63220 , 1)
			endif
			if $n == 4
				AddPlayerInfo(-1 , "item" , 63221 , 1)
			endif
			if $n == 5
				AddPlayerInfo(-1 , "item" , 63222 , 1)
			endif
			BC( "dialogbox", "player", -1, "Exchange completed." )
		endif
		
	}