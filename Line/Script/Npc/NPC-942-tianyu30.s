	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/14
	//		Author:???
	//		TaskName:NPC-942-tianyu30.s
	//		TaskID:????30?????
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
			BC( "dialogbox", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63902 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Purified Seior Belt for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63906 )
		if $item1 < 30
			BC( "dialogbox", "player", -1, "You need 30 Void Jewels for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63902, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63906, 30 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 4
			AddPlayerInfo( -1, "item", 41249, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 41263, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 41278, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
	}
	
	//?
	function OnOption1(){
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63899 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need Purified Seior Boots for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63906 )
		if $item1 < 20
			BC( "dialogbox", "player", -1, "You need 20 Void Jewels for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63899, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63906, 20 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 4
			AddPlayerInfo( -1, "item", 41246, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 41260, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 41275, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
	}
	//-----------------------????
	
	//?
	function OnOption2(){	
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63898 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need Purified Seior Gloves for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63906 )
		if $item1 < 40
			BC( "dialogbox", "player", -1, "You need 40 Void Jewels for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63898, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63906, 40 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 4
			AddPlayerInfo( -1, "item", 41244, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 41258, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 41273, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
	}
	
	//?
	function OnOption3(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63901 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Purified Seior Helm for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63906 )
		if $item1 < 25
			BC( "dialogbox", "player", -1, "You need 25 Void Jewels for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63901, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63906, 25 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 4
			AddPlayerInfo( -1, "item", 41248, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 41262, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 41277, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
	}
	
	//?
	function OnOption4(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63900 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need Purified Seior Greaves for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63906 )
		if $item1 < 35
			BC( "dialogbox", "player", -1, "You need 35 Void Jewels for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63900, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63906, 35 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 4
			AddPlayerInfo( -1, "item", 41247, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 41261, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 41276, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
	}
	
	//?
	function OnOption5(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63897 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Purified Seior Armor for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63906 )
		if $item1 < 30
			BC( "dialogbox", "player", -1, "You need 30 Void Jewels for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63897, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63906, 30 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 4
			AddPlayerInfo( -1, "item", 41243, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 41257, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 41272, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
	}
	
	//??
	
	function OnOption6(){
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63903 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need Purified Seior Pauldrons for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63906 )
		if $item1 < 40
			BC( "dialogbox", "player", -1, "You need 40 Void Jewels for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63903, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63906, 40 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 4
			AddPlayerInfo( -1, "item", 41245, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 41259, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 41274, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif

	}
	
	//??
	
	function OnOption7(){
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63904 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Purified Seior Weapon for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63906 )
		if $item1 < 60
			BC( "dialogbox", "player", -1, "You need 60 Void Jewels for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63904, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63906, 60 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 4
			AddPlayerInfo( -1, "item", 19646, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 19647, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 19648, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
	}
	
	
	//??
	
	function OnOption8(){
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63905 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Purified God-King Shield for the exchange." )
			return
		endif
		$item1 = GetPlayerInfo( -1, "item", 63906 )
		if $item1 < 10
			BC( "dialogbox", "player", -1, "You need 10 Void Jewels for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63905, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63906, 10 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
		
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 5
			AddPlayerInfo( -1, "item", 41264, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
		  AddPlayerInfo( -1, "item", 41279, 1 )
		  BC( "screen", "player", -1, "Exchange successful." )
		endif
		
	}