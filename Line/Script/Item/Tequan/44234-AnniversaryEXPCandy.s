	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/16
	//		Author:???(??,??,??)
	//		TaskName:?????
	//		TaskID:44234-AnniversaryEXPCandy.s
	//
	//****************************************
	
  function OnUseItem(){

	//???? ???? ???? 3330 ???? 4019
	//??ID ??????? 44234
 
  $lv = GetPlayerInfo(-1, "level" )
	$RankList = GetRankListValue( 1, 499 )		
  $number = GetPlayerVar(-1, 3330)
  $Now_Yday = GetSystemTime("yday")
  $day = GetPlayerVar(-1, 4019)
  
  //????????,40??????????
  if $lv < 40
     BC("screen", "player", -1, "You must reach LV60 before you can use EXP Candy!")
     return
  endif

  //??????2?
  if $day == $Now_Yday
	  if $number >= 2
	     BC("screen", "player", -1, "You can only use two Anniversary Celebration EXP Candies per day.")
	     return
	  endif
  endif
    
	//--------------------------------------------???????????????59792--------------------------------------------------
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
		$exp3 = $exp3 * 5
		$exp3 = $exp3 / 24
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
		$addexp3 = $addexp3 * 5
		$addexp3 = $addexp3 / 24
	//??????---------end---------
		$addexp12 = $addexp3 * 85
		$addexp2  = $addexp12 / 100 
		$addexp11 = $addexp3 * 70
		$addexp1 = $addexp11 / 100
		$addexp10 = $addexp3 * 60
		$addexp0 = $addexp10 / 100
	//-----------------------------------------------------------		
    
  //-----????-------
  $del_count = SubPlayerInfo(-1, "item", 44234, 1)
  if $del_count != 0
     return
  endif
  
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
		
//		//?????
//		//????? = ????^2+0.6*????+1000
//		//????? = ????? * 8
//		$fieldlevel = GetFieldLevel(-1)
//		$godexp = $fieldlevel * $fieldlevel
//		$b = $fieldlevel * 6
//		$b = $b / 10
//		$godexp = $godexp + $b
//		$godexp = $godexp + 1000
//		$godexp = $godexp * 8
//		if  $fieldlevel > 0
//			AddFieldExp( -1 , $godexp )	
//		endif

  //??????
   if $day != $Now_Yday
     SetPlayerVar(-1, 3330, 1)
     SetPlayerVar(-1, 4019, $Now_Yday)
  else	  
     $number = $number + 1
     SetPlayerVar(-1, 3330, $number)
  endif
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )


}	