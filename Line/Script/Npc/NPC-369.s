	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/30
	//		Author:???
	//		TaskName:NPC-201
	//		TaskID:???
	//
	//****************************************
	
	//???????????3910
	//???????????3911
	//???????????3912
	
	
	function OnRequest(){
	
	
	}
	
	
	//??????1?
	function OnOption0(){
	
	
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 30
			BC( "screen" , "player" , -1 , "You must be at least LV30 to receive it!" )
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 3
			BC( "dialogbox" , "player" , -1 , "Sorry. Your bag is full." )
			return
		endif
		
		
		$time = GetSystemTime( "yday" )
		$day = GetPlayerVar( -1 , 4052 )

		if $time != $day
			SetPlayerVar( -1 , 4052 , $time )
		else
			BC( "dialogbox" , "player" , -1 , "You can only take one Berry Heart per day!" )
			return
		endif

		AddPlayerInfo( -1 , "item" , 63479 , 1 )
	
	}
	
