	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/6/25
	//		Author:??
	//		TaskName:item-kelebei-63764.s
	//		TaskID:??????
	//
	//****************************************
	
	
	//??????
	function OnUseItem(){
		
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 40
			BC( "screen", "player", -1, "You are lower than LV40. Cannot use a Mind Crystal." )
			return
		endif
		
	
	
//-------------------------------??????---------------------------------------------

	//???????,??????
		
		$lv = GetPlayerInfo( -1 , "level" )
		$time = GetPlayerVar( -1 , 3949 )
		$nowtime = GetSystemTime( "yday" )
		$nowtime = $nowtime + 1
		$round = GetPlayerVar( -1 , 3260 )
		$round = $round + 1
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
		
	//$exp0=??60??????
	//$exp1=????60??????
	//$exp2=????60??????
	//$exp3=????60??????
		
		$exp12 = $exp3 * 85
		$exp2  = $exp12 / 100 
		$exp11 = $exp3 * 7
		$exp1 = $exp11 / 10
		$exp10 = $exp3 * 6
		$exp0 = $exp10 / 10
		
		
	
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
		
		$addexp12 = $addexp3 * 85
		$addexp2  = $addexp12 / 100 
		$addexp11 = $addexp3 * 7
		$addexp1 = $addexp11 / 10
		$addexp10 = $addexp3 * 6
		$addexp0 = $addexp10 / 10
	//-----------------------------------------------------------		
			
	
	
	//??????????????(???)
	if $nowtime != $time
		$result = SubPlayerInfo( -1 , "item" , 63764 , 1 )
		if $result != 0
			return
		endif
		
		if $lv < 60
			if $RankList < 50
				AddPlayerInfo( -1 , "exp" , $exp0 )
			endif
			
			if $RankList >= 50
				if $RankList <= 69
					AddPlayerInfo( -1 , "exp" , $exp1 )
				endif
			endif
			
			if $RankList >= 70
				if $RankList <= 89
					AddPlayerInfo( -1 , "exp" , $exp2 )
				endif
			endif
			
			if $RankList >= 90
				AddPlayerInfo( -1 , "exp" , $exp3 )
			endif
		else
		
			if $RankList < 50
				AddPlayerInfo( -1 , "exp" , $addexp0 )
			endif
			
			if $RankList >= 50
				if $RankList <= 69
					AddPlayerInfo( -1 , "exp" , $addexp1 )
				endif
			endif
			
			if $RankList >= 70
				if $RankList <= 89
					AddPlayerInfo( -1 , "exp" , $addexp2 )
				endif
			endif
			
			if $RankList >= 90
				AddPlayerInfo( -1 , "exp" , $addexp3 )
			endif
			
		endif
		SetPlayerVar( -1 , 3949 , $nowtime )
		SetPlayerVar( -1 , 3260 , 1 )
		//??????
		//$rand = RandomNumber ( 0, 1 )
		//if $rand == 0
		//	PlayEffect( -1 , "common\huodong\tx_zhounianyanhua1.ini" , 1 )
		//	return
		//else
		//	PlayEffect( -1 , "common\huodong\tx_zhounianyanhua2.ini" , 1 )
		//	return
		//endif
		
		//PlayEffect( -1 , "common\story\lightpillar4\fire\tx_lightpillar4_fire.ini" , 1 )
		//PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" , 1 )
		//PlayEffect( -1 , "common\Yanhua\tx_leiyu\tx_leiyu.ini" , 1 )
		//PlayEffect( -1 , "common\Yanhua\tx_xuanli4\tx_xuanli4.ini" , 1 )
		return
			
	//??????????????(????????)
	
	else
		if $round > 5
			BC( "screen", "player", -1, "Mind Crystal can only be used 5 times a day. " )
			return
		endif
	
	
	//??????
		$result = SubPlayerInfo( -1 , "item" , 63764 , 1 )
		if $result != 0
			return
		endif
		
		if $lv < 60
			if $RankList < 50
				AddPlayerInfo( -1 , "exp" , $exp0 )
			endif
			
			if $RankList >= 50
				if $RankList <= 69
					AddPlayerInfo( -1 , "exp" , $exp1 )
				endif
			endif
			
			if $RankList >= 70
				if $RankList <= 89
					AddPlayerInfo( -1 , "exp" , $exp2 )
				endif
			endif
			
			if $RankList >= 90
				AddPlayerInfo( -1 , "exp" , $exp3 )
			endif
		else
		
			if $RankList < 50
				AddPlayerInfo( -1 , "exp" , $addexp0 )
			endif
			
			if $RankList >= 50
				if $RankList <= 69
					AddPlayerInfo( -1 , "exp" , $addexp1 )
				endif
			endif
			
			if $RankList >= 70
				if $RankList <= 89
					AddPlayerInfo( -1 , "exp" , $addexp2 )
				endif
			endif
			
			if $RankList >= 90
				AddPlayerInfo( -1 , "exp" , $addexp3 )
			endif
			
		endif
	
		SetPlayerVar( -1 , 3260 , $round )
		//??????
		//$rand = RandomNumber ( 0, 1 )
		//if $rand == 0
		//	PlayEffect( -1 , "common\huodong\tx_zhounianyanhua1.ini" , 1 )
		//	return
		//else
		//	PlayEffect( -1 , "common\huodong\tx_zhounianyanhua2.ini" , 1 )
		//	return
		//endif
		
		//PlayEffect( -1 , "common\story\lightpillar4\fire\tx_lightpillar4_fire.ini" , 1 )
		//PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" , 1 )
		//PlayEffect( -1 , "common\Yanhua\tx_leiyu\tx_leiyu.ini" , 1 )
		//PlayEffect( -1 , "common\Yanhua\tx_xuanli4\tx_xuanli4.ini" , 1 )
		return
	endif
	
	
	
	}
	
	
	
