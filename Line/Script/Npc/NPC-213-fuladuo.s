	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/19
	//		Author:???
	//		TaskName:NPC-TaLun-185.s
	//		TaskID:185 ??
	//
	//****************************************
	
	function OnRequest(){
	
	}
	function OnOption0(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		$money = GetPlayerInfo(-1, "money")
		if $money < 1000000
			BC( "screen", "player", -1, "You need at least 1,000,000 Coins to exchange!" )
			return			
		endif
//2512	????(2?)
//2513	????(3?)
//2514	????(4?)
//2515	????(5?)
//2516	????(6?)

		$giveid = 2512
		$deleteidbase1 = 2517
		$deleteidbase2 = 2598
		$i = 0
		while $i < 15
		  $result = SubPlayerInfo(-1, "item", $deleteidbase1, 1 )
		  if $result == 0
		  	AddPlayerInfo(-1, "item", $giveid, 1)
				SubPlayerInfo(-1, "money", 1000000)
		  	return
		  endif
		  $deleteidbase1 = $deleteidbase1 + 5		
		  $i = $i + 1
		endwhile  		
		$i = 0
		while $i < 12
		  $result = SubPlayerInfo(-1, "item", $deleteidbase2, 1 )
		  if $result == 0
		  	AddPlayerInfo(-1, "item", $giveid, 1)
				SubPlayerInfo(-1, "money", 1000000)
		  	return
		  endif
		  $deleteidbase2 = $deleteidbase2 + 5		
		  $i = $i + 1
		endwhile 
		BC( "screen", "player", -1, "You don't have any Ethereal Seals above LV2, cannot exchange!" ) 		
	}
	function OnOption1(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		$money = GetPlayerInfo(-1, "money")
		if $money < 1000000
			BC( "screen", "player", -1, "You need at least 1,000,000 Coins to exchange!" )
			return			
		endif
//		$submoney = SubPlayerInfo(-1, "money", 1000000)
//2512	????(2?)
//2513	????(3?)
//2514	????(4?)
//2515	????(5?)
//2516	????(6?)

		$giveid = 2513
		$deleteidbase1 = 2518
		$deleteidbase2 = 2599
		$i = 0
		while $i < 15
		  $result = SubPlayerInfo(-1, "item", $deleteidbase1, 1 )
		  if $result == 0
		  	AddPlayerInfo(-1, "item", $giveid, 1)
		  	SubPlayerInfo(-1, "money", 1000000)
		  	return
		  endif
		  $deleteidbase1 = $deleteidbase1 + 5		
		  $i = $i + 1
		endwhile  		
		$i = 0
		while $i < 12
		  $result = SubPlayerInfo(-1, "item", $deleteidbase2, 1 )
		  if $result == 0
		  	AddPlayerInfo(-1, "item", $giveid, 1)
		  	SubPlayerInfo(-1, "money", 1000000)
		  	return
		  endif
		  $deleteidbase2 = $deleteidbase2 + 5		
		  $i = $i + 1
		endwhile  		
		BC( "screen", "player", -1, "You don't have any Ethereal Seals above LV2, cannot exchange!" ) 		
	}
	function OnOption2(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		$money = GetPlayerInfo(-1, "money")
		if $money < 1000000
			BC( "screen", "player", -1, "You need at least 1,000,000 Coins to exchange!" )
			return			
		endif
//		$submoney = SubPlayerInfo(-1, "money", 1000000)
//2512	????(2?)
//2513	????(3?)
//2514	????(4?)
//2515	????(5?)
//2516	????(6?)

		$giveid = 2514
		$deleteidbase1 = 2519
		$deleteidbase2 = 2600
		$i = 0
		while $i < 15
		  $result = SubPlayerInfo(-1, "item", $deleteidbase1, 1 )
		  if $result == 0
		  	AddPlayerInfo(-1, "item", $giveid, 1)
				SubPlayerInfo(-1, "money", 1000000)
		  	return
		  endif
		  $deleteidbase1 = $deleteidbase1 + 5		
		  $i = $i + 1
		endwhile  		
		$i = 0
		while $i < 12
		  $result = SubPlayerInfo(-1, "item", $deleteidbase2, 1 )
		  if $result == 0
		  	AddPlayerInfo(-1, "item", $giveid, 1)
				SubPlayerInfo(-1, "money", 1000000)
		  	return
		  endif
		  $deleteidbase2 = $deleteidbase2 + 5		
		  $i = $i + 1
		endwhile  		
		BC( "screen", "player", -1, "You don't have any Ethereal Seals above LV2, cannot exchange!" ) 
	}
	function OnOption3(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		$money = GetPlayerInfo(-1, "money")
		if $money < 1000000
			BC( "screen", "player", -1, "You need at least 1,000,000 Coins to exchange!" )
			return			
		endif
//		$submoney = SubPlayerInfo(-1, "money", 1000000)
//2512	????(2?)
//2513	????(3?)
//2514	????(4?)
//2515	????(5?)
//2516	????(6?)

		$giveid = 2515
		$deleteidbase1 = 2520
		$deleteidbase2 = 2601
		$i = 0
		while $i < 15
		  $result = SubPlayerInfo(-1, "item", $deleteidbase1, 1 )
		  if $result == 0
		  	AddPlayerInfo(-1, "item", $giveid, 1)
				SubPlayerInfo(-1, "money", 1000000)
		  	return
		  endif
		  $deleteidbase1 = $deleteidbase1 + 5		
		  $i = $i + 1
		endwhile  		
		$i = 0
		while $i < 12
		  $result = SubPlayerInfo(-1, "item", $deleteidbase2, 1 )
		  if $result == 0
		  	AddPlayerInfo(-1, "item", $giveid, 1)
				SubPlayerInfo(-1, "money", 1000000)
		  	return
		  endif
		  $deleteidbase2 = $deleteidbase2 + 5		
		  $i = $i + 1
		endwhile  		
		BC( "screen", "player", -1, "You don't have any Ethereal Seals above LV2, cannot exchange!" ) 
	}
	function OnOption4(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		$money = GetPlayerInfo(-1, "money")
		if $money < 1000000
			BC( "screen", "player", -1, "You need at least 1,000,000 Coins to exchange!" )
			return			
		endif
//		$submoney = SubPlayerInfo(-1, "money", 1000000)
//2512	????(2?)
//2513	????(3?)
//2514	????(4?)
//2515	????(5?)
//2516	????(6?)

		$giveid = 2516
		$deleteidbase1 = 2521
		$deleteidbase2 = 2602
		$i = 0
		while $i < 15
		  $result = SubPlayerInfo(-1, "item", $deleteidbase1, 1 )
		  if $result == 0
		  	AddPlayerInfo(-1, "item", $giveid, 1)
				SubPlayerInfo(-1, "money", 1000000)
		  	return
		  endif
		  $deleteidbase1 = $deleteidbase1 + 5		
		  $i = $i + 1
		endwhile  		
		$i = 0
		while $i < 12
		  $result = SubPlayerInfo(-1, "item", $deleteidbase2, 1 )
		  if $result == 0
		  	AddPlayerInfo(-1, "item", $giveid, 1)
				SubPlayerInfo(-1, "money", 1000000)
		  	return
		  endif
		  $deleteidbase2 = $deleteidbase2 + 5		
		  $i = $i + 1
		endwhile  	
		BC( "screen", "player", -1, "You don't have any Ethereal Seals above LV2, cannot exchange!" ) 	
	}