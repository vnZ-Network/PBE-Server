	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/6
	//		Author:??
	//		TaskName:NPC-zhounianlipao.s
	//		TaskID:??????npc
	//
	//****************************************
	
	function OnRequest(){
	
//????????????,????2
	$laopaodan = GetPlayerInfo( -1 , "item" , 63685 )
	if $laopaodan < 1
		DisableNpcOption(2)
	endif
	//???????????
	DisableNpcOption(1)	
		
	}
//-------------------------------???????????---------------------------------------------	
	function OnOption0(){
		
		//??????40???
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 40
			BC( "screen", "player", -1, "You are lower than LV40. Cannot ignite the firework. " )
			return
		endif
		
		
		
		$itemcount = GetPlayerInfo( -1 , "item" , 59242 )
		if $itemcount <= 0
			BC( "dialogbox" , "player", -1, "You have no ({#ffff002a=Firework of Angel's blessing#}). \nYou can join in the ({#ffff002a=Blessing of Angel#}) Event at {#ffff002a=20:30-22:00 in every night#}, and receive the Firework in the event. Releases the firework to obtains great many EXP!" )
			return
		endif
		
		
		
		
	//???????,??????
		
		$lv = GetPlayerInfo( -1 , "level" )
		$time = GetPlayerVar( -1 , 3948 )
		$nowtime = GetSystemTime( "yday" )
		$nowtime = $nowtime + 1
		$round = GetPlayerVar( -1 , 3259 )
		$round = $round + 1
		$RankList = GetRankListValue( 1, 499 )		

	
	
	//----------------------------------------------------------------------------------------------
	//??????????? 186*????*????*????-24421*????*????+1075000*????-15760000
	
	
		$a = $lv * $lv
		$a = $a * $lv
		$a = $a * 186
		$b = $lv * $lv
		$b = $b * 24421
		$c = $a - $b
		$a = 1075000 * $lv
		$c = $c + $a
		$c = $c - 15760000
	
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
	//----------------------------------------------------------------------------------------------	
		
	
	//----------6*(4*lv-76)*lv*lv/5 + 400*lv*lv-----
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
		$addexp3 = $addexp3 * 2
		$addexp3 = $addexp3 / 5
		
		$addexp12 = $addexp3 * 85
		$addexp2  = $addexp12 / 100 
		$addexp11 = $addexp3 * 7
		$addexp1 = $addexp11 / 10
		$addexp10 = $addexp3 * 6
		$addexp0 = $addexp10 / 10
			
	//---------------------------------
		$exp0a = $exp0 / 100
		$exp1a = $exp1 / 100
		$exp2a = $exp2 / 100
		$exp3a = $exp3 / 100
		
		$addexp0a = $addexp0 / 100
		$addexp1a = $addexp1 / 100
		$addexp2a = $addexp2 / 100
		$addexp3a = $addexp3 / 100
		
	//??$exp0?5%??($exp0add5)
		$exp0b = $exp0a * 5
		$exp0add5 = $exp0 + $exp0b
	
	//??$exp0?10%??($exp0add10)
		$exp0c = $exp0a * 10
		$exp0add10 = $exp0 + $exp0c
		
	//??$exp1?5%??($exp1add5)
		$exp1b = $exp1a * 5
		$exp1add5 = $exp1 + $exp1b
	
	//??$exp1?10%??($exp1add10)
		$exp1c = $exp1a * 10
		$exp1add10 = $exp1 + $exp1c
	
	//??$exp2?5%??($exp2add5)
		$exp2b = $exp2a * 5
		$exp2add5 = $exp2 + $exp2b
	
	//??$exp2?10%??($exp2add10)
		$exp2c = $exp2a * 10
		$exp2add10 = $exp2 + $exp2c
	
	//??$exp3?5%??($exp3add5)
		$exp3b = $exp3a * 5
		$exp3add5 = $exp3 + $exp3b
	
	//??$exp3?10%??($exp3add10)
		$exp3c = $exp3a * 10
		$exp3add10 = $exp3 + $exp3c
		
	//??$addexp0?5%??($addexp0add5)
		$addexp0b = $addexp0a * 5
		$addexp0add5 = $addexp0 + $addexp0b
	
	//??$addexp0?10%??($addexp0add10)
		$addexp0c = $addexp0a * 10
		$addexp0add10 = $addexp0 + $addexp0c
		
	//??$addexp1?5%??($addexp1add5)
		$addexp1b = $addexp1a * 5
		$addexp1add5 = $addexp1 + $addexp1b
	
	//??$addexp1?10%??($addexp1add10)
		$addexp1c = $addexp1a * 10
		$addexp1add10 = $addexp1 + $addexp1c
		
	//??$addexp2?5%??($addexp2add5)
		$addexp2b = $addexp2a * 5
		$addexp2add5 = $addexp2 + $addexp2b
	
	//??$addexp2?10%??($addexp2add10)
		$addexp2c = $addexp2a * 10
		$addexp2add10 = $addexp2 + $addexp2c
	
	//??$addexp3?5%??($addexp3add5)
		$addexp3b = $addexp3a * 5
		$addexp3add5 = $addexp3 + $addexp3b
	
	//??$addexp3?10%??($addexp3add10)
		$addexp3c = $addexp3a * 10
		$addexp3add10 = $addexp3 + $addexp3c
	
	//??????????????(???)
	if $nowtime != $time
		$result = SubPlayerInfo( -1 , "item" , 59242 , 1 )
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
		SetPlayerVar( -1 , 3948 , $nowtime )
		SetPlayerVar( -1 , 3259 , 1 )
	
	//??????
		//$rand = RandomNumber ( 0, 1 )
		//if $rand == 0
		//	PlayEffect( -1 , "common\huodong\tx_zhounianyanhua1.ini" , 1 )
		//	return
		//else
		//	PlayEffect( -1 , "common\huodong\tx_zhounianyanhua2.ini" , 1 )
		//	return
		//endif
		PlayEffect( -1 , "common\story\lightpillar4\fire\tx_lightpillar4_fire.ini" , 1 )
		PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" , 1 )
		PlayEffect( -1 , "common\Yanhua\tx_ptyanhua\tx_ptyanhua_03.ini" , 1 )
		return
		
			
	//??????????????(????????)
	
	else
		if $round > 5
			BC( "screen", "player", -1, "You've already lit 5 Fireworks today. Come back tomorrow!" )
			return
		endif
	
	
	//????
		$result = SubPlayerInfo( -1 , "item" , 59242 , 1 )
		if $result != 0
			return
		endif
		
	//????????(??5%??)
		
		if $round == 2
			if $lv < 60
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $exp0add5 )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $exp1add5 )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $exp2add5 )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $exp3add5 )
				endif
			else
		
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $addexp0add5 )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $addexp1add5 )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $addexp2add5 )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $addexp3add5 )
				endif
			endif
			SetPlayerVar( -1 , 3259 , $round )
			
		//??????
			//$rand = RandomNumber ( 0, 1 )
			//if $rand == 0
			//	PlayEffect( -1 , "common\huodong\tx_zhounianyanhua1.ini" , 1 )
			//	return
			//else
			//	PlayEffect( -1 , "common\huodong\tx_zhounianyanhua2.ini" , 1 )
			//	return
			//endif
			
			PlayEffect( -1 , "common\story\lightpillar4\fire\tx_lightpillar4_fire.ini" , 1 )
			PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" , 1 )
			PlayEffect( -1 , "common\Yanhua\tx_ptyanhua\tx_ptyanhua_03.ini" , 1 )
			return
		endif
			
		
		
	//????3-5???,(??10%??)
	
		if $lv < 60
			if $RankList < 50
				AddPlayerInfo( -1 , "exp" , $exp0add10 )
			endif
		
			if $RankList >= 50
				if $RankList <= 69
					AddPlayerInfo( -1 , "exp" , $exp1add10 )
				endif
			endif
		
			if $RankList >= 70
				if $RankList <= 89
					AddPlayerInfo( -1 , "exp" , $exp2add10 )
				endif
			endif
		
			if $RankList >= 90
				AddPlayerInfo( -1 , "exp" , $exp3add10 )
			endif
		else
	
			if $RankList < 50
				AddPlayerInfo( -1 , "exp" , $addexp0add10 )
			endif
		
			if $RankList >= 50
				if $RankList <= 69
					AddPlayerInfo( -1 , "exp" , $addexp1add10 )
				endif
			endif
		
			if $RankList >= 70
				if $RankList <= 89
					AddPlayerInfo( -1 , "exp" , $addexp2add10 )
				endif
			endif
		
			if $RankList >= 90
				AddPlayerInfo( -1 , "exp" , $addexp3add10 )
			endif
		endif
		SetPlayerVar( -1 , 3259 , $round )
		//??????
		//$rand = RandomNumber ( 0, 1 )
		//if $rand == 0
		//	PlayEffect( -1 , "common\huodong\tx_zhounianyanhua1.ini" , 1 )
		//	return
		//else
		//	PlayEffect( -1 , "common\huodong\tx_zhounianyanhua2.ini" , 1 )
		//	return
		//endif
		PlayEffect( -1 , "common\story\lightpillar4\fire\tx_lightpillar4_fire.ini" , 1 )
		PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" , 1 )
		PlayEffect( -1 , "common\Yanhua\tx_ptyanhua\tx_ptyanhua_03.ini" , 1 )
		return
	endif
	
	
	
	}
	
	
	
//-------------------------------?????????????---------------------------------------------


	function OnOption1(){
		
		//??40??????
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 40
			BC( "screen", "player", -1, "You are lower than LV40. Cannot ignite the firework. " )
			return
		endif
		
		
		$itemcount = GetPlayerInfo( -1 , "item" , 59233 )
		if $itemcount <= 0
			BC( "dialogbox" , "player", -1, "You don't have any Ode to Angels Fireworks.\nYou can take part in the Ode to Angels event from {#ffff002a=20:30 - 22:00 on Saturdays#} to get them. Light it to get as much as 3 times the amount of EXP than usual!" )
			return
		endif
		
		
		
		
	//???????,??????
		
		$lv = GetPlayerInfo( -1 , "level" )
		$time = GetPlayerVar( -1 , 3949 )
		$nowtime = GetSystemTime( "yday" )
		$nowtime = $nowtime + 1
		$round = GetPlayerVar( -1 , 3260 )
		$round = $round + 1
		$RankList = GetRankListValue( 1, 499 )		

	//----------------------------------------------------------------------------------------------
	//??3?????????? (186*????*????*????-24421*????*????+1075000*????-15760000)*3
	
	
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
		
		
	
	//----------6*(4*lv-76)*lv*lv/5 + 400*lv*lv-----
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
			
			
	//---------------------------------
		$exp0a = $exp0 / 100
		$exp1a = $exp1 / 100
		$exp2a = $exp2 / 100
		$exp3a = $exp3 / 100
		
		$addexp0a = $addexp0 / 100
		$addexp1a = $addexp1 / 100
		$addexp2a = $addexp2 / 100
		$addexp3a = $addexp3 / 100
		
	//??$exp0?5%??($exp0add5)
		$exp0b = $exp0a * 5
		$exp0add5 = $exp0 + $exp0b
	
	//??$exp0?10%??($exp0add10)
		$exp0c = $exp0a * 10
		$exp0add10 = $exp0 + $exp0c
		
	//??$exp1?5%??($exp1add5)
		$exp1b = $exp1a * 5
		$exp1add5 = $exp1 + $exp1b
	
	//??$exp1?10%??($exp1add10)
		$exp1c = $exp1a * 10
		$exp1add10 = $exp1 + $exp1c
	
	//??$exp2?5%??($exp2add5)
		$exp2b = $exp2a * 5
		$exp2add5 = $exp2 + $exp2b
	
	//??$exp2?10%??($exp2add10)
		$exp2c = $exp2a * 10
		$exp2add10 = $exp2 + $exp2c
	
	//??$exp3?5%??($exp3add5)
		$exp3b = $exp3a * 5
		$exp3add5 = $exp3 + $exp3b
	
	//??$exp3?10%??($exp3add10)
		$exp3c = $exp3a * 10
		$exp3add10 = $exp3 + $exp3c
		
	//??$addexp0?5%??($addexp0add5)
		$addexp0b = $addexp0a * 5
		$addexp0add5 = $addexp0 + $addexp0b
	
	//??$addexp0?10%??($addexp0add10)
		$addexp0c = $addexp0a * 10
		$addexp0add10 = $addexp0 + $addexp0c
		
	//??$addexp1?5%??($addexp1add5)
		$addexp1b = $addexp1a * 5
		$addexp1add5 = $addexp1 + $addexp1b
	
	//??$addexp1?10%??($addexp1add10)
		$addexp1c = $addexp1a * 10
		$addexp1add10 = $addexp1 + $addexp1c
		
	//??$addexp2?5%??($addexp2add5)
		$addexp2b = $addexp2a * 5
		$addexp2add5 = $addexp2 + $addexp2b
	
	//??$addexp2?10%??($addexp2add10)
		$addexp2c = $addexp2a * 10
		$addexp2add10 = $addexp2 + $addexp2c
	
	//??$addexp3?5%??($addexp3add5)
		$addexp3b = $addexp3a * 5
		$addexp3add5 = $addexp3 + $addexp3b
	
	//??$addexp3?10%??($addexp3add10)
		$addexp3c = $addexp3a * 10
		$addexp3add10 = $addexp3 + $addexp3c
	
	//??????????????(???)
	if $nowtime != $time
		$result = SubPlayerInfo( -1 , "item" , 59233 , 1 )
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
		
		PlayEffect( -1 , "common\story\lightpillar4\fire\tx_lightpillar4_fire.ini" , 1 )
		PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" , 1 )
		PlayEffect( -1 , "common\Yanhua\tx_leiyu\tx_leiyu.ini" , 1 )
		PlayEffect( -1 , "common\Yanhua\tx_xuanli4\tx_xuanli4.ini" , 1 )
		return
			
	//??????????????(????????)
	
	else
		if $round > 5
			BC( "screen", "player", -1, "You've already lit 5 Fireworks today. Come back tomorrow!" )
			return
		endif
	
	
	//????
		$result = SubPlayerInfo( -1 , "item" , 59233 , 1 )
		if $result != 0
			return
		endif
		
	//????????(??5%??)
		
		if $round == 2
			if $lv < 60
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $exp0add5 )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $exp1add5 )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $exp2add5 )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $exp3add5 )
				endif
			else
		
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $addexp0add5 )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $addexp1add5 )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $addexp2add5 )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $addexp3add5 )
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
			PlayEffect( -1 , "common\story\lightpillar4\fire\tx_lightpillar4_fire.ini" , 1 )
			PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" , 1 )
			PlayEffect( -1 , "common\Yanhua\tx_leiyu\tx_leiyu.ini" , 1 )
			PlayEffect( -1 , "common\Yanhua\tx_xuanli4\tx_xuanli4.ini" , 1 )
			return
		endif
			
		
		
	//????3-5???,(??10%??)
	
		if $lv < 60
			if $RankList < 50
				AddPlayerInfo( -1 , "exp" , $exp0add10 )
			endif
		
			if $RankList >= 50
				if $RankList <= 69
					AddPlayerInfo( -1 , "exp" , $exp1add10 )
				endif
			endif
		
			if $RankList >= 70
				if $RankList <= 89
					AddPlayerInfo( -1 , "exp" , $exp2add10 )
				endif
			endif
		
			if $RankList >= 90
				AddPlayerInfo( -1 , "exp" , $exp3add10 )
			endif
		else
	
			if $RankList < 50
				AddPlayerInfo( -1 , "exp" , $addexp0add10 )
			endif
		
			if $RankList >= 50
				if $RankList <= 69
					AddPlayerInfo( -1 , "exp" , $addexp1add10 )
				endif
			endif
		
			if $RankList >= 70
				if $RankList <= 89
					AddPlayerInfo( -1 , "exp" , $addexp2add10 )
				endif
			endif
		
			if $RankList >= 90
				AddPlayerInfo( -1 , "exp" , $addexp3add10 )
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
		
		PlayEffect( -1 , "common\story\lightpillar4\fire\tx_lightpillar4_fire.ini" , 1 )
		PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" , 1 )
		PlayEffect( -1 , "common\Yanhua\tx_leiyu\tx_leiyu.ini" , 1 )
		PlayEffect( -1 , "common\Yanhua\tx_xuanli4\tx_xuanli4.ini" , 1 )
		return
	endif
	
	
	
	}
	
	
	
//--------------------------------?????????????(????????????????)------------------------------

	function OnOption2(){
		
		$itemcount = GetPlayerInfo( -1 , "item" , 63685 )
		$Now_Yday =  GetSystemTime( "yday" )
		$Now_Yday = $Now_Yday + 1
		$Now_Yday_1 = GetPlayerVar( -1, 3981 )
		$rund = GetPlayerVar( -1, 3273 )
		$rund = $rund + 1
		
		if $itemcount <= 0
			return
		endif
		
		
	if $Now_Yday == $Now_Yday_1
		if $rund > 10
			BC( "screen", "player", -1, "You can light 10 Fireworks a day.")
			return
		else
			$result = SubPlayerInfo( -1 , "item" , 63685 , 1 )
			if $result == 0
				
				
				//????
				$random = RandomNumber( 1 , 90 )
				if $random >= 1
					if $random <= 30
						PlayEffect( -1 , "common\huodong\xinnianlipao\tx_xinnianlipao1.ini" , 2 )
					endif
				endif
				
				if $random >= 31
					if $random <= 60
						PlayEffect( -1 , "common\huodong\xinnianlipao\tx_xinnianlipao3.ini" , 2 )
					endif
				endif
				
				if $random >= 61
					if $random <= 90
						PlayEffect( -1 , "common\huodong\xinnianlipao\tx_xinnianlipao4.ini" , 2 )
					endif
				endif
				
				
				
				//????
				#name = GetPlayerInfo( -1 , "name" )
				$random2 = RandomNumber( 1 , 70 )
				if $random2 >= 1
					if $random2 <= 10
						BC("screen" , "server" , -1 ,  ">>>>>>" , #name , """Welcome to Battle of the Immortals! We hope you have fun!" )
						BC("chat" , "server" , -1 ,  ">>>>>>" , #name , """Welcome to Battle of the Immortals! We hope you have fun!" )
					endif
				endif
				
				if $random2 >= 11
					if $random2 <= 20
						BC("screen" , "server" , -1 ,  ">>>>>>" , #name , """May you live as long as you want and want as long as you live!" )
						BC("chat" , "server" , -1 ,  ">>>>>>" , #name , """May you live as long as you want and want as long as you live!" )
					endif
				endif
				
				if $random2 >= 21
					if $random2 <= 30
						BC("screen" , "server" , -1 ,  ">>>>>>" , #name , """May joy and health be with you always!" )
						BC("chat" , "server" , -1 ,  ">>>>>>" , #name , """May joy and health be with you always!" )
					endif
				endif
				
				if $random2 >= 31
					if $random2 <= 40
						BC("screen" , "server" , -1 ,  ">>>>>>" , #name , """May happiness follow you wherever you go!" )
						BC("chat" , "server" , -1 ,  ">>>>>>" , #name , """May happiness follow you wherever you go!" )
					endif
				endif
				
				if $random2 >= 41
					if $random2 <= 50
						BC("screen" , "server" , -1 ,  ">>>>>>" , #name , """We wish all the best for you!" )
						BC("chat" , "server" , -1 ,  ">>>>>>" , #name , """We wish all the best for you!" )
					endif
				endif
				
				if $random2 >= 51
					if $random2 <= 60
						BC("screen" , "server" , -1 , "Best wishes to you and your family! I am " , ">>>>>>" , #name , "" )
						BC("chat" , "server" , -1 , "Best wishes to you and your family! I am " , ">>>>>>" , #name , "" )
					endif
				endif
				
				if $random2 >= 61
					if $random2 <= 70
						BC("screen" , "server" , -1 , "Fireworks begin our celebration!" , ">>>>>>" , #name , "" , "May the warmest wishes, happy thoughts, and friendly greetings stay with you all year!")
						BC("chat" , "server" , -1 , "Fireworks begin our celebration!" , ">>>>>>" , #name , "" , "May the warmest wishes, happy thoughts, and friendly greetings stay with you all year!")
					endif
				endif
				
				
				//?????
				$level = GetPlayerInfo( -1 , "level" )
				if $level < 45
					$exp = $level * $level
					$exp = $exp * 120
					$a = $level * $level
					$a = $a * 400
					$exp = $exp + $a
					$exp = $exp / 2
					AddPlayerInfo( -1 , "exp" , $exp )
					SetPlayerVar(-1,3273,$rund )
				else
					$exp = $level * 4
					$exp = $exp - 76
					$exp = $exp * 6
					$exp = $exp * $level
					$exp = $exp * $level
					$exp = $exp / 5
					$a = $level * $level
					$a = $a * 400
					$exp = $exp + $a
					$exp = $exp / 2
					AddPlayerInfo( -1 , "exp" , $exp )
					SetPlayerVar(-1,3273,$rund )
				endif
				
			endif
		endif
	else
		$result = SubPlayerInfo( -1 , "item" , 63685 , 1 )
			if $result == 0
				
				
				//????
				$random = RandomNumber( 1 , 90 )
				if $random >= 1
					if $random <= 30
						PlayEffect( -1 , "common\huodong\xinnianlipao\tx_xinnianlipao1.ini" , 2 )
					endif
				endif
				
				if $random >= 31
					if $random <= 60
						PlayEffect( -1 , "common\huodong\xinnianlipao\tx_xinnianlipao3.ini" , 2 )
					endif
				endif
				
				if $random >= 61
					if $random <= 90
						PlayEffect( -1 , "common\huodong\xinnianlipao\tx_xinnianlipao4.ini" , 2 )
					endif
				endif
				
				
				
				//????
				#name = GetPlayerInfo( -1 , "name" )
				$random2 = RandomNumber( 1 , 70 )
				if $random2 >= 1
					if $random2 <= 10
						BC("screen" , "server" , -1 ,  ">>>>>>" , #name , """Welcome to Battle of the Immortals! We hope you have fun!" )
						BC("chat" , "server" , -1 ,  ">>>>>>" , #name , """Welcome to Battle of the Immortals! We hope you have fun!" )
					endif
				endif
				
				if $random2 >= 11
					if $random2 <= 20
						BC("screen" , "server" , -1 ,  ">>>>>>" , #name , """May you live as long as you want and want as long as you live!" )
						BC("chat" , "server" , -1 ,  ">>>>>>" , #name , """May you live as long as you want and want as long as you live!" )
					endif
				endif
				
				if $random2 >= 21
					if $random2 <= 30
						BC("screen" , "server" , -1 ,  ">>>>>>" , #name , """May joy and health be with you always!" )
						BC("chat" , "server" , -1 ,  ">>>>>>" , #name , """May joy and health be with you always!" )
					endif
				endif
				
				if $random2 >= 31
					if $random2 <= 40
						BC("screen" , "server" , -1 ,  ">>>>>>" , #name , """May happiness follow you wherever you go!" )
						BC("chat" , "server" , -1 ,  ">>>>>>" , #name , """May happiness follow you wherever you go!" )
					endif
				endif
				
				if $random2 >= 41
					if $random2 <= 50
						BC("screen" , "server" , -1 ,  ">>>>>>" , #name , """We wish all the best for you!" )
						BC("chat" , "server" , -1 ,  ">>>>>>" , #name , """We wish all the best for you!" )
					endif
				endif
				
				if $random2 >= 51
					if $random2 <= 60
						BC("screen" , "server" , -1 , "Best wishes to you and your family! I am " , ">>>>>>" , #name , "" )
						BC("chat" , "server" , -1 , "Best wishes to you and your family! I am " , ">>>>>>" , #name , "" )
					endif
				endif
				
				if $random2 >= 61
					if $random2 <= 70
						BC("screen" , "server" , -1 , "Fireworks begin our celebration!" , ">>>>>>" , #name , "" , "May the warmest wishes, happy thoughts, and friendly greetings stay with you all year!")
						BC("chat" , "server" , -1 , "Fireworks begin our celebration!" , ">>>>>>" , #name , "" , "May the warmest wishes, happy thoughts, and friendly greetings stay with you all year!")
					endif
				endif
				
				
				//?????
				$level = GetPlayerInfo( -1 , "level" )
				if $level < 45
					$exp = $level * $level
					$exp = $exp * 120
					$a = $level * $level
					$a = $a * 400
					$exp = $exp + $a
					$exp = $exp / 2
					AddPlayerInfo( -1 , "exp" , $exp )
					SetPlayerVar(-1,3273,1 )
				else
					$exp = $level * 4
					$exp = $exp - 76
					$exp = $exp * 6
					$exp = $exp * $level
					$exp = $exp * $level
					$exp = $exp / 5
					$a = $level * $level
					$a = $a * 400
					$exp = $exp + $a
					$exp = $exp / 2
					AddPlayerInfo( -1 , "exp" , $exp )
					SetPlayerVar(-1,3273,1 )
				endif
			endif
			SetPlayerVar(-1,3981,$Now_Yday )
		endif
		
	}