	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/09/21
	//		Author:???
	//		TaskName:Item-12696.s
	//		TaskID:??????
	//
	//****************************************
	//3743 ???
	//3245 ????
	function OnUseItem(){
		
		//???????
		$nullitem = GetPlayerInfo( -1, "nullitem" , 0 )
		if $nullitem < 2
			BC( "screen", "player", -1, "You don't have 2 free bag slots." )
			return	
		endif
		$nullitem = GetPlayerInfo( -1, "nullitem" , 1 )
		if $nullitem < 1
			BC( "screen", "player", -1, "You need at least one open slot in your bag." )
			return	
		endif
		
		//$netbar = GetNetBarLevel( -1 )
		//if $netbar == 3
		//	AddPlayerInfo( -1, "item", 59052, 1 )
		//endif
		//if $netbar == 4
		//	AddPlayerInfo( -1, "item", 59053, 1 )
		//endif
		//if $netbar == 5
		//	AddPlayerInfo( -1, "item", 59054, 1 )
		//endif
		
		
		$today_time = GetSystemTime( "yday" )
		
		$use_days =  GetPlayerVar( -1	, 3743 )
		$use_number =  GetPlayerVar( -1	, 3245 )
		
		if $today_time == $use_days
			if $use_number < 10
				$use_number = $use_number + 1
				SetPlayerVar( -1, 3245 , $use_number )
			else
				BC( "screen", "player", -1, "The Hero's Expertise Token can only be used 10 times a day. Unable to use again." )
				return
			endif
		else
			SetPlayerVar( -1, 3743 , $today_time )
			SetPlayerVar( -1, 3245 , 1 )
		endif
		
		
		
		$lv = GetPlayerInfo( -1 , "level" )
		$result = SubPlayerInfo( -1 , "item" , 12696 , 1 )
		if $result != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 64374 , 1 )

    //???????,????????,????????????
		$randombuff = RandomNumber(1,3)
		if $randombuff == 1
			AddPlayerInfo( -1 , "item" , 9 , 1 )
//			BC("screen", "player", -1, "When using a Hero's Expertise Token, you luckly get a Major Fortify Crystal." )
		endif
		if $randombuff > 1
			AddPlayerInfo( -1 , "item" , 59141 , 1 )
//			BC("screen", "player", -1, "When using a Hero's Expertise Token, you luckly get a Major Fortify Crystal." )
		endif
		
		//20-29
		if $lv >= 20
			if $lv <= 29
				$exp = $lv * $lv
				$exp = $exp * 7
				$exp = $exp * 4
				AddPlayerInfo( -1 , "exp" , $exp )
			endif
		endif
		
		//30-44
		if $lv >= 30
			if $lv <= 44
				$exp = $lv * $lv
				$exp = $exp * 7
				$exp = $exp * 8
				AddPlayerInfo( -1 , "exp" , $exp )
			endif
		endif
		
		//45+
		if $lv >= 45
			$exp = $lv * $lv
			$exp = $exp * 105
			$a = $lv * 4
			$a = $a - 76
			$exp = $exp * $a
			$exp = $exp / 100
			if $lv >= 95
				$exp = $exp * 11
				$exp = $exp / 10
			endif
			if $lv >= 105
				$exp = $exp * 12
				$exp = $exp / 10
			endif
			if $lv >= 115
				$exp = $exp * 13
				$exp = $exp / 10
			endif
			AddPlayerInfo( -1 , "exp" , $exp )
		endif
		
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
		if $fieldlevel > 0
			AddFieldExp( -1 , $godexp )
		endif
		
	}