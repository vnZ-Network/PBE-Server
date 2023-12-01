	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Hero-Item-63503.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
	
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 60
			BC( "screen", "player", -1, "You may not use Longsword of Prayers until LV60." )
			return
		endif
		$a = GetPlayerVar( -1 , 3232 )
		$a = $a + 1
		$time = GetPlayerVar( -1 , 3719 )
		$nowtime = GetSystemTime( "yday" )
		if $nowtime != $time
			if $a < 30
				AddPlayerInfo( -1 , "item" , 64385 , 1  )
				SetPlayerVar( -1 , 3232 , $a )
				SetPlayerVar( -1 , 3719 , $nowtime )
				return
			endif
			if $a == 30
				$nfo = SubPlayerInfo( -1 , "item" , 63503 , 1 )
				if $nfo != 0
					return
				endif
				AddPlayerInfo( -1 , "item" , 64385 , 1  )
				SetPlayerVar( -1 , 3232 , $a )
				SetPlayerVar( -1 , 3719 , $nowtime )
				return
			endif
			if $a > 30
				BC( "screen", "player", -1, "You have used Longsword of Prayers for 30 times. It's powerless now." )
				return
			endif
		else
			BC( "screen", "player", -1, "You have already used Longsword of Prayers today!" )
			return
		endif
	}

