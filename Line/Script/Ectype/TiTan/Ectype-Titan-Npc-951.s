	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/11
	//		Author:???
	//		TaskName:Ectype-Titan-Npc-999.s
	//		TaskID:???
	//
	//****************************************
	//
	function OnRequest(){
		
			DisableNpcOption(0)
		$mode = GetEctypeVar( -1 , 6)
		if $mode < 3
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
			DisableNpcOption(9)
			DisableNpcOption(10)
			DisableNpcOption(11)
		endif
		
	}
	

	function OnOption0(){		
		$gold = GetPlayerInfo( -1 , "item" , 64113 )
		$ectype_ID = GetEctypeID( -1 ,332 )
		$yadianna = GetEctypeVar( -1 , 11 )
		if $yadianna == 0
			if $gold > 99
			 	$result = SubPlayerInfo( -1, "item", 64113, 100)
				if $result == 0
					AddMonsterByFloat( 52285 , 1 , $ectype_ID , 248 , 95 , 0)
					SetEctypeVar( -1, 10 , 2)
					SetEctypeVar( -1, 11 , 1)
				endif
			else
				BC( "dialogbox", "player", -1, "You do not have 100 Ancient Golds. " )
			endif
		else
			BC( "dialogbox", "player", -1, "Athena - Warsoul has appeared!" )
		endif
	}
	
	function OnOption1(){
		$gold = GetPlayerInfo( -1 , "item" , 63860 )
		$ectype_ID = GetEctypeID( -1 ,332 )
		if $gold > 0
		 	$result = SubPlayerInfo( -1, "item", 63860, 1)
			if $result == 0
				AddMonsterByFloat( 52284 , 1 , $ectype_ID , 248 , 95 , 0)
			endif
		else
			BC( "dialogbox", "player", -1, "Klanus' Eyeball is required to summon Klanus. " )
		endif
	}	
	
	
	function OnOption2(){
		
		$gold = GetPlayerInfo( -1 , "item" , 63842 )
		if $gold < 1
			BC( "dialogbox", "player", -1, "Bring an Old Gods' Soul Gloves." )
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "money"  )
		if $gold < 300000
			BC( "dialogbox", "player", -1, "300000 coins are required. You do not have that much. ")
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "item" , 59193 )
		if $gold < 30
			BC( "dialogbox", "player", -1, "30 Deity Debris are required. " )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1 , "nullitem", 0 )
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif

		$result = SubPlayerInfo( -1, "item", 59193, 30)
		if $result == 0
			$result = SubPlayerInfo( -1, "money", 300000)
			if $result == 0
				$result = SubPlayerInfo( -1, "item", 63842, 1)
				if $result == 0
//----------------------------------------------------------??
					AddPlayerInfo( -1, "item", 63851, 1)
					return
//----------------------------------------------------------
				endif
				BC( "dialogbox", "player", -1, "You gained nothing. " )
			endif
			BC( "dialogbox", "player", -1, "You gained nothing. " )
		endif
		BC( "dialogbox", "player", -1, "You gained nothing. " )
		
	}
	
		function OnOption3(){
		
		$gold = GetPlayerInfo( -1 , "item" , 63843 )
		if $gold < 1
			BC( "dialogbox", "player", -1, "Bring an Old Gods' Soul Belt." )
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "money"  )
		if $gold < 300000
			BC( "dialogbox", "player", -1, "300000 coins are required. You do not have that much. ")
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "item" , 59193 )
		if $gold < 30
			BC( "dialogbox", "player", -1, "30 Deity Debris are required. " )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1 , "nullitem", 0 )
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif

		$result = SubPlayerInfo( -1, "item", 59193, 30)
		if $result == 0
			$result = SubPlayerInfo( -1, "money", 300000)
			if $result == 0
				$result = SubPlayerInfo( -1, "item", 63843, 1)
				if $result == 0
//----------------------------------------------------------??
					AddPlayerInfo( -1, "item", 63852, 1)
					return
//----------------------------------------------------------
				endif
				BC( "dialogbox", "player", -1, "You gained nothing. " )
			endif
			BC( "dialogbox", "player", -1, "You gained nothing. " )
		endif
		BC( "dialogbox", "player", -1, "You gained nothing. " )
		
	}
	
		function OnOption4(){
		
		$gold = GetPlayerInfo( -1 , "item" , 63844 )
		if $gold < 1
			BC( "dialogbox", "player", -1, "Bring an Old Gods' Soul Helm." )
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "money"  )
		if $gold < 300000
			BC( "dialogbox", "player", -1, "300000 coins are required. You do not have that much. ")
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "item" , 59193 )
		if $gold < 30
			BC( "dialogbox", "player", -1, "30 Deity Debris are required. " )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1 , "nullitem", 0 )
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif

		$result = SubPlayerInfo( -1, "item", 59193, 30)
		if $result == 0
			$result = SubPlayerInfo( -1, "money", 300000)
			if $result == 0
				$result = SubPlayerInfo( -1, "item", 63844, 1)
				if $result == 0
//----------------------------------------------------------??
					AddPlayerInfo( -1, "item", 63853, 1)
					return
//----------------------------------------------------------
				endif
				BC( "dialogbox", "player", -1, "You gained nothing. " )
			endif
			BC( "dialogbox", "player", -1, "You gained nothing. " )
		endif
		BC( "dialogbox", "player", -1, "You gained nothing. " )
		
	}
	
		function OnOption5(){
		
		$gold = GetPlayerInfo( -1 , "item" , 63845 )
		if $gold < 1
			BC( "dialogbox", "player", -1, "Bring an Old Gods' Soul Armor." )
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "money"  )
		if $gold < 300000
			BC( "dialogbox", "player", -1, "300000 coins are required. You do not have that much. ")
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "item" , 59193 )
		if $gold < 30
			BC( "dialogbox", "player", -1, "30 Deity Debris are required. " )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1 , "nullitem", 0 )
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif

		$result = SubPlayerInfo( -1, "item", 59193, 30)
		if $result == 0
			$result = SubPlayerInfo( -1, "money", 300000)
			if $result == 0
				$result = SubPlayerInfo( -1, "item", 63845, 1)
				if $result == 0
//----------------------------------------------------------??
					AddPlayerInfo( -1, "item", 63854, 1)
					return
//----------------------------------------------------------
				endif
				BC( "dialogbox", "player", -1, "You gained nothing. " )
			endif
			BC( "dialogbox", "player", -1, "You gained nothing. " )
		endif
		BC( "dialogbox", "player", -1, "You gained nothing. " )
		
	}
	
		function OnOption6(){
		
		$gold = GetPlayerInfo( -1 , "item" , 63846 )
		if $gold < 1
			BC( "dialogbox", "player", -1, "Bring an Old Gods' Soul Greaves." )
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "money"  )
		if $gold < 300000
			BC( "dialogbox", "player", -1, "300000 coins are required. You do not have that much. ")
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "item" , 59193 )
		if $gold < 30
			BC( "dialogbox", "player", -1, "30 Deity Debris are required. " )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1 , "nullitem", 0 )
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif

		$result = SubPlayerInfo( -1, "item", 59193, 30)
		if $result == 0
			$result = SubPlayerInfo( -1, "money", 300000)
			if $result == 0
				$result = SubPlayerInfo( -1, "item", 63846, 1)
				if $result == 0
//----------------------------------------------------------??
					AddPlayerInfo( -1, "item", 63855, 1)
					return
//----------------------------------------------------------
				endif
				BC( "dialogbox", "player", -1, "You gained nothing. " )
			endif
			BC( "dialogbox", "player", -1, "You gained nothing. " )
		endif
		BC( "dialogbox", "player", -1, "You gained nothing. " )
		
	}
	
		function OnOption7(){
		
		$gold = GetPlayerInfo( -1 , "item" , 63847 )
		if $gold < 1
			BC( "dialogbox", "player", -1, "Bring an Old Gods' Soul Boots." )
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "money"  )
		if $gold < 300000
			BC( "dialogbox", "player", -1, "300000 coins are required. You do not have that much. ")
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "item" , 59193 )
		if $gold < 30
			BC( "dialogbox", "player", -1, "30 Deity Debris are required. " )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1 , "nullitem", 0 )
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif

		$result = SubPlayerInfo( -1, "item", 59193, 30)
		if $result == 0
			$result = SubPlayerInfo( -1, "money", 300000)
			if $result == 0
				$result = SubPlayerInfo( -1, "item", 63847, 1)
				if $result == 0
//----------------------------------------------------------?
					AddPlayerInfo( -1, "item", 63856, 1)
					return
//----------------------------------------------------------
				endif
				BC( "dialogbox", "player", -1, "You gained nothing. " )
			endif
			BC( "dialogbox", "player", -1, "You gained nothing. " )
		endif
		BC( "dialogbox", "player", -1, "You gained nothing. " )
		
	}
	
		function OnOption8(){
		
		$gold = GetPlayerInfo( -1 , "item" , 63848 )
		if $gold < 1
			BC( "dialogbox", "player", -1, "Bring an Old Gods' Soul Pauldrons." )
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "money"  )
		if $gold < 500000
			BC( "dialogbox", "player", -1, "500000 coins are required. You do not have that much. ")
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "item" , 59193 )
		if $gold < 50
			BC( "dialogbox", "player", -1, "50 Deity Debris are required. " )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1 , "nullitem", 0 )
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif

		$result = SubPlayerInfo( -1, "item", 59193, 50)
		if $result == 0
			$result = SubPlayerInfo( -1, "money", 500000)
			if $result == 0
				$result = SubPlayerInfo( -1, "item", 63848, 1)
				if $result == 0
//----------------------------------------------------------??
					AddPlayerInfo( -1, "item", 63857, 1)
					return
//----------------------------------------------------------
				endif
				BC( "dialogbox", "player", -1, "You gained nothing. " )
			endif
			BC( "dialogbox", "player", -1, "You gained nothing. " )
		endif
		BC( "dialogbox", "player", -1, "You gained nothing. " )
		
	}
	
		function OnOption9(){
		
		$gold = GetPlayerInfo( -1 , "item" , 63849 )
		if $gold < 1
			BC( "dialogbox", "player", -1, "Bring an Old Gods' Soul Weapon." )
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "money"  )
		if $gold < 1000000
			BC( "dialogbox", "player", -1, "1000000 coins are required. You do not have that much. ")
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "item" , 59193 )
		if $gold < 80
			BC( "dialogbox", "player", -1, "80 Deity Debris are required. " )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1 , "nullitem", 0 )
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have an available bag slot. " )
			return
		endif

		$result = SubPlayerInfo( -1, "item", 59193, 80)
		if $result == 0
			$result = SubPlayerInfo( -1, "money", 1000000)
			if $result == 0
				$result = SubPlayerInfo( -1, "item", 63849, 1)
				if $result == 0
//----------------------------------------------------------??
					AddPlayerInfo( -1, "item", 63858, 1)
					return
//----------------------------------------------------------
				endif
				BC( "dialogbox", "player", -1, "You gained nothing. " )
			endif
			BC( "dialogbox", "player", -1, "You gained nothing. " )
		endif
		BC( "dialogbox", "player", -1, "You gained nothing. " )
		
	}
	
		function OnOption10(){
		
		$gold = GetPlayerInfo( -1 , "item" , 63850 )
		if $gold < 1
			BC( "dialogbox", "player", -1, "Bring an Old Gods' Soul Shield." )
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "money"  )
		if $gold < 200000
			BC( "dialogbox", "player", -1, "200000 coins are required. You do not have that much. ")
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "item" , 59193 )
		if $gold < 10
			BC( "dialogbox", "player", -1, "10 Deity Debris are required. " )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1 , "nullitem", 0 )
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have an available bag slot. " )
			return
		endif

		$result = SubPlayerInfo( -1, "item", 59193, 10)
		if $result == 0
			$result = SubPlayerInfo( -1, "money", 200000)
			if $result == 0
				$result = SubPlayerInfo( -1, "item", 63850, 1)
				if $result == 0
//----------------------------------------------------------??
					AddPlayerInfo( -1, "item", 63859, 1)
					return
//----------------------------------------------------------
				endif
				BC( "dialogbox", "player", -1, "You gained nothing. " )
			endif
			BC( "dialogbox", "player", -1, "You gained nothing. " )
		endif
		BC( "dialogbox", "player", -1, "You gained nothing. " )
		
	}
	
	
	function OnOption11(){
		
		$used = GetPlayerVar( -1 , 125)
		$gfgf = GetPlayerInfo( -1, "prestige" , 11)
		if $used == 0
			if $gfgf < 60000
				BC( "dialogbox", "player" , -1 , "Your reputation is lower than 60000. Please come back later." )
			else
				AddTrump( -1 , 11009 , 1 )
				SetPlayerVar( -1 , 125 , 1)
				BC( "screen", "player", -1, "Congratulations. You have acquired the relic Lightning. " )
			endif
		else
			BC( "dialogbox", "player" , -1 , "You have already taken the relic Lightning. " )
		endif
		
	}