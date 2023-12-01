	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-7-21
	//		Author:??
	//		TaskName:NPC-Flake-2469.s
	//		TaskID:2469 ????????
	//
	//****************************************
	
	function OnRequest(){
	
	}
	function OnOption0(){
		//????60???????
		$level = GetPlayerInfo(-1, "level" )
		if $level < 60
			BC( "screen", "player", -1, "Only LV60 players and above may do that!" )
			return
		endif
		//?????????ID???
		$varID = 3346
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		$week = GetNowWeek()
		$playerweek = GetPlayerVar( -1, $varID )
		if $playerweek == $week
			BC( "screen", "player", -1, "You've already received your Guild Honor Coin this week, come again next week!" )
			return
		endif
		
		$guildlevel = GetPlayerInfo( -1, "guildlevel" )
//		BC( "screen", "player", -1, "GUID:08196000003",$guildlevel,"dsadsa" )
		if $guildlevel == 1
			$num = 10
			$result = SetPlayerVar( -1, $varID, $week )
			if $result == 0
				AddPlayerInfo( -1, "item", 4988, $num )
				return
			endif
		endif			
		if $guildlevel == 2
			$num = 12
			$result = SetPlayerVar( -1, $varID, $week )
			if $result == 0
				AddPlayerInfo( -1, "item", 4988, $num )
				return
			endif
		endif			
		if $guildlevel == 3
			$num = 14
			$result = SetPlayerVar( -1, $varID, $week )
			if $result == 0
				AddPlayerInfo( -1, "item", 4988, $num )
				return
			endif
		endif			
		if $guildlevel == 4
			$num = 16
			$result = SetPlayerVar( -1, $varID, $week )
			if $result == 0
				AddPlayerInfo( -1, "item", 4988, $num )
				return
			endif
		endif			
		if $guildlevel == 5
			$num = 18
			$result = SetPlayerVar( -1, $varID, $week )
			if $result == 0
				AddPlayerInfo( -1, "item", 4988, $num )
				return
			endif
		endif		
		if $guildlevel == 6
			$num = 20
			$result = SetPlayerVar( -1, $varID, $week )
			if $result == 0
				AddPlayerInfo( -1, "item", 4988, $num )
				return
			endif
		endif		
		BC( "screen", "player", -1, "You don't have a guild! Go join a guild first!" )
		return
}
		////????	
	function OnOption1(){
//		4941	?????? 5
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		$num = GetPlayerInfo( -1, "item", 4941 )
		$result = SubPlayerInfo( -1, "item", 4941, $num )
		if $result == 0
			$num = $num * 5
			AddPlayerInfo( -1, "item", 4988, $num )
			BC( "screen", "player", -1, "Successfully exchanged a Radiance Crystal Pack for a Guild Honor Coin!" )
			return
		endif		
		BC( "screen", "player", -1, "You don't have any Radiance Crystal Packs!" )
	}