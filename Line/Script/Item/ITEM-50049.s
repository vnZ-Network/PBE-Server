	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/08
	//		Author:???
	//		TaskName:ITEM-50049.s
	//		TaskID:??
	//****************************************
	
	function OnUseItem(){
		
		$time = GetPlayerVar( -1 , 4084 )
		$nowtime = GetSystemTime( "yday" )
		$nowtime = $nowtime + 1
		$round = GetPlayerVar( -1 , 3571 )
		$round = $round + 1
		
		$level = GetPlayerInfo( -1 , "level" ) 
		  if $level < 120
		    BC( "screen", "player", -1, "You need to be at least LV120 to use the item!" )
		    return
		  endif
		
//---------------------------------
			//?????
		$fieldlevel = GetFieldLevel(-1)
			$godexp = 30000000
			
//---------------------------------


		if $time == $nowtime
			if $round <= 2
				$info = SubPlayerInfo ( -1 , "item" , 50049 , 1 )
				if  $info != 0
					return
				endif
				if $fieldlevel > 0
					AddFieldExp( -1 , $godexp )
				endif
				SetPlayerVar( -1 , 3571 , $round )
				BC( "screen", "player", -1, "A Mighty EXP Orb has been used." )
			else
				BC( "screen", "player", -1, "You've used the Mighty EXP Orbs twice today. Cannot use anymore." )
				return
			endif
		else
			$info = SubPlayerInfo ( -1 , "item" , 50049 , 1 )
			if  $info != 0
				return
			endif
			if $fieldlevel > 0
				AddFieldExp( -1 , $godexp )
			endif
			SetPlayerVar( -1 , 4084 , $nowtime )
			SetPlayerVar( -1 , 3571 , 1 )
			BC( "screen", "player", -1, "A Mighty EXP Orb has been used." )
		endif
		
	}