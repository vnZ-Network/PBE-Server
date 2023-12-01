	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/06/12
	//		Author:???
	//		TaskName:Item-63762.s
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
		$Item = 63762
		$God = 2064
		
		$Title = HaveTitle( -1, 21 )
		if $Title != 0
		   BC( "screen", "player", -1, "Sorry! You can't use it unless you have the Demigod or higher title." )
			 return
		endif
		$godvalue = GetGodValue( -1 )
		$godvaluemax = GetGodValueMax( -1 )
		if $godvalue == $godvaluemax
			BC( "screen", "player", -1, "Sorry! Your Deity is at its maximum. Unable to use." )
			return
		endif
		
		$time = GetPlayerVar( -1 , 4066 )
		$nowtime = GetSystemTime( "yday" )
		$nowtime = $nowtime + 1
		$round = GetPlayerVar( -1 , 4067 )
		$round = $round + 1
		
		if $nowtime != $time
			$result = SubPlayerInfo( -1 , "item" , 63762 , 1 )
			if $result != 0
				return
			endif
			AddPlayerInfo( -1, "godvalue", $God )
			BC( "screen", "player", -1, "You gain ",$God," Deity" )
				BC( "chat", "player", -1, "You gain ",$God," Deity" )
			SetPlayerVar( -1 , 4067 , 1 )
			SetPlayerVar( -1 , 4066 , $nowtime )
			return
		else
			if $round < 6
				$result = SubPlayerInfo( -1 , "item" , 63762 , 1 )
				if $result != 0
					return
				endif
				AddPlayerInfo( -1, "godvalue", $God )
				BC( "screen", "player", -1, "You gain ",$God," Deity" )
				BC( "chat", "player", -1, "You gain ",$God," Deity" )
				SetPlayerVar( -1 , 4067 , $round )
				return
			else
				BC( "screen", "player", -1, "You've already used Deity Badge 5 times." )
				BC( "chat", "player", -1, "You've already used Deity Badge 5 times." )
				return
			endif
		endif		
		

		}