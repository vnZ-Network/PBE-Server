	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-9-18
	//		Author:???
	//		TaskName:
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
		
		$lv = GetPlayerInfo( -1 , "level" )
		$time = GetPlayerVar( -1 , 3924 )
		$nowtime = GetSystemTime( "yday" )
		$nowtime = $nowtime + 1
		$round = GetPlayerVar( -1 , 3925 )
		$round = $round + 1
		
		if $lv < 30
			BC( "screen", "player", -1, "Required level LV30" )
			return
		endif
		
//----------lv*lv*10*12+lv*lv*400-------------
		$a = $lv * $lv
		$b = 120 * $a
		$c = 400 * $a
		$exp1 = $b + $c
	
//----------6*(4*lv-76)*lv*lv/5 + 400*lv*lv-----
		$a = $lv * $lv
		$b = 4 * $lv
		$c = $b - 76
		$d = $c * $a
		$e = 6 * $d
		$f = $e / 5
		$g = 400 * $a
		$exp2 = $f + $g
//---------------------------------
			//?????
			//????? = ????^2+0.6*????+1000
			//????? = ????? * 60
			$fieldlevel = GetFieldLevel(-1)
			$godexp = $fieldlevel * $fieldlevel
			$b = $fieldlevel * 6
			$b = $b / 10
			$godexp = $godexp + $b
			$godexp = $godexp + 1000
			$godexp = $godexp * 60
			
			
//---------------------------------


		if $time == $nowtime
			if $round <= 5
				$info = SubPlayerInfo ( -1 , "item" , 50045 , 1 )
				if  $info != 0
					return
				endif
				if $lv < 45
					AddPlayerInfo( -1 , "exp" , $exp1 )
				else
					AddPlayerInfo( -1 , "exp" , $exp2 )
				endif
				if $fieldlevel > 0
					AddFieldExp( -1 , $godexp )
				endif
				SetPlayerVar( -1 , 3925 , $round )
				BC( "screen", "player", -1, "Use a Platinum EXP Orb once." )
			else
				BC( "screen", "player", -1, "You used the Platinum EXP Orb for 5 times today. You can not use it anymore." )
				return
			endif
		else
			$info = SubPlayerInfo ( -1 , "item" , 50045 , 1 )
			if  $info != 0
				return
			endif
			if $lv < 45
				AddPlayerInfo( -1 , "exp" , $exp1 )
			else
				AddPlayerInfo( -1 , "exp" , $exp2 )
			endif
			if $fieldlevel > 0
				AddFieldExp( -1 , $godexp )
			endif
			SetPlayerVar( -1 , 3924 , $nowtime )
			SetPlayerVar( -1 , 3925 , 1 )
			BC( "screen", "player", -1, "Use a Platinum EXP Orb once." )
		endif
		
	}