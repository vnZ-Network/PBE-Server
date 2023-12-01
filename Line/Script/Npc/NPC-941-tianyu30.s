	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/14
	//		Author:???
	//		TaskName:NPC-941-tianyu30.s
	//		TaskID:????30?????
	//
	//****************************************
	function OnRequest(){
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession != 1
			if $profession != 2
					if $profession != 3
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
		if $profession != 2
			        DisableNpcOption(8)
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
		$item = GetPlayerInfo( -1, "item", 63894 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Purified Styrke Belt for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63906 )
		if $item1 < 30
			BC( "dialogbox", "player", -1, "You need 30 Void Jewels for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63894, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63906, 30)
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 41206, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 41220, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 41235, 1 )
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
		$item = GetPlayerInfo( -1, "item", 63891 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need Purified Styrke Boots for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63906 )
		if $item1 < 20
			BC( "dialogbox", "player", -1, "You need 20 Void Jewels for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63891, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63906, 20 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 41203, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 41217, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 41232, 1 )
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
		$item = GetPlayerInfo( -1, "item", 63890 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need Purified Styrke Gloves for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63906 )
		if $item1 < 40
			BC( "dialogbox", "player", -1, "You need 40 Void Jewels for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63890, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63906, 40 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 41201, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 41215, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 41230, 1 )
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
		$item = GetPlayerInfo( -1, "item", 63893 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Purified Styrke Helm for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63906 )
		if $item1 < 25
			BC( "dialogbox", "player", -1, "You need 25 Void Jewels for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63893, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63906, 25 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 41205, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 41219, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 41234, 1 )
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
		$item = GetPlayerInfo( -1, "item", 63892 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need Purified Styrke Greaves for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63906 )
		if $item1 < 35
			BC( "dialogbox", "player", -1, "You need 35 Void Jewels for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63892, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63906, 35 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 41204, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 41218, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 41233, 1 )
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
		$item = GetPlayerInfo( -1, "item", 63889 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Purified Styrke Armor for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63906 )
		if $item1 < 30
			BC( "dialogbox", "player", -1, "You need 30 Void Jewels for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63889, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63906, 30 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 41200, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 41214, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 41229, 1 )
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
		$item = GetPlayerInfo( -1, "item", 63895 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need Purified Styrke Pauldrons for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63906 )
		if $item1 < 40
			BC( "dialogbox", "player", -1, "You need 40 Void Jewels for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63895, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63906, 40 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 41202, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 41216, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 41231, 1 )
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
		$item = GetPlayerInfo( -1, "item", 63896 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Purified Styrke Weapon for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63906 )
		if $item1 < 60
			BC( "dialogbox", "player", -1, "You need 60 Void Jewels for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63896, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63906, 60 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 19643, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 19644, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 19645, 1 )
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
		if $profession == 2
			AddPlayerInfo( -1, "item", 41221, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		
	}