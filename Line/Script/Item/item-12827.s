	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-01-05
	//		Author:???
	//		TaskName:
	//		TaskID:item-12827
	//
	//****************************************
	
	function OnUseItem(){
		
		
		$time = GetPlayerVar( -1 , 4018 )
		$nowtime = GetSystemTime( "yday" )
		
		if $time != $nowtime
			SetPlayerVar( -1, 3367, 0 )
		endif
		
		$cishu = GetPlayerVar( -1 , 3367 )
		
		if $time == $nowtime
			if $cishu > 4
				BC( "screen", "player", -1, "This item only can be used 5 times per day." )
				return
			endif
		endif
		
		
		
		$Sub1 = SubPlayerInfo( -1, "item", 12827, 1 )
		if $Sub1 != 0
			return
		endif
		
		$now = $cishu + 1
		SetPlayerVar( -1 , 4018 , $nowtime )
		AddFieldExp( -1, 10000 )
		SetPlayerVar( -1, 3367 , $now )
		BC( "screen", "player", -1, "You used the Celesoul Emblem, and got 10,000 Exaltation." )
		
		
		
	}