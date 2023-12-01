	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/28
	//		Author:???
	//		TaskName:NPC-737-aruisizh.s
	//		TaskID:????15?????
	//
	//****************************************
	function OnRequest(){
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession != 4
			if $profession != 5
					if $profession != 6
							DisableNpcOption(0)
							DisableNpcOption(1)
							DisableNpcOption(2)
							DisableNpcOption(3)
							DisableNpcOption(4)
							DisableNpcOption(5)
							DisableNpcOption(6)
							DisableNpcOption(7)
					endif
			endif
		endif
		if $profession != 5
		  if $profession != 6
			        DisableNpcOption(8)
			endif
		endif
	}
	
	//??
	function OnOption0(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63882 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Cursed Evil God's Belt to exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63886 )
		if $item1 < 6
			BC( "dialogbox", "player", -1, "You need 6 Starplane Fragments to exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63882, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63886, 6 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 4
			AddPlayerInfo( -1, "item", 39904, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 39918, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 39933, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
	}
	
	//?
	function OnOption1(){
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63879 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Cursed Evil God's Boots to exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63886 )
		if $item1 < 4
			BC( "dialogbox", "player", -1, "You need 4 Starplane Fragments to exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63879, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63886, 4 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 4
			AddPlayerInfo( -1, "item", 39901, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 39915, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 39930, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
	}
	//-----------------------????
	
	//?
	function OnOption2(){	
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63878 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Cursed Evil God's Gloves to exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63886 )
		if $item1 < 8
			BC( "dialogbox", "player", -1, "You need 8 Starplane Fragments to exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63878, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63886, 8 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 4
			AddPlayerInfo( -1, "item", 39899, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 39913, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 39928, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
	}
	
	//?
	function OnOption3(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63881 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Cursed Evil God's Helm to exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63886 )
		if $item1 < 5
			BC( "dialogbox", "player", -1, "You need 5 Starplane Fragments to exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63881, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63886, 5 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 4
			AddPlayerInfo( -1, "item", 39903, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 39917, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 39932, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
	}
	
	//?
	function OnOption4(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63880 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Cursed Evil God's Greaves to exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63886 )
		if $item1 < 7
			BC( "dialogbox", "player", -1, "You need 7 Starplane Fragments to exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63880, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63886, 7 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 4
			AddPlayerInfo( -1, "item", 39902, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 39916, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 39931, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
	}
	
	//?
	function OnOption5(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63877 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Cursed Evil God's Armor to exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63886 )
		if $item1 < 6
			BC( "dialogbox", "player", -1, "You need 6 Starplane Fragments to exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63877, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63886, 6 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 4
			AddPlayerInfo( -1, "item", 39898, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 39912, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 39927, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
	}
	
	//??
	
	function OnOption6(){
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63883 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Cursed Evil God's Pauldrons to exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63886 )
		if $item1 < 8
			BC( "dialogbox", "player", -1, "You need 8 Starplane Fragments to exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63883, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63886, 8 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 4
			AddPlayerInfo( -1, "item", 39900, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 39914, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 39929, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif

	}
	
	//??
	
	function OnOption7(){
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63884 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Cursed Evil God's Gloves to exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63886 )
		if $item1 < 12
			BC( "dialogbox", "player", -1, "You need 12 Starplane Fragments to exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63884, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63886, 12 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 4
			AddPlayerInfo( -1, "item", 19634, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 19635, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 19636, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
	}
	
	
	//??
	
	function OnOption8(){
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63885 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Cursed Gods' Shield to exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63885, 1 )
		if $result != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 5
			AddPlayerInfo( -1, "item", 39919, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 6
		  AddPlayerInfo( -1, "item", 39934, 1 )
		  BC( "screen", "player", -1, "Exchange successfully." )
		endif
		
	}