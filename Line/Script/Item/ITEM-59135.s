	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/25
	//		Author:???
	//		TaskName:ITEM-59135.s
	//		TaskID:?????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		//????????
		$result = HaveTitle( -1 , 21 )
		if $result != 0
		    BC( "screen", "player", -1, "You have to acquire the Demi-God title to use Worshipper's Piety." )
			return
		endif
		
		//?????????
		$godvalue = GetGodValue( -1 )
		$godvaluemax = GetGodValueMax( -1 )
		if $godvalue == $godvaluemax
			BC( "screen", "player", -1, "Your Deity is at its max. Unable to use Worshipper's Piety!" )
			return
		endif
		
		
		$time = GetPlayerVar( -1 , 3748 )
		$nowtime = GetSystemTime( "yday" )
		$a = GetPlayerVar( -1 , 3248 )
		
		if $time == $nowtime
			BC( "screen", "player", -1, "You have already used Worshipper's Piety today." )
			return
		endif
		
		//???????,????????????
		if $a < 5
			AddPlayerInfo( -1 , "godvalue" , 200 )
			$a = $a + 1
			SetPlayerVar( -1 , 3748 , $nowtime )
			SetPlayerVar( -1 , 3248 , $a)
			BC( "screen" , "player" , -1 , "You have acquired 200 Deity points." )
		else
			BC( "screen", "player", -1, "You have used it 5 times. You can not use it anymore." )
		endif
		
		//???????????
		if $a >= 5
			SubPlayerInfo( -1 , "item" , 59135 , 1 )
		endif
		
			
	}

		
		
