	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/12
	//		Author:???
	//		TaskName:GOD-Item-59227.s
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
		$Item = 59227
//		$God = 20
//		$player_time = GetPlayerVar( -1, 3957 )
		$today_time = GetSystemTime( "yday" )
//		$player_Num = GetPlayerVar( -1, 3247 )
		$week = GetSystemTime("week")
		$Title = HaveTitle( -1, 21 )
		$player_time = GetPlayerVar(-1,3860)
		$var3331 = GetPlayerVar(-1,3331)
		
		//??1???????1????
		$is_used = GetPlayerVar(-1, 4025 )
		if $is_used == $today_time
			BC( "screen", "player", -1, "The chance to enter World of Tree everyday can be reduced by once a day." )
			return
		endif
				
		if $Title != 0
		   BC( "screen", "player", -1, "Sorry! You must oppose the title of Demigod first to use it." )
			 return
		endif
		
		if $player_time == $today_time
			if $week == 6
				if $var3331 < 1
			   BC( "screen", "player", -1, "You have not used up the participate times for Saturday. Unable to use it." )
				 return
				endif
			endif
		else
			BC( "screen", "player", -1, "You have not used up the participate times for today. Unable to use it." )
			return
		endif
		
		$nfo = SubPlayerInfo( -1, "item", $Item, 1 )
		if $nfo == 0
			if $week == 6
				SetPlayerVar(-1,3331,0)
				BC( "screen", "player", -1, "Succeed to use it. Get another chance to enter World of Tree Garden!" )
			else
				SetPlayerVar(-1,3860,0)
				BC( "screen", "player", -1, "Succeed to use it. Get another chance to enter World of Tree Garden!" )
			endif
			//??????????????????
			SetPlayerVar(-1,4025,$today_time)			
		endif
		
		
		
//		$GodPunish = GetGodPunish( -1 )
//		if $GodPunish > 80
//			BC( "screen", "player", -1, "GUID:06121000006" )
//			return
//		endif
//		if $player_time != $today_time
//			//????????
//			$nfo = SubPlayerInfo( -1, "item", $Item, 1 )
//			if $nfo != 0
//				return
//			endif
//			SetPlayerVar( -1, 3957, $today_time )
//			SetPlayerVar( -1, 3247, 1 )
//			AddPlayerInfo( -1, "godpunish", $God )
//			BC( "chat", "player", -1, "GUID:06121000007",$God,"GUID:06121000008" )
//		else
//			$player_Num = GetPlayerVar( -1, 3247 )
//			if $player_Num >= 3
//				BC( "screen", "player", -1, "GUID:06121000009" )
//				return
//			endif
//			//????????
//			$nfo = SubPlayerInfo( -1, "item", $Item, 1 )
//			if $nfo != 0
//				return
//			endif
//			$playerNum = GetPlayerVar( -1, 3247 )
//			$playerNum = $playerNum + 1
//			SetPlayerVar( -1, 3247, $playerNum )
//			AddPlayerInfo( -1, "godpunish", $God )
//			BC( "chat", "player", -1, "GUID:06121000010",$God,"GUID:06121000011" )
//		endif
		
		}