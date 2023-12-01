	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/12
	//		Author:???
	//		TaskName:GOD-Item-59224.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		$Item = 59224
		$God = 500
		$player_time = GetPlayerVar( -1, 3960 )
		$today_time = GetSystemTime( "yday" )
		$player_Num = GetPlayerVar( -1, 3267 )
		
		$Title = HaveTitle( -1, 21 )
		if $Title != 0
		   BC( "screen", "player", -1, "Sorry! To use this you must have a Demigod or higher title." )
			 return
		endif
		
		$godvalue = GetGodValue( -1 )
		$godvaluemax = GetGodValueMax( -1 )
		if $godvalue == $godvaluemax
			BC( "screen", "player", -1, "Sorry! Your Deity is at its maximum. Unable to use." )
			return
		endif

		if $player_time != $today_time
			//????????
			$nfo = SubPlayerInfo( -1, "item", $Item, 1 )
			if $nfo != 0
				return
			endif
			SetPlayerVar( -1, 3960, $today_time )
			SetPlayerVar( -1, 3267, 1 )
			AddPlayerInfo( -1, "godvalue", $God )
			BC( "chat", "player", -1, "You gain ",$God," Deity" )
		else
			$player_Num = GetPlayerVar( -1, 3267 )
			if $player_Num >= 4
				BC( "screen", "player", -1, "Sorry! You can only use 4 Deity Badges a day." )
				return
			endif
			//????????
			$nfo = SubPlayerInfo( -1, "item", $Item, 1 )
			if $nfo != 0
				return
			endif
			$playerNum = GetPlayerVar( -1, 3267 )
			$playerNum = $playerNum + 1
			SetPlayerVar( -1, 3267, $playerNum )
			AddPlayerInfo( -1, "godvalue", $God )
			BC( "chat", "player", -1, "You gain ",$God," Deity" )
		endif
		
		}