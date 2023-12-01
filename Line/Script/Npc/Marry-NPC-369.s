	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/07
	//		Author:???
	//		TaskName:Marry-NPC-369.s
	//		TaskID:????(?)
	//
	//****************************************
	
	function OnRequest(){
	
		$result = IsTaskAccept( -1, 1654 )
		if $result != 0
			DisableNpcOption(0)
		endif
	}
	
	function OnOption0(){
	
		$result = IsTaskAccept( -1, 1654 )
		if $result != 0
			return
		endif
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		$info = GetPlayerInfo( -1 , "item" , 12660 )
		if $info > 0
			BC( "dialogbox", "player", -1, "You've received Water of Love." )
			return
		endif
		AddPlayerInfo( -1 , "item" , 12660, 1 )
	}
	
		//??????1?
	function OnOption1(){
	
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 30
			BC( "screen" , "player" , -1 , "You must be at least LV30 to receive it!" )
			return
		endif
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
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
		AddPlayerInfo( -1 , "item" , 63479 , 5 )
	
	}