	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/28
	//		Author:???
	//		TaskName:ITEM-59136.s
	//		TaskID:?????
	//
	//****************************************
	
	
	function OnUseItem(){
		
	
		$lv = GetPlayerInfo( -1 , "level" )
		$addexp1 = $lv * $lv
		$addexp2 = $lv * 4
		$addexp3 = $addexp2 - 76
		$addexp = $addexp1 * $addexp3
		
		//?????
		//????? = ????^2+0.6*????+1000
		//????? = ????? * 30
		$fieldlevel = GetFieldLevel(-1)
		$godexp = $fieldlevel * $fieldlevel
		$b = $fieldlevel * 6
		$b = $b / 10
		$godexp = $godexp + $b
		$godexp = $godexp + 1000
		$godexp = $godexp * 30
		
		$time = GetPlayerVar( -1 , 3249 )
		$nowtime = GetSystemTime( "yday" )
		
		if $time != $nowtime
			$num = GetPlayerInfo( -1 , "weekliveness" )
		
			if $num < 500
				BC( "screen", "player", -1, "Your Zeal is lower than 500." )
				return
			else
				$result = SubPlayerInfo( -1 , "weekliveness" , 500  )
				BC( "screen", "player", -1, "Your Zeal has been reduced by 500 points." )
			endif
			$nfo = SubPlayerInfo( -1 , "item" , 59136 , 1 )
			if $nfo != 0
				return
			endif
			AddPlayerInfo( -1 , "exp" , $addexp )
			
			if  $fieldlevel > 0
				AddFieldExp( -1 , $godexp )	
			endif
			
			SetPlayerVar( -1 , 3249 , $nowtime )
		else
			BC( "screen", "player", -1, "You have used Siv's Favor today." )
			return
		endif
		
		
		
	}

		
		
