	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-8-1
	//		Author:??
	//		TaskName:qianghua13.s
	//		TaskID:+13????
	//
	//****************************************
	
	function OnUseItem(){
		//??id
		$item1 = 44384
		//????id
		$item2 = 44385
		//????
		$num = 3
		//??????
		$shuijing = 800
		
		$n = GetPlayerInfo( -1, "item", $item1 )
		if $n < $num
			BC( "screen", "player", -1, "You don't have enough to do that!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		//????
		$juanzhounum = GetPlayerInfo( -1, "item", $juanzhou )
		$shuijingnum1 = GetPlayerInfo( -1, "item", 2 )
		$shuijingnum2 = GetPlayerInfo( -1, "item", 5 )
		$shuijingnum3 = GetPlayerInfo( -1, "item", 9 )
		$shuijingnum4 = GetPlayerInfo( -1, "item", 10 )
		$shuijingnum = $shuijingnum1 + $shuijingnum2
		$shuijingnum = $shuijingnum + $shuijingnum3
		$shuijingnum = $shuijingnum + $shuijingnum4
		if $shuijingnum < $shuijing
			BC( "screen", "player", -1, "You don't have enough Major Fortify Crystals in your bag!" )
			return			
		endif
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		if $result == 0
			//??1
			if $shuijingnum1 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 2, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 2, $shuijingnum1 )
				if $result == 0
					$shuijing = $shuijing - $shuijingnum1
				endif				
			endif
			//shuijing2
			if $shuijingnum2 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 5, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 5, $shuijingnum2 )
				if $result == 0
					$shuijing = $shuijing - $shuijingnum2
				endif				
			endif
			//shuijing3
			if $shuijingnum3 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 9, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 9, $shuijingnum3 )
				if $result == 0
					$shuijing = $shuijing - $shuijingnum3
				endif				
			endif
			//shuijing4
			if $shuijingnum4 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 10, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 10, $shuijingnum4 )
				if $result == 0
					$shuijing = $shuijing - $shuijingnum4
				endif				
			endif
			//??????????
			if $shuijing == 0
					$Sub = SubPlayerInfo( -1, "item", $item1, $num )
					if $Sub == 0
						AddPlayerInfo( -1, "item", $item2, 1 )
						return
					endif
			endif
		endif		
	}