	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/07
	//		Author:??
	//		TaskName:HD-leishengdezhufu-lingjiangli-NPC135.s
	//		TaskID:?????,????NPC??
	//
	//****************************************
	
	//3633 ??????
	//22 ??????????
	function OnRequest(){
		
		$today_time = GetSystemTime( "yday" )
		
		$days = GetPlayerVar(-1 , 3633)

		if $today_time == $days
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			return
		endif
		
		$prestige = GetPlayerInfo(-1 ,"prestige" , 8)
		
		if $prestige < 14000
			DisableNpcOption(4)
		endif
		if $prestige < 10000
			DisableNpcOption(3)
		endif
		if $prestige < 7000
			DisableNpcOption(2)
		endif
		if $prestige < 4000
			DisableNpcOption(1)
		endif
		if $prestige < 2000
			DisableNpcOption(0)
		endif
		
		$is_get_faqi = GetPlayerVar(-1 , 22)
		if $is_get_faqi == 1
			DisableNpcOption(3)
		endif
	}
	
	//????
	function OnOption0(){
		
		$today_time = GetSystemTime( "yday" )
		$days = GetPlayerVar(-1 , 3633)
		if $today_time == $days
			return
		endif
		$prestige = GetPlayerInfo(-1 ,"prestige" , 8)
		if $prestige < 2000
			return
		endif
		
		$level = GetPlayerInfo(-1 ,"level")
		$a = $level * $level
		$add_exp = $a * 22
		AddPlayerInfo(-1 , "exp" , $add_exp)
		
		//?????
		SetPlayerVar(-1 , 3633,$today_time)

	}
	
	//??????buff
	function OnOption1(){
		
		$today_time = GetSystemTime( "yday" )
		$days = GetPlayerVar(-1 , 3633)
		if $today_time == $days
			return
		endif
		$prestige = GetPlayerInfo(-1 ,"prestige" , 8)
		if $prestige < 4000
			return
		endif
		//$r = RandomNumber(1 ,2)
		//if $r == 1
		
			$hp = GetPlayerInfo( -1, "hp")
			$mp = GetPlayerInfo( -1, "mp")
			$a = $hp - 1
			$b = $mp - 1
			SubPlayerInfo(-1 , "hp" , $a)
			SubPlayerInfo(-1 , "mp" , $b)
		//else
			AddStatus(-1 , 10651 , 1)
			PlayEffect(-1, "skill\Taoist\hanbingzhang\hit\tx_taoist_hanbingzhang_hit.ini")
		//endif
		
		//?????
		SetPlayerVar(-1 , 3633,$today_time)
	}
	
	//??????
	function OnOption2(){
		
		$today_time = GetSystemTime( "yday" )
		$days = GetPlayerVar(-1 , 3633)
		if $today_time == $days
			return
		endif
		$prestige = GetPlayerInfo(-1 ,"prestige" , 8)
		if $prestige < 7000
			return
		endif
		AddPlayerInfo(-1 , "item" , 12508 , 1)
		
		//?????
		SetPlayerVar(-1 , 3633,$today_time)
		
	}
	//????
	function OnOption3(){
		
		$today_time = GetSystemTime( "yday" )
		$days = GetPlayerVar(-1 , 3633)
		if $today_time == $days
			return
		endif
		$prestige = GetPlayerInfo(-1 ,"prestige" , 8)
		if $prestige < 10000
			return
		endif
		AddTrump(-1 , 11008 ,1)
		BC( "screen", "player", -1, "You got Relic-Thor Possession." )
		
		//?????
		SetPlayerVar(-1 , 3633,$today_time)		
		//??????
		SetPlayerVar(-1 , 22, 1)
	}
	
	//????????
	function OnOption4(){
		$today_time = GetSystemTime( "yday" )
		$days = GetPlayerVar(-1 , 3633)
		if $today_time == $days
			return
		endif
		$prestige = GetPlayerInfo(-1 ,"prestige" , 8)
		if $prestige < 14000
			return
		endif
		$money = GetPlayerInfo( -1, "money")
		if $money < 36000
			BC( "dialogbox", "player", -1, "You do no have enough coins" )
			return
		endif
		$revalue = SubPlayerInfo(-1 , "money" ,36000 )
		if $revalue != 0
			return
		endif
		AddPlayerInfo(-1 , "item" ,4650 , 60)
		
		//?????
		SetPlayerVar(-1 , 3633,$today_time)		
	}