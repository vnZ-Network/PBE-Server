	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/09
	//		Author:???
	//		TaskName:XLY-NPC-83.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){		
		
	}
	
	function OnOption0(){
		$level = GetPlayerInfo( -1, "level" )
		if $level < 30
			BC( "dialogbox", "player", -1, "Only LV30+ players can exchange." )
			return
		endif
		
		$Item1 = GetPlayerInfo( -1, "item", 63442 )
		if $Item1 < 100
			BC( "dialogbox", "player", -1, "You don't have 100 Summer Camp Tokens." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "You don't have 2 available bag slots." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63442, 100 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 62037, 1 )
		AddPlayerInfo( -1, "item", 64402, 5 )
		
	}
	
	function OnOption1(){
		$level = GetPlayerInfo( -1, "level" )
		if $level < 30
			BC( "dialogbox", "player", -1, "Only LV30+ players can exchange." )
			return
		endif
		
		$Item1 = GetPlayerInfo( -1, "item", 63442 )
		if $Item1 < 1
			BC( "dialogbox", "player", -1, "You don't have any Summer Camp Token." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag space." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63442, 1 )
		if $SubItem != 0
			return
		endif
		
		$Rad = RandomNumber( 1, 100 )
		if $Rad <= 50
			AddPlayerInfo( -1, "item", 63443, 1 )
			return
		else
			$level = GetPlayerInfo( -1, "level" )
			$level = $level * $level
			$level = $level * 80
			AddPlayerInfo( -1, "exp", $level )
			return
		endif
		
	}	
	
	function OnOption2(){
		$Item1 = GetPlayerInfo( -1, "item", 63435 )
		if $Item1 < 5
			BC( "dialogbox", "player", -1, "This requires 5 Colorful Luck Cards (White)." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag space." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63435, 5 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64405, 1 )
	}
	
	function OnOption3(){
		$Item1 = GetPlayerInfo( -1, "item", 63435 )
		if $Item1 < 8
			BC( "dialogbox", "player", -1, "This requires 8 Colorful Luck Cards (White)." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "You don't have 2 available bag slots." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63435, 8 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64402, 1 )
		$PlayerVar = GetPlayerVar( -1, 3705 )
		$day = GetSystemTime( "yday" )
		if $PlayerVar != $day
			AddPlayerInfo( -1, "item", 63442, 1 )
			SetPlayerVar( -1, 3705, $day )
		endif
		
	}
	
	function OnOption4(){
		$Item1 = GetPlayerInfo( -1, "item", 63436 )
		if $Item1 < 5
			BC( "dialogbox", "player", -1, "This requires 5 Colorful Luck Cards (Yellow)." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag space." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63436, 5 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64405, 1 )
	}
	
	function OnOption5(){
		$Item1 = GetPlayerInfo( -1, "item", 63436 )
		if $Item1 < 8
			BC( "dialogbox", "player", -1, "This requires 8 Colorful Luck Cards (Yellow)." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "You don't have 2 available bag slots." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63436, 8 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64402, 1 )
		$PlayerVar = GetPlayerVar( -1, 3705 )
		$day = GetSystemTime( "yday" )
		if $PlayerVar != $day
			AddPlayerInfo( -1, "item", 63442, 1 )
			SetPlayerVar( -1, 3705, $day )
		endif
		
	}
	
	function OnOption6(){
		$Item1 = GetPlayerInfo( -1, "item", 63437 )
		if $Item1 < 5
			BC( "dialogbox", "player", -1, "This requires 5 Colorful Luck Cards (Green)." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag space." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63437, 5 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64405, 1 )
	}
	
	function OnOption7(){
		$Item1 = GetPlayerInfo( -1, "item", 63437 )
		if $Item1 < 8
			BC( "dialogbox", "player", -1, "This requires 8 Colorful Luck Cards (Green)." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "You don't have 2 available bag slots." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63437, 8 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64402, 1 )
		$PlayerVar = GetPlayerVar( -1, 3705 )
		$day = GetSystemTime( "yday" )
		if $PlayerVar != $day
			AddPlayerInfo( -1, "item", 63442, 1 )
			SetPlayerVar( -1, 3705, $day )
		endif
		
	}
	
	function OnOption8(){
		$Item1 = GetPlayerInfo( -1, "item", 63438 )
		if $Item1 < 5
			BC( "dialogbox", "player", -1, "This requires 5 Colorful Luck Cards (Blue)." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag space." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63438, 5 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64405, 1 )
	}
	
	function OnOption9(){
		$Item1 = GetPlayerInfo( -1, "item", 63438 )
		if $Item1 < 8
			BC( "dialogbox", "player", -1, "This requires 8 Colorful Luck Cards (Blue)." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "You don't have 2 available bag slots." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63438, 8 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64402, 1 )
		$PlayerVar = GetPlayerVar( -1, 3705 )
		$day = GetSystemTime( "yday" )
		if $PlayerVar != $day
			AddPlayerInfo( -1, "item", 63442, 1 )
			SetPlayerVar( -1, 3705, $day )
		endif
		
	}
	
	function OnOption10(){
		$Item1 = GetPlayerInfo( -1, "item", 63439 )
		if $Item1 < 5
			BC( "dialogbox", "player", -1, "This requires 5 Colorful Luck Cards (Purple)." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag space." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63439, 5 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64405, 1 )
	}
	
	function OnOption11(){
		$Item1 = GetPlayerInfo( -1, "item", 63439 )
		if $Item1 < 8
			BC( "dialogbox", "player", -1, "This requires 8 Colorful Luck Cards (Purple)." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "You don't have 2 available bag slots." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63439, 8 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64402, 1 )
		$PlayerVar = GetPlayerVar( -1, 3705 )
		$day = GetSystemTime( "yday" )
		if $PlayerVar != $day
			AddPlayerInfo( -1, "item", 63442, 1 )
			SetPlayerVar( -1, 3705, $day )
		endif
		
	}
	
	function OnOption12(){
		$Item1 = GetPlayerInfo( -1, "item", 63440 )
		if $Item1 < 5
			BC( "dialogbox", "player", -1, "This requires 5 Colorful Luck Cards (Red)." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag space." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63440, 5 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64405, 1 )
	}
	
	function OnOption13(){
		$Item1 = GetPlayerInfo( -1, "item", 63440 )
		if $Item1 < 8
			BC( "dialogbox", "player", -1, "This requires 8 Colorful Luck Cards (Red)." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "You don't have 2 available bag slots." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63440, 8 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64402, 1 )
		$PlayerVar = GetPlayerVar( -1, 3705 )
		$day = GetSystemTime( "yday" )
		if $PlayerVar != $day
			AddPlayerInfo( -1, "item", 63442, 1 )
			SetPlayerVar( -1, 3705, $day )
		endif
		
	}
	
	function OnOption14(){
		$Item1 = GetPlayerInfo( -1, "item", 63441 )
		if $Item1 < 5
			BC( "dialogbox", "player", -1, "This requires 5 Colorful Luck Cards (Pink)." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag space." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63441, 5 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64405, 1 )
	}
	
	function OnOption15(){
		$Item1 = GetPlayerInfo( -1, "item", 63441 )
		if $Item1 < 8
			BC( "dialogbox", "player", -1, "This requires 8 Colorful Luck Cards (Pink)." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "You don't have 2 available bag slots." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63441, 8 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64402, 1 )
		$PlayerVar = GetPlayerVar( -1, 3705 )
		$day = GetSystemTime( "yday" )
		if $PlayerVar != $day
			AddPlayerInfo( -1, "item", 63442, 1 )
			SetPlayerVar( -1, 3705, $day )
		endif
		
	}