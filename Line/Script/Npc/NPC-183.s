	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:NPC-183.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
	
		$a = GetSystemTime( "week" )
		if $a != 0
			DisableNpcOption(0)
		endif
		
	}
	
	function OnOption0(){
	
		$y = GetSystemTime( "week" )
		$time = GetSystemTime( "yday" )
		$b = GetPlayerVar(-1,3643)
		
		if $y != 0
			BC( "screen", "player",-1, "Double EXP Stone is available on Sunday." )
			return
		endif
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		$info2 = GetPlayerInfo( -1, "guildid")
		if $info2 == 0
			BC( "screen", "player",-1, "Double EXP Stones are available to guild members." )
			return
		endif
		$info1 = GetPlayerInfo( -1, "guildoffer")
		if $info1 < 100
			BC( "screen", "player",-1, "Your Contribution is less than 100. You cannot acquire the Double EXP Stone." )
			return
		endif
		
		if $b == $time
			BC( "screen", "player",-1, "You have already taken the Double EXP Stone for today." )
			return
		endif
		
		$del = SubPlayerInfo(-1 ,"guildoffer",100 )
		if $del != 0
			return
		endif
		
		AddPlayerInfo( -1, "item",64402,1)
		SetPlayerVar(-1,3643,$time)
	
	}	
	