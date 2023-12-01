	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/11
	//		Author:??
	//		TaskName:ITEM-leishenbaoxiang12508.s
	//		TaskID:????12508
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif

		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 12508, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		$n1 = RandomNumber(1, 100)
		//--------------------
		
		if $n1 <= 10
			$level = GetPlayerInfo(-1 , "level")
			$a = $level * $level
			$add_exp = $a * 15
			AddPlayerInfo(-1 , "exp" , $add_exp)
		endif
		
		if $n1 > 10
			if $n1 <= 20
				AddPlayerInfo(-1 , "item" , 4650 , 10)
			endif
		endif
		
		//------------------------------
		
		$n = RandomNumber(1, 100)
		
		
		if $n <= 10
			AddPlayerInfo(-1 , "item" , 12509, 1)
		else
			AddPlayerInfo(-1 , "item" , 63386, 1)
		endif
	
	}