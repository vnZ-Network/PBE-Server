	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/26
	//		Author:???
	//		TaskName:GM-60058
	//		TaskID:???
	//
	//****************************************
	
	function OnUseItem(){
		
		//???????
		$nullitem = GetPlayerInfo(-1, "nullitem", 0)
		if $nullitem < 1
			BC( "screen", "player", -1, "Please leave at least 1 slot blank in your bag." )
			return	
		endif
		
		$n = RandomNumber( 0 , 9 )
		if $n == 0
			$result = AddPlayerInfo( -1, "item" , 6455 , 1 )
		endif
		if $n == 1
			$result = AddPlayerInfo( -1, "item" , 6456 , 1 )
		endif
		if $n == 2
			$result = AddPlayerInfo( -1, "item" , 6463 , 1 )
		endif
		if $n == 3
			$result = AddPlayerInfo( -1, "item" , 6464 , 1 )
		endif
		if $n == 4
			$result = AddPlayerInfo( -1, "item" , 6469 , 1 )
		endif
		if $n == 5
			$result = AddPlayerInfo( -1, "item" , 6483 , 1 )
		endif
		if $n == 6
			$result = AddPlayerInfo( -1, "item" , 6489 , 1 )
		endif
		if $n == 7
			$result = AddPlayerInfo( -1, "item" , 6495 , 1 )
		endif
		if $n == 8
			$result = AddPlayerInfo( -1, "item" , 6046 , 1 )
		endif
		if $n == 9
			$result = AddPlayerInfo( -1, "item" , 6048 , 1 )
		endif
		
		if $result == 0
			SubPlayerInfo( -1 , "item" , 60058 , 1 )
		endif
		
	}