	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/11
	//		Author:??
	//		TaskName:NPC-duihuanchongwu1565.s
	//		TaskID:?????????
	//
	//****************************************
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-7-3
	//		Author:??
	//		TaskName:NPC-duihuanchongwu1565.s
	//		TaskID:??????
	//
	//****************************************	
	function OnRequest(){
		$Item = GetPlayerInfo( -1, "item", 60098 )
		if $Item < 1
			DisableNpcOption(1)	
			DisableNpcOption(5)
		endif
		$Item = GetPlayerInfo( -1, "item", 60100 )
		if $Item < 1
			DisableNpcOption(2)	
			DisableNpcOption(5)
		endif
		$Item = GetPlayerInfo( -1, "item", 59316 )
		if $Item < 1
			DisableNpcOption(3)	
			DisableNpcOption(5)
		endif
		$Item = GetPlayerInfo( -1, "item", 59359 )
		if $Item < 1
			DisableNpcOption(4)	
			DisableNpcOption(5)
		endif
	}
	
	//??????
	
	function OnOption0(){		
		$count = GetPlayerInfo( -1, "item", 63383)
		if $count < 100
			BC( "dialogbox", "player", -1, "You must have at least 100 Colorful Meteors." )
			return
		endif
		
		$null = GetPlayerInfo( -1, "nullitem", 0 )
   	if $null < 1
			BC( "screen", "player", -1, "Your bag is full." )
			return
		endif
		
	  $result = SubPlayerInfo(-1, "item", 63383, 100)
		if $result == 0	
				$Add = AddPlayerInfo( -1, "item", 62606, 1 )
				BC( "messagebox", "player", -1, "You received 1 Sacred Chroma Stone!" )
		else
			BC( "screen", "player", -1, "Failed to exchange." )
		endif		
	}
	
//	function OnOption1(){
//	
//		//
//		$count = GetPlayerInfo( -1, "item", 63383)
//		if $count < 100
//			BC( "dialogbox", "player", -1, "You must have at least 100 Colorful Meteors." )
//			return
//		endif
//		
//		$petcount = GetPetCount(-1)
//		$petmaxcount = GetPetMaxCount(-1)
//		if $petcount >= $petmaxcount
//		    BC( "screen", "player", -1, "GUID:08191000005" )
//		    return
//		endif
//   		
//	    $result = SubPlayerInfo(-1, "item", 63383, 100)
//		if $result == 0
//			$n = RandomNumber(1, 280)
//			
//			if $n >= 1
//				if $n <= 100
//					$pet_number = 4256
//				endif	
//			endif
//			if $n >= 101
//				if $n <= 190
//					$pet_number = 4257
//				endif
//			endif
//			if $n >= 191
//				if $n <= 280
//					$pet_number = 4258
//				endif	
//			endif
//			
//			$pet = AddPet( -1, $pet_number , 1, 0)
//	  		BC( "messagebox", "player", -1, "GUID:08191000006" )
//		else
//			BC( "screen", "player", -1, "Failed to exchange." )
//		endif		
//
//	}
	
	function OnOption1(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 60098 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry. You do not have Athena's Shield." )
			return
		endif
		
		$subitem = SubPlayerInfo( -1, "item", 60098, 1 )
		if $subitem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 62561, 1 )
		
	}
	
	function OnOption2(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 60100 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry. You do not have Athena's Spear." )
			return
		endif
		
		$subitem = SubPlayerInfo( -1, "item", 60100, 1 )
		if $subitem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 62563, 1 )
		
	}
	
	function OnOption3(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 59316 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry. You do not have Athena's Crown." )
			return
		endif
		
		$subitem = SubPlayerInfo( -1, "item", 59316, 1 )
		if $subitem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 62564, 1 )
		
	}
	
	function OnOption4(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 59359 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry. You do not have Athena's Armor." )
			return
		endif
		
		$subitem = SubPlayerInfo( -1, "item", 59359, 1 )
		if $subitem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 62566, 1 )
		
	}
	
	function OnOption5(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 60098 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry. You do not have Athena's Shield." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 60100 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry. You do not have Athena's Spear." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 59316 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry. You do not have Athena's Crown." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 59359 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry. You do not have Athena's Armor." )
			return
		endif
		
		$subitem = SubPlayerInfo( -1, "item", 60098, 1 )
		if $subitem != 0
			return
		endif
		
		$subitem = SubPlayerInfo( -1, "item", 60100, 1 )
		if $subitem != 0
			return
		endif
		
		$subitem = SubPlayerInfo( -1, "item", 59316, 1 )
		if $subitem != 0
			return
		endif
		
		$subitem = SubPlayerInfo( -1, "item", 59359, 1 )
		if $subitem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 62567, 1 )
		
	}
		function OnOption6(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 44645 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry! You don't have a New Year's Beast." )
			return
		endif
		
		$subitem = SubPlayerInfo( -1, "item", 44645, 1 )
		if $subitem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 62629, 1 )
		
	}
			function OnOption7(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 44645 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry! You don't have a New Year's Beast." )
			return
		endif
		
		$subitem = SubPlayerInfo( -1, "item", 44645, 1 )
		if $subitem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 62553, 1 )
		
	}