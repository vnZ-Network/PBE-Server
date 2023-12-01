	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-8-1
	//		Author:??
	//		TaskName:NPC-222.s
	//		TaskID:??????
	//****************************************
	
	function OnRequest(){
//		DisableNpcOption(0)
//		DisableNpcOption(1)
//		DisableNpcOption(2)
//		DisableNpcOption(3)
//		DisableNpcOption(4)
//		DisableNpcOption(5)
//		DisableNpcOption(6)
//		DisableNpcOption(7)
//		DisableNpcOption(8)
	}
	function OnOption0(){
		//??id
		$juanzhou = 44378
		//??????
		$shuijing = 18		
		//????id
		$chuizi = 2337
		//????
		$juanzhounum = GetPlayerInfo( -1, "item", $juanzhou )
		$shuijingnum1 = GetPlayerInfo( -1, "item", 9 )
		$shuijingnum2 = GetPlayerInfo( -1, "item", 5 )
		$shuijingnum3 = GetPlayerInfo( -1, "item", 2 )
		$shuijingnum4 = GetPlayerInfo( -1, "item", 10 )
		$shuijingnum = $shuijingnum1 + $shuijingnum2
		$shuijingnum = $shuijingnum + $shuijingnum3
		$shuijingnum = $shuijingnum + $shuijingnum4
		if $juanzhounum < 1
			BC( "screen", "player", -1, "Your Hephaestus' Hammer Coupon is not the right level!" )
			return			
		endif
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
		//?????
		$result = SubPlayerInfo( -1, "item", 44378, 1 )
		BC( "screen", "player", -1, "Successfully removed scroll" )
		if $result == 0
			//??1
			if $shuijingnum1 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 9, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 9, $shuijingnum1 )
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
				$result = SubPlayerInfo( -1, "item", 2, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 2, $shuijingnum3 )
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
				AddPlayerInfo( -1, "item", $chuizi, 1 )
			endif
		endif
	}
	function OnOption1(){
		//??id
		$juanzhou = 44379
		//??????
		$shuijing = 50
		//????id
		$chuizi = 2338
		//????
		$juanzhounum = GetPlayerInfo( -1, "item", $juanzhou )
		$shuijingnum1 = GetPlayerInfo( -1, "item", 9 )
		$shuijingnum2 = GetPlayerInfo( -1, "item", 5 )
		$shuijingnum3 = GetPlayerInfo( -1, "item", 2 )
		$shuijingnum4 = GetPlayerInfo( -1, "item", 10 )
		$shuijingnum = $shuijingnum1 + $shuijingnum2
		$shuijingnum = $shuijingnum + $shuijingnum3
		$shuijingnum = $shuijingnum + $shuijingnum4
		if $juanzhounum < 1
			BC( "screen", "player", -1, "Your Hephaestus' Hammer Coupon is not the right level!" )
			return			
		endif
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
		//?????
		$result = SubPlayerInfo( -1, "item", 44379, 1 )
		BC( "screen", "player", -1, "Successfully removed scroll" )
		if $result == 0
			//??1
			if $shuijingnum1 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 9, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 9, $shuijingnum1 )
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
				$result = SubPlayerInfo( -1, "item", 2, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 2, $shuijingnum3 )
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
				AddPlayerInfo( -1, "item", $chuizi, 1 )
			endif
		endif
	}
	function OnOption2(){
		//??id
		$juanzhou = 44380
		//??????
		$shuijing = 70
		//????id
		$chuizi = 2339
		//????
		$juanzhounum = GetPlayerInfo( -1, "item", $juanzhou )
		$shuijingnum1 = GetPlayerInfo( -1, "item", 9 )
		$shuijingnum2 = GetPlayerInfo( -1, "item", 5 )
		$shuijingnum3 = GetPlayerInfo( -1, "item", 2 )
		$shuijingnum4 = GetPlayerInfo( -1, "item", 10 )
		$shuijingnum = $shuijingnum1 + $shuijingnum2
		$shuijingnum = $shuijingnum + $shuijingnum3
		$shuijingnum = $shuijingnum + $shuijingnum4
		if $juanzhounum < 1
			BC( "screen", "player", -1, "Your Hephaestus' Hammer Coupon is not the right level!" )
			return			
		endif
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
		//?????
		$result = SubPlayerInfo( -1, "item", 44380, 1 )
		BC( "screen", "player", -1, "Successfully removed scroll" )
		if $result == 0
			//??1
			if $shuijingnum1 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 9, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 9, $shuijingnum1 )
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
				$result = SubPlayerInfo( -1, "item", 2, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 2, $shuijingnum3 )
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
				AddPlayerInfo( -1, "item", $chuizi, 1 )
			endif
		endif
	}
	function OnOption3(){
		//??id
		$juanzhou = 44381
		//??????
		$shuijing = 100
		//????id
		$chuizi = 2340
		//????
		$juanzhounum = GetPlayerInfo( -1, "item", $juanzhou )
		$shuijingnum1 = GetPlayerInfo( -1, "item", 9 )
		$shuijingnum2 = GetPlayerInfo( -1, "item", 5 )
		$shuijingnum3 = GetPlayerInfo( -1, "item", 2 )
		$shuijingnum4 = GetPlayerInfo( -1, "item", 10 )
		$shuijingnum = $shuijingnum1 + $shuijingnum2
		$shuijingnum = $shuijingnum + $shuijingnum3
		$shuijingnum = $shuijingnum + $shuijingnum4
		if $juanzhounum < 1
			BC( "screen", "player", -1, "Your Hephaestus' Hammer Coupon is not the right level!" )
			return			
		endif
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
		//?????
		$result = SubPlayerInfo( -1, "item", 44381, 1 )
		BC( "screen", "player", -1, "Successfully removed scroll" )
		if $result == 0
			//??1
			if $shuijingnum1 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 9, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 9, $shuijingnum1 )
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
				$result = SubPlayerInfo( -1, "item", 2, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 2, $shuijingnum3 )
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
				AddPlayerInfo( -1, "item", $chuizi, 1 )
			endif
		endif
	}
	function OnOption4(){
		//??id
		$juanzhou = 44382
		//??????
		$shuijing = 120
		//????id
		$chuizi = 2341
		//????
		$juanzhounum = GetPlayerInfo( -1, "item", $juanzhou )
		$shuijingnum1 = GetPlayerInfo( -1, "item", 9 )
		$shuijingnum2 = GetPlayerInfo( -1, "item", 5 )
		$shuijingnum3 = GetPlayerInfo( -1, "item", 2 )
		$shuijingnum4 = GetPlayerInfo( -1, "item", 10 )
		$shuijingnum = $shuijingnum1 + $shuijingnum2
		$shuijingnum = $shuijingnum + $shuijingnum3
		$shuijingnum = $shuijingnum + $shuijingnum4
		if $juanzhounum < 1
			BC( "screen", "player", -1, "Your Hephaestus' Hammer Coupon is not the right level!" )
			return			
		endif
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
		//?????
		$result = SubPlayerInfo( -1, "item", 44382, 1 )
		BC( "screen", "player", -1, "Successfully removed scroll" )
		if $result == 0
			//??1
			if $shuijingnum1 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 9, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 9, $shuijingnum1 )
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
				$result = SubPlayerInfo( -1, "item", 2, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 2, $shuijingnum3 )
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
				AddPlayerInfo( -1, "item", $chuizi, 1 )
			endif
		endif
	}
	function OnOption5(){
		//??id
		$juanzhou = 44383
		//??????
		$shuijing = 120
		//????id
		$chuizi = 2342
		//????
		$juanzhounum = GetPlayerInfo( -1, "item", $juanzhou )
		$shuijingnum1 = GetPlayerInfo( -1, "item", 9 )
		$shuijingnum2 = GetPlayerInfo( -1, "item", 5 )
		$shuijingnum3 = GetPlayerInfo( -1, "item", 2 )
		$shuijingnum4 = GetPlayerInfo( -1, "item", 10 )
		$shuijingnum = $shuijingnum1 + $shuijingnum2
		$shuijingnum = $shuijingnum + $shuijingnum3
		$shuijingnum = $shuijingnum + $shuijingnum4
		if $juanzhounum < 1
			BC( "screen", "player", -1, "Your Hephaestus' Hammer Coupon is not the right level!" )
			return			
		endif
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
		//?????
		$result = SubPlayerInfo( -1, "item", 44383, 1 )
		BC( "screen", "player", -1, "Successfully removed scroll" )
		if $result == 0
			//??1
			if $shuijingnum1 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 9, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 9, $shuijingnum1 )
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
				$result = SubPlayerInfo( -1, "item", 2, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 2, $shuijingnum3 )
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
				AddPlayerInfo( -1, "item", $chuizi, 1 )
			endif
		endif
	}
	function OnOption6(){
		//??id
		$juanzhou = 44384
		//??????
		$shuijing = 160
		//????id
		$chuizi = 2343
		//????
		$juanzhounum = GetPlayerInfo( -1, "item", $juanzhou )
		$shuijingnum1 = GetPlayerInfo( -1, "item", 9 )
		$shuijingnum2 = GetPlayerInfo( -1, "item", 5 )
		$shuijingnum3 = GetPlayerInfo( -1, "item", 2 )
		$shuijingnum4 = GetPlayerInfo( -1, "item", 10 )
		$shuijingnum = $shuijingnum1 + $shuijingnum2
		$shuijingnum = $shuijingnum + $shuijingnum3
		$shuijingnum = $shuijingnum + $shuijingnum4
		if $juanzhounum < 1
			BC( "screen", "player", -1, "Your Hephaestus' Hammer Coupon is not the right level!" )
			return			
		endif
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
		//?????
		$result = SubPlayerInfo( -1, "item", 44384, 1 )
		BC( "screen", "player", -1, "Successfully removed scroll" )
		if $result == 0
			//??1
			if $shuijingnum1 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 9, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 9, $shuijingnum1 )
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
				$result = SubPlayerInfo( -1, "item", 2, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 2, $shuijingnum3 )
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
				AddPlayerInfo( -1, "item", $chuizi, 1 )
			endif
		endif
	}
	function OnOption7(){
		//??id
		$juanzhou = 44385
		//??????
		$shuijing = 800
		//????id
		$chuizi = 2344
		//????
		$juanzhounum = GetPlayerInfo( -1, "item", $juanzhou )
		$shuijingnum1 = GetPlayerInfo( -1, "item", 9 )
		$shuijingnum2 = GetPlayerInfo( -1, "item", 5 )
		$shuijingnum3 = GetPlayerInfo( -1, "item", 2 )
		$shuijingnum4 = GetPlayerInfo( -1, "item", 10 )
		$shuijingnum = $shuijingnum1 + $shuijingnum2
		$shuijingnum = $shuijingnum + $shuijingnum3
		$shuijingnum = $shuijingnum + $shuijingnum4
		if $juanzhounum < 1
			BC( "screen", "player", -1, "Your Hephaestus' Hammer Coupon is not the right level!" )
			return			
		endif
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
		//?????
		$result = SubPlayerInfo( -1, "item", 44385, 1 )
		BC( "screen", "player", -1, "Successfully removed scroll" )
		if $result == 0
			//??1
			if $shuijingnum1 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 9, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 9, $shuijingnum1 )
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
				$result = SubPlayerInfo( -1, "item", 2, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 2, $shuijingnum3 )
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
				AddPlayerInfo( -1, "item", $chuizi, 1 )
			endif
		endif
	}
	function OnOption8(){
		//??id
		$juanzhou = 44386
		//??????
		$shuijing = 3000
		//????id
		$chuizi = 2345
		//????
		$juanzhounum = GetPlayerInfo( -1, "item", $juanzhou )
		$shuijingnum1 = GetPlayerInfo( -1, "item", 9 )
		$shuijingnum2 = GetPlayerInfo( -1, "item", 5 )
		$shuijingnum3 = GetPlayerInfo( -1, "item", 2 )
		$shuijingnum4 = GetPlayerInfo( -1, "item", 10 )
		$shuijingnum = $shuijingnum1 + $shuijingnum2
		$shuijingnum = $shuijingnum + $shuijingnum3
		$shuijingnum = $shuijingnum + $shuijingnum4
		if $juanzhounum < 1
			BC( "screen", "player", -1, "Your Hephaestus' Hammer Coupon is not the right level!" )
			return			
		endif
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
		//?????
		$result = SubPlayerInfo( -1, "item", 44386, 1 )
		BC( "screen", "player", -1, "Successfully removed scroll" )
		if $result == 0
			//??1
			if $shuijingnum1 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 9, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 9, $shuijingnum1 )
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
				$result = SubPlayerInfo( -1, "item", 2, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 2, $shuijingnum3 )
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
				AddPlayerInfo( -1, "item", $chuizi, 1 )
			endif
		endif
	}