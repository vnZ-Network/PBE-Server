	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/7/22
	//		Author:???
	//		TaskName:ITEM-59318.s
	//		TaskID:???? + ???
	//****************************************
	
	function OnUseItem(){
		
		//????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		
		$givept = $level + 10
		$givept = $givept * 5
		AddPlayerInfo(-1,"givepoint",$givept)
//		BC("screen","player",-1,"GUID:06352000001",$givept,"GUID:06352000002")
		
		//???????????????????
		$RankList = GetRankListValue( 1, 499 )
		
		//1???60???????
		if $RankList >= 75
			if $RankList <= 89
				if $level >= 45
					if $level <= 60
						AddPlayerInfo( -1, "item", 44081, 1 )
						BC( "screen", "player", -1, "You are a novice on this server. Congratulations! You obtain Champion's Soul." )
					endif
				endif
			endif
		endif
		//2???75???????
		if $RankList >= 90
			if $RankList <= 99
				if $level >= 45
					if $level <= 75
						AddPlayerInfo( -1, "item", 44081, 1 )
						BC( "screen", "player", -1, "You are a novice on this server. Congratulations! You obtain Champion's Soul." )
					endif
				endif
			endif
		endif
		//3???90???????
		if $RankList >= 100
			if $RankList <= 109
				if $level >= 45
					if $level <= 90
						AddPlayerInfo( -1, "item", 44081, 1 )
						BC( "screen", "player", -1, "You are a novice on this server. Congratulations! You obtain Champion's Soul." )
					endif
				endif
			endif
		endif
		
		//4???100???????
		if $RankList >= 110
			if $RankList <= 119
				if $level >= 45
					if $level <= 100
						AddPlayerInfo( -1, "item", 44081, 1 )
						BC( "screen", "player", -1, "You are a novice on this server. Congratulations! You obtain Champion's Soul." )
					endif
				endif
			endif
		endif
		
		//5???110???????
		if $RankList >= 120
			
				if $level >= 45
					if $level <= 110
						AddPlayerInfo( -1, "item", 44081, 1 )
						BC( "screen", "player", -1, "You are a novice on this server. Congratulations! You obtain Champion's Soul." )
					endif
				endif

		endif
		
		//?????
		//????? = ????^2+0.6*????+1000
		//????? = ????? * 80
		$fieldlevel = GetFieldLevel(-1)		
		$godexp = $fieldlevel * $fieldlevel
		$b = $fieldlevel * 6
		$b = $b / 10
		$godexp = $godexp + $b
		$godexp = $godexp + 1000
		$godexp = $godexp * 80
		
		if  $fieldlevel > 0
			AddFieldExp( -1 , $godexp )	
		endif
		
		//????111?,60?????
		
		if $level >= 111
			
			$lv = GetPlayerInfo ( -1 , "level" )
			$lv2 = $lv * $lv
			$a = $lv2 * 60
			$b = $lv * 4
			$c = $b - 76
			$d = $a * $c
			$exp = $d / 100
			
			$info = SubPlayerInfo ( -1 , "item" , 59318 , 1 )
			if  $info != 0
				return
			endif
			AddPlayerInfo( -1 , "exp" , $exp )
			return
			
		endif	
		
		//????100?,??111,40?????
					
		if $level >= 100
			if $level < 111
			
			$lv = GetPlayerInfo ( -1 , "level" )
			$lv2 = $lv * $lv
			$a = $lv2 * 40
			$b = $lv * 4
			$c = $b - 76
			$d = $a * $c
			$exp = $d / 100
			
			$info = SubPlayerInfo ( -1 , "item" , 59318 , 1 )
			if  $info != 0
				return
			endif
			AddPlayerInfo( -1 , "exp" , $exp )
			return
			
			endif
		endif			
					
		//????100,??24?????
		
		if $level < 100
									
			$lv = GetPlayerInfo ( -1 , "level" )
			$lv2 = $lv * $lv
			$a = $lv2 * 24
			$b = $lv * 4
			$c = $b - 76
			$d = $a * $c
			$exp = $d / 100
					
			$info = SubPlayerInfo ( -1 , "item" , 59318 , 1 )
			if  $info != 0
				return
			endif
			AddPlayerInfo( -1 , "exp" , $exp )
			return
			
		endif
		
		
	}

