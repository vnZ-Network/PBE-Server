	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/20
	//		Author:???
	//		TaskName:ITEM-59103.s
	//		TaskID:??
	//****************************************
	
	function OnUseItem(){
	
		$lv = GetPlayerInfo ( -1 , "level" )
		$lv2 = $lv * $lv
		$a = $lv2 * 10
		$b = $lv * 4
		$c = $b - 76
		$d = $a * $c
		$exp = $d / 100

		$time = GetPlayerVar( -1 , 3946 )
		
		$nowtime = GetSystemTime( "yday")
		$nowtime = $nowtime + 1
		
		$round = GetPlayerVar( -1 , 3945)
		
		//?????
		//????? = ????^2+0.6*????+1000
		//????? = ????? * 0.333
		$fieldlevel = GetFieldLevel(-1)
		$godexp = $fieldlevel * $fieldlevel
		$b = $fieldlevel * 6
		$b = $b / 10
		$godexp = $godexp + $b
		$godexp = $godexp + 1000
		$godexp = $godexp / 3
		
		if $time == $nowtime
		
			if $round < 100
				$info = SubPlayerInfo ( -1 , "item" , 59103 , 1 )
				if  $info != 0
					return
				endif
		
				if $lv > 19
					AddPlayerInfo( -1 , "exp" , $exp )
				else
					AddPlayerInfo( -1 , "exp" , 100 )
				endif
				
				if $fieldlevel > 0
					AddFieldExp( -1 , $godexp )
				endif
				
				$round = $round + 1
				
				SetPlayerVar(-1 , 3945	, $round)
				BC( "screen", "player", -1, "You can use 100 Books of EXP each day! You have used ",$round," today." )
			else
				BC( "screen", "player", -1, "You have already used Book of EXP 100 times today. You can not use it anymore!" )
				return
			endif

		else
		
			$info = SubPlayerInfo ( -1 , "item" , 59103 , 1 )
			if  $info != 0
				return
			endif
	
			if $lv > 19
				AddPlayerInfo( -1 , "exp" , $exp )
			else
				AddPlayerInfo( -1 , "exp" , 100 )
			endif
			
			if $fieldlevel > 0
				AddFieldExp( -1 , $godexp )
			endif
			
			BC( "screen", "player", -1, "You can use 100 Books of EXP each day! You have used one today." )
			SetPlayerVar( -1 ,3946, $nowtime )
			SetPlayerVar( -1 ,3945, 1 )
		endif
			
		
	}

