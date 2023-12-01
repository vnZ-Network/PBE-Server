
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-5-31
	//		Author:???
	//		TaskName:
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){
		
		
	}
	
	//????44470????*10
	function OnOption0(){
		//??????
	$TaskVar = GetPlayerVar( -1, 3348 )
	if $TaskVar >= 12
				BC( "dialogbox", "player", -1, "You've already exchanged 12 times." )
				return
			endif

		//????
	$count = GetPlayerInfo( -1, "item", 44470 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have the Egg Yolk Mooncake in your bag!" )
			return
		endif	
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//????????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		
		$result = SubPlayerInfo( -1, "item", 44470, 1 )
		
		//??????
		
		if $result != 0
		  return
			
		endif
		AddPlayerInfo( -1, "item", 8, 10 )
		$TaskVar = GetPlayerVar( -1, 3348 )
		$TaskVar = $TaskVar + 1
		SetPlayerVar( -1, 3348, $TaskVar )
		$TaskVar = GetPlayerVar( -1, 3348 )
		$TaskVar = 12 - $TaskVar
		BC( "screen", "player", -1, "Exchange succeeds! You can exchange rewards  with common mooncakes ",$TaskVar," times!" )
	}
	//????44471????*10
	function OnOption1(){
		//??????
	$TaskVar = GetPlayerVar( -1, 3348 )
	if $TaskVar >= 12
				BC( "dialogbox", "player", -1, "You've already exchanged 12 times." )
				return
			endif

		//????
	$count = GetPlayerInfo( -1, "item", 44471)
		if $count < 1
			BC( "screen", "player", -1, "You don't have the Lotus Paste Mooncake in your bag!" )
			return
		endif	
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//????????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		
		$result = SubPlayerInfo( -1, "item", 44471, 1 )
		//??????
		
		if $result != 0
		  return
			
		endif
		AddPlayerInfo( -1, "item", 8, 10 )
		$TaskVar = GetPlayerVar( -1, 3348 )
		$TaskVar = $TaskVar + 1
		SetPlayerVar( -1, 3348, $TaskVar )
		$TaskVar = GetPlayerVar( -1, 3348 )
		$TaskVar = 12 - $TaskVar
		BC( "screen", "player", -1, "Exchange succeeds! You can exchange rewards  with common mooncakes ",$TaskVar," times!" )
	}
	//????44472????*10
	function OnOption2(){
		//??????
	$TaskVar = GetPlayerVar( -1, 3348 )
	if $TaskVar >= 12
				BC( "dialogbox", "player", -1, "You've already exchanged 12 times." )
				return
			endif

		//????
	$count = GetPlayerInfo( -1, "item", 44472 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have the Ham Mooncake in your bag!" )
			return
		endif	
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//????????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		
		$result = SubPlayerInfo( -1, "item", 44472, 1 )
		
		//??????
		
		if $result != 0
		  return
			
		endif
		AddPlayerInfo( -1, "item", 8, 10 )
		$TaskVar = GetPlayerVar( -1, 3348 )
		$TaskVar = $TaskVar + 1
		SetPlayerVar( -1, 3348, $TaskVar )
		$TaskVar = GetPlayerVar( -1, 3348 )
		$TaskVar = 12 - $TaskVar
		BC( "screen", "player", -1, "Exchange succeeds! You can exchange rewards  with common mooncakes ",$TaskVar," times!" )
	}
	//????44473????*10
	function OnOption3(){
		//??????
	$TaskVar = GetPlayerVar( -1, 3348 )
	if $TaskVar >= 12
				BC( "dialogbox", "player", -1, "You've already exchanged 12 times." )
				return
			endif

		//????
	$count = GetPlayerInfo( -1, "item", 44473 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have the Red Bean Mooncake in your bag!" )
			return
		endif	
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//????????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		
		$result = SubPlayerInfo( -1, "item", 44473, 1 )
		
		//??????
		
		if $result != 0
		  return
			
		endif
		AddPlayerInfo( -1, "item", 8, 10 )
		$TaskVar = GetPlayerVar( -1, 3348 )
		$TaskVar = $TaskVar + 1
		SetPlayerVar( -1, 3348, $TaskVar )
		$TaskVar = GetPlayerVar( -1, 3348 )
		$TaskVar = 12 - $TaskVar
		BC( "screen", "player", -1, "Exchange succeeds! You can exchange rewards  with common mooncakes ",$TaskVar," times!" )
	}
	//?????44474,????????*1
  function OnOption4(){
		//??????
	$TaskVar = GetPlayerVar( -1, 3349 )
	if $TaskVar >= 3
				BC( "dialogbox", "player", -1, "You've already exchanged 3 times." )
				return
			endif
		//????
		$count = GetPlayerInfo( -1, "item", 44474 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have the Mooncake Box in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 44474, 1 )
		
		//??????
		
		if $result != 0
			  return
		endif
		AddPlayerInfo( -1, "item", 9, 1 )
			$TaskVar = GetPlayerVar( -1, 3349 )
		$TaskVar = $TaskVar + 1
		SetPlayerVar( -1, 3349, $TaskVar )
		$TaskVar = GetPlayerVar( -1, 3349 )
		$TaskVar = 3 - $TaskVar
		BC( "screen", "player", -1, "Exchange succeeds! You can exchange rewards with Mooncake Boxes ",$TaskVar," times!" )
	}
	//?????????,??????
  function OnOption5(){
	
		//????
		$count1 = GetPlayerInfo( -1, "item", 44470 )
		$count2 = GetPlayerInfo( -1, "item", 44471 )
		$count3 = GetPlayerInfo( -1, "item", 44472 )
		$count4 = GetPlayerInfo( -1, "item", 44473 )
		$count5 = GetPlayerInfo( -1, "item", 44474 )
		if $count1 < 1
			BC( "screen", "player", -1, "You don't have the Egg Yolk Mooncake in your bag." )
			return
	  endif
	  if $count2 < 1
			BC( "screen", "player", -1, "You don't have the Lotus Paste Mooncake in your bag." )
			return
	  endif
	  if $count3 < 1
			BC( "screen", "player", -1, "You don't have the Ham Mooncake in your bag." )
			return
	  endif
	  if $count4 < 1
			BC( "screen", "player", -1, "You don't have the red bean Mooncake in your bag." )
			return
	  endif
	  if $count5 < 1
			BC( "screen", "player", -1, "You don't have the Mooncake Box in your bag." )
			return
	  endif
	  

		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 44470, 1 )
		$result1 = SubPlayerInfo( -1, "item", 44471, 1 )
		$result2 = SubPlayerInfo( -1, "item", 44472, 1 )
		$result3 = SubPlayerInfo( -1, "item", 44473, 1 )
		$result4 = SubPlayerInfo( -1, "item", 44474, 1 )

	
		//??????
		
		if $result != 0		  
			  return
		endif
		if $result1 != 0		  
			  return
		endif
		if $result2 != 0		  
			  return
		endif
		if $result3 != 0		  
			  return
		endif
		if $result4 != 0		  
			  return
		endif

		AddPlayerInfo( -1, "item", 44475, 1 )
		BC( "screen", "player", -1, "Congratulations! You have successfully combined a Mid-Autumn Festival Gift Box!" )
	}