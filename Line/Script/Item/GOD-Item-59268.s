	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/12
	//		Author:???
	//		TaskName:GOD-Item-59268.s
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
		$Item = 59268
		$God = 5000
		$player_time = GetPlayerVar( -1, 3958 )
		$today_time = GetSystemTime( "yday" )
		
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
		
		if $player_time == $today_time
			BC( "screen", "player", -1, "Sorry! You can only use Deity Medal (Glitter) once a day." )
			return
		endif
					
		//??????
		$nfo = SubPlayerInfo( -1, "item", $Item, 1 )
		if $nfo != 0
			return
		endif
		
		SetPlayerVar( -1, 3958, $today_time )
		AddPlayerInfo( -1, "godvalue", $God )
		BC( "chat", "player", -1, "You gain ",$God," Deity" )

		}