	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/26
	//		Author:???
	//		TaskName:GM-60057
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
		
		$n = RandomNumber( 0 , 3 )
		if $n == 0
			$result = AddPlayerInfo( -1, "item" , 61044 , 5 )
		endif
		if $n == 1
			$result = AddPlayerInfo( -1, "item" , 61045 , 5 )
		endif
		if $n == 2
			$result = AddPlayerInfo( -1, "item" , 61046 , 5 )
		endif
		if $n == 3
			$result = AddPlayerInfo( -1, "item" , 61047 , 5 )
		endif
		
		if $result == 0
			SubPlayerInfo( -1 , "item" , 60057 , 1 )
		endif
		
	}