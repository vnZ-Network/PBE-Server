	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-5-30
	//		Author:???
	//		TaskName:
	//		TaskID:?????64471
	//****************************************
	
	function OnUseItem(){
		
		$lv = GetPlayerInfo( -1 , "level" )
		$map = GetPlayerInfo( -1, "mapid" )
		//????
		$time = GetPlayerVar( -1 , 4024 )
		$nowtime = GetSystemTime( "yday" )
		$week = GetSystemTime( "week" )
		//????
		$round = GetPlayerVar( -1 , 3366 )
		
		//????
		if $lv < 120
			BC( "screen", "player", -1, "You need to be at least LV120 to use that..." )
			return
		endif
		//??????
		if $map != 475
		  BC( "screen", "player", -1, "You can only use that in Atlantis!" )
		  return
		endif
		//??????
		if $week != 0
		  BC( "screen", "player", -1, "You can only use that on Sundays!" )
		  return
		endif
	
//----???? = 6*(4*lv-76)*lv*lv/5 + 400*lv*lv-----
//----???? = ???? * 4
		$a = $lv * $lv
		$b = 4 * $lv
		$c = $b - 76
		$d = $c * $a
		$e = 6 * $d
		$f = $e / 5
		$g = 400 * $a
		$exp1 = $f + $g
		$exp2 = $exp1 * 4
//---------------------------------
			//?????
			//????? = ????^2+0.6*????+1000
			//????? = ????? * 480
			$fieldlevel = GetFieldLevel(-1)
			$godexp = $fieldlevel * $fieldlevel
			$b = $fieldlevel * 6
			$b = $b / 10
			$godexp = $godexp + $b
			$godexp = $godexp + 1000
			$godexp = $godexp * 480
			
			
//---------------------------------


		if $time == $nowtime
			if $round < 3
				$info = SubPlayerInfo ( -1 , "item" , 64471 , 1 )
				if  $info != 0
					return
				endif
				if $lv >= 120
					AddPlayerInfo( -1 , "exp" , $exp2 )
				endif
				if $fieldlevel > 0
					AddFieldExp( -1 , $godexp )
				endif
				$round = $round + 1
				SetPlayerVar( -1 , 3366 , $round )
				BC( "screen", "player", -1, " ate a rice dumpling!" )
			else
				BC( "screen", "player", -1, "You've already had 3 rice dumplings!" )
				return
			endif
		else
			$info = SubPlayerInfo ( -1 , "item" , 64471 , 1 )
			if  $info != 0
				return
			endif
			if $lv >= 120
				AddPlayerInfo( -1 , "exp" , $exp2 )
			endif
			if $fieldlevel > 0
				AddFieldExp( -1 , $godexp )
			endif
			SetPlayerVar( -1 , 4024 , $nowtime )
			SetPlayerVar( -1 , 3366 , 1 )
			BC( "screen", "player", -1, " ate a rice dumpling!" )
		endif
		
	}