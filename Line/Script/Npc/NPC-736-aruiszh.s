	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/26
	//		Author:???
	//		TaskName:NPC-736-aruisizh.s
	//		TaskID:????15?????
	//
	//****************************************
	function OnRequest(){
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession != 1
			if $profession != 2
					if $profession != 3
							DisableNpcOption(1)
							DisableNpcOption(2)
							DisableNpcOption(3)
							DisableNpcOption(4)
							DisableNpcOption(5)
							DisableNpcOption(6)
							DisableNpcOption(7)
							DisableNpcOption(8)
					endif
			endif
		endif
		if $profession != 2
			        DisableNpcOption(9)
		endif
			        
		$playervar = GetPlayerVar( -1, 4089 )
		$today_time = GetSystemTime( "yday" )
		if $playervar == $today_time
			  DisableNpcOption(0)
		 endif
		
		$Task = IsTaskAccept( -1, 1876 )
		if $Task == 0
			  DisableNpcOption(0)
		endif
		
	}
	
	function OnOption0(){
			
			$TaskCount = GetTaskCount( -1 )
	   	if $TaskCount >= 20
			  BC( "dialogbox", "player", -1, "Sorry, your quest list is full." )
			  return
		  endif
		
		  $level = GetPlayerInfo( -1, "level" )
		  if $level < 120
			  BC( "dialogbox", "player", -1, "You must be LV120 to accept." )
			  return
		  endif
		  $level1 = GetFieldLevel( -1 )
		  if $level1 < 10
			  BC( "dialogbox", "player", -1, "You must be Exalted LV10 to accept." )
			  return
		  endif
		
		  $playervar = GetPlayerVar( -1, 4089 )
		  $today_time = GetSystemTime( "yday" )
		  if $playervar == $today_time
			  BC( "dialogbox", "player", -1, "You've already accepted this quest today." )
			  return
		  endif
		
		  AcceptTask( -1, 1876 )
		  SetPlayerVar( -1, 4089, $today_time )
					
	}
	
	//??
	function OnOption1(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63874 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Cursed War God's Belt to exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63886 )
		if $item1 < 6
			BC( "dialogbox", "player", -1, "You need 6 Starplane Fragments to exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63874, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63886, 6 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 39861, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 39875, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 39890, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
	}
	
	//?
	function OnOption2(){
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63871 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Cursed War God's Boots to exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63886 )
		if $item1 < 4
			BC( "dialogbox", "player", -1, "You need 4 Starplane Fragments to exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63871, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63886, 4 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 39858, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 39872, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 39887, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
	}
	//-----------------------????
	
	//?
	function OnOption3(){	
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63870 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Cursed War God's Gloves to exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63886 )
		if $item1 < 8
			BC( "dialogbox", "player", -1, "You need 8 Starplane Fragments to exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63870, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63886, 8 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 39856, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 39870, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 39885, 1 )
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
		$item = GetPlayerInfo( -1, "item", 63873 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Cursed War God's Helm to exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63886 )
		if $item1 < 5
			BC( "dialogbox", "player", -1, "You need 5 Starplane Fragments to exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63873, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63886, 5 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 39860, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 39874, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 39889, 1 )
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
		$item = GetPlayerInfo( -1, "item", 63872 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Cursed War God's Greaves to exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63886 )
		if $item1 < 7
			BC( "dialogbox", "player", -1, "You need 7 Starplane Fragments to exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63872, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63886, 7 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 39859, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 39873, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 39888, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
	}
	
	//?
	function OnOption6(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		$item = GetPlayerInfo( -1, "item", 63869 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Cursed War God's Armor to exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63886 )
		if $item1 < 6
			BC( "dialogbox", "player", -1, "You need 6 Starplane Fragments to exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63869, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63886, 6 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 39855, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 39869, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 39884, 1 )
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
		$item = GetPlayerInfo( -1, "item", 63875 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Cursed War God's Pauldrons to exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63886 )
		if $item1 < 8
			BC( "dialogbox", "player", -1, "You need 8 Starplane Fragments to exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63875, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63886, 8 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 39857, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 39871, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 39886, 1 )
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
		$item = GetPlayerInfo( -1, "item", 63876 )
		if $item < 1
			BC( "dialogbox", "player", -1, "You need a Cursed War God's Weapon to exchange." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63886 )
		if $item1 < 12
			BC( "dialogbox", "player", -1, "You need 12 Starplane Fragments to exchange." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63876, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63886, 12 )
		if $result != 0
			return
		endif
		if $result1 != 0
			return
		endif
				
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 19631, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 19632, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 19633, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
	}
	
	
	//??
	
	function OnOption9(){
			
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
		if $profession == 2
			AddPlayerInfo( -1, "item", 39876, 1 )
			BC( "screen", "player", -1, "Exchange successfully." )
		endif
		
	}