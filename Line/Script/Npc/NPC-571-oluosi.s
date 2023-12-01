	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/10
	//		Author:??
	//		TaskName:NPC-571-oluosi.s
	//		TaskID:??100????
	//
	//****************************************
	function OnRequest(){
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession != 2
			if $profession != 5
					if $profession != 6
							DisableNpcOption(8)
					endif
			endif
		endif
	}
	
	//??
	function OnOption0(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 59151 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Sealed Soul Belt for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 59193 )
		if $item1 < 60
			BC( "dialogbox", "player", -1, "You need 60 Deity Debris for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59151, 1 )
		$result1 = SubPlayerInfo( -1, "item", 59193, 60 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 21910, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 24910, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 27910, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 4
			AddPlayerInfo( -1, "item", 30910, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 33910, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 31238, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif		
	}
	
	//?
	function OnOption1(){
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 59148 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need Sealed Soul Boots for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 59193 )
		if $item1 < 40
			BC( "dialogbox", "player", -1, "You need 40 Deity Debris for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59148, 1 )
		$result1 = SubPlayerInfo( -1, "item", 59193, 40 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 21010, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 24010, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 27010, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 4
			AddPlayerInfo( -1, "item", 30010, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 33010, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 31235, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
	}
	//-----------------------????
	
	//?
	function OnOption2(){	
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 59147 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need Sealed Soul Gloves for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 59193 )
		if $item1 < 80
			BC( "dialogbox", "player", -1, "You need 80 Deity Debris for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59147, 1 )
		$result1 = SubPlayerInfo( -1, "item", 59193, 80 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 20410, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 23410, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 26410, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 4
			AddPlayerInfo( -1, "item", 29410, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 32410, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 31233, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
	}
	
	//?
	function OnOption3(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 59150 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Sealed Soul Helm for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 59193 )
		if $item1 < 50
			BC( "dialogbox", "player", -1, "You need 50 Deity Debris for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59150, 1 )
		$result1 = SubPlayerInfo( -1, "item", 59193, 50 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 21610, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 24610, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 27610, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 4
			AddPlayerInfo( -1, "item", 30610, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 33610, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 31237, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif	
	}
	
	//?
	function OnOption4(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 59149 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need Sealed Soul Greaves for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 59193 )
		if $item1 < 70
			BC( "dialogbox", "player", -1, "You need 70 Deity Debris for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59149, 1 )
		$result1 = SubPlayerInfo( -1, "item", 59193, 70 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 21310, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 24310, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 27310, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 4
			AddPlayerInfo( -1, "item", 30310, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 33310, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 31236, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif		
	}
	
	//?
	function OnOption5(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 59146 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need Sealed Soul Armor for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 59193 )
		if $item1 < 60
			BC( "dialogbox", "player", -1, "You need 60 Deity Debris for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59146, 1 )
		$result1 = SubPlayerInfo( -1, "item", 59193, 60 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 20110, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 23110, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 26110, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 4
			AddPlayerInfo( -1, "item", 29110, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 32110, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 31232, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
	}
	
	//??
	
	function OnOption6(){
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 59152 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need Sealed Soul Pauldrons for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 59193 )
		if $item1 < 80
			BC( "dialogbox", "player", -1, "You need 80 Deity Debris for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59152, 1 )
		$result1 = SubPlayerInfo( -1, "item", 59193, 80 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 20710, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 23710, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 26710, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 4
			AddPlayerInfo( -1, "item", 29710, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 32710, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 31234, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif

	}
	
	//??
	
	function OnOption7(){
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 59153 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Sealed Soul Weapon for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 59193 )
		if $item1 < 120
			BC( "dialogbox", "player", -1, "You need 120 Deity Debris for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59153, 1 )
		$result1 = SubPlayerInfo( -1, "item", 59193, 120 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 18500, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 18520, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 18540, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 4
			AddPlayerInfo( -1, "item", 18560, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 18580, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 19584, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
	}
	
	
	//??
	
	function OnOption8(){
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 59182 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Sealed Soul Shield for the exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 59193 )
		if $item1 < 40
			BC( "dialogbox", "player", -1, "You need 40 Deity Debris for the exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59182, 1 )
		$result1 = SubPlayerInfo( -1, "item", 59193, 40 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		
		if $profession == 2
			AddPlayerInfo( -1, "item", 25210, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		
		if $profession == 5
			AddPlayerInfo( -1, "item", 34210, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 31239, 1 )
			BC( "screen", "player", -1, "Exchange successful." )
		endif			

	}