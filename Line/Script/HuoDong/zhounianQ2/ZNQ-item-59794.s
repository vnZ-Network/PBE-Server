	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:????
	//		TaskID:
	//
	//****************************************
	//59790	????????
	//59791	??????
	//59792	????
	//59793	????
	//59794	????
	
	function OnUseItem(){
		
		$time = GetPlayerVar( -1 , 4051 )
		$nowtime = GetSystemTime( "yday" )
		if $time == $nowtime
			BC( "screen", "player", -1, "The Radiant Orb is used once a day." )
			return
		endif
		
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 40
			BC( "screen", "player", -1, "Requires LV40!" )
			return
		endif
		
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag.")
			return
		endif
		
		SetPlayerVar( -1 , 4051 , $nowtime )
		$lv = GetPlayerInfo( -1 , "level" )
		$RankList = GetRankListValue( 1, 499 )		

	//----------------------------------------------------------------------------------------------
	//??3?????????? (186*????*????*????-24421*????*????+1075000*????-15760000)*3   ®-60?????
		$a = $lv * $lv
		$a = $a * $lv
		$a = $a * 186
		$b = $lv * $lv
		$b = $b * 24421
		$c = $a - $b
		$a = 1075000 * $lv
		$c = $c + $a
		$c = $c - 15760000
		$c = $c * 3
		$exp3 = $c
	//??????----------start--------
//		$exp3 = $exp3 * 5
//		$exp3 = $exp3 / 24
	//??????----------end--------
	//$exp0=??60??????
	//$exp1=????60??????
	//$exp2=????60??????
	//$exp3=????60??????
		$exp12 = $exp3 * 85
		$exp2  = $exp12 / 100 
		$exp11 = $exp3 * 70
		$exp1 = $exp11 / 100
		$exp10 = $exp3 * 60
		$exp0 = $exp10 / 100
	//----------6*(4*lv-76)*lv*lv/5 + 400*lv*lv-----  ®-60?????
	//$addexp0=??60??????
	//$addexp1=????60??????
	//$addexp2=????60??????
	//$addexp3=????60??????
		$a = $lv * $lv
		$b = 4 * $lv
		$c = $b - 76
		$d = $c * $a
		$e = 6 * $d
		$f = $e / 5
		$g = 400 * $a
		$addexp3 = $f + $g
		$addexp3 = $addexp3 * 6
		$addexp3 = $addexp3 / 5
	//??????---------start---------
//		$addexp3 = $addexp3 * 5
//		$addexp3 = $addexp3 / 24
	//??????---------end---------
		$addexp12 = $addexp3 * 85
		$addexp2  = $addexp12 / 100 
		$addexp11 = $addexp3 * 70
		$addexp1 = $addexp11 / 100
		$addexp10 = $addexp3 * 60
		$addexp0 = $addexp10 / 100
	//-----------------------------------------------------------		
	//??????
		$result = SubPlayerInfo( -1 , "item" , 59794 , 1 )
		if $result != 0
			return
		endif
//		BC( "screen", "player", -1, "1= " , $exp0 )
//		BC( "screen", "player", -1, "2= " , $exp1 )
//		BC( "screen", "player", -1, "3= " , $exp2 )
//		BC( "screen", "player", -1, "4= " , $exp3 )
//		BC( "screen", "player", -1, "5= " , $addexp0 )
//		BC( "screen", "player", -1, "6= " , $addexp1 )
//		BC( "screen", "player", -1, "7= " , $addexp2 )
//		BC( "screen", "player", -1, "8= " , $addexp3 )
		if $lv < 60
		
			if $RankList < 75
				AddPlayerInfo( -1 , "exp" , $exp0 )
				BC( "screen", "player", -1, "Obtain EXP " , $exp0 )
			endif
			if $RankList >= 75
				if $RankList < 90
					AddPlayerInfo( -1 , "exp" , $exp1 )
					BC( "screen", "player", -1, "Obtain EXP " , $exp1 )
				endif
			endif
			if $RankList >= 90
				if $RankList < 100
					AddPlayerInfo( -1 , "exp" , $exp2 )
					BC( "screen", "player", -1, "Obtain EXP " , $exp2 )
				endif
			endif
			if $RankList >= 100
				AddPlayerInfo( -1 , "exp" , $exp3 )
				BC( "screen", "player", -1, "Obtain EXP " , $exp3 )
			endif
			
		else
		
			if $RankList < 75
				AddPlayerInfo( -1 , "exp" , $addexp0 )
				BC( "screen", "player", -1, "Obtain EXP " , $addexp0 )
			endif
			if $RankList >= 75
				if $RankList < 90
					AddPlayerInfo( -1 , "exp" , $addexp1 )
					BC( "screen", "player", -1, "Obtain EXP " , $addexp1 )
				endif
			endif
			if $RankList >= 90
				if $RankList < 100
					AddPlayerInfo( -1 , "exp" , $addexp2 )
					BC( "screen", "player", -1, "Obtain EXP " , $addexp2 )
				endif
			endif
			if $RankList >= 100
				AddPlayerInfo( -1 , "exp" , $addexp3 )
				BC( "screen", "player", -1, "Obtain EXP " , $addexp3 )
			endif
			
		endif
		//--------------????--------------------------------------------------------------------------------

		$Rad1 = RandomNumber( 1, 10000 )
		if $Rad1 <= 15
			AddPlayerInfo( -1, "item", 64508, 1 )
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "servergroup", -1, "The hero ",#name," opened a Radiant Orb and got the rare item: LV4 Gem Chest." )
		endif
		if $Rad1 > 15
			if $Rad1 <= 16
				$temp = GetGlobalVar(6)
				if $temp == 0
					AddPlayerInfo( -1, "item", 64248, 1 )
					#name = GetPlayerInfo( -1, "name" )
					BC( "screen", "servergroup", -1, "The hero ",#name," opened a Radiant Orb and got the rare item: LV5 Gem Chest." )
					SetGlobalVar( 6, 1 )
				endif
			endif
		endif
		if $Rad1 > 16
			if $Rad1 <= 36
				$temp1 = GetGlobalVar(7)
				if $temp1 < 10
					AddPlayerInfo( -1, "item", 63768, 1 )
					#name = GetPlayerInfo( -1, "name" )
					BC( "screen", "servergroup", -1, "The hero ",#name," opened a Radiant Orb and got the rare item: Platinum Noble Card." )
					$temp1 = GetGlobalVar(7)
					$temp1 = $temp1 + 1
					SetGlobalVar( 7, $temp1 )
				endif
			endif
		endif
		
	}