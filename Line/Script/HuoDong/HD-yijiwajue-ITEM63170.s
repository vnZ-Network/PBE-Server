	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/10
	//		Author:??
	//		TaskName:HD-yijiwajue-ITEM63170.s
	//		TaskID:??????,???????
	//
	//****************************************
	
	function OnUseItem(){
	
		$map_id = GetPlayerInfo( -1, "mapid" )
		$x = GetPlayerInfo( -1, "mapx" )
		$y = GetPlayerInfo( -1, "mapy" )
		
		//?
		$now_second =  GetSystemTime( "second")
		//??
		$now_minute =  GetSystemTime( "minute")
		//??
		$now_hour =  GetSystemTime( "hour" )
		
		//????????
		if $map_id != 132
			BC( "screen", "player", -1, "The shovel may not be used outside the Ruins map." )
			return
		endif
			

		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "chat", "player", -1, "You have not got enough space in your bag!" )
			return
		endif
		//---------------------------------------??????
		$n = RandomNumber ( 1, 100 )
		$value = GetPlayerVar( -1, 3212 )
		if $value != 0
			if $value == 1
				if $x < 53
					if $y < 59
						$n = RandomNumber ( 1, 80 )
						BC( "chat", "player", -1, "You began digging in the area specified by the divination...." )
					endif	
				endif
			endif
			if $value == 2
				if $x > 57
					if $y < 59
						$n = RandomNumber ( 1, 80 )
						BC( "chat", "player", -1, "You began digging in the area specified by the divination...." )
					endif	
				endif
			endif
			if $value == 3
				if $x < 53
					if $y > 63
						$n = RandomNumber ( 1, 80 )
						BC( "chat", "player", -1, "You began digging in the area specified by the divination...." )
					endif	
				endif
			endif
			if $value == 4
				if $x > 56
					if $y > 63
						$n = RandomNumber ( 1, 80 )
						BC( "chat", "player", -1, "You began digging in the area specified by the divination...." )
					endif	
				endif
			endif
		endif
		SetPlayerVar( -1, 3212 , 0)
		//---------------------------------????????
		//$n = RandomNumber ( 1, 100 )
		if $n > 80
			BC( "screen", "player", -1, "You dig, but find nothing." )
			SubPlayerInfo( -1, "item", 63170, 1)
			return
		endif
					
		$level = GetPlayerInfo(-1 , "level")
		//??????
		$revalue = SubPlayerInfo( -1, "item", 63170, 1)
		if $revalue == 0
			BC( "screen", "player", -1, "You found something." )
			//??????
			$a = $x * $y
			$b = $now_second / 10
			$c = $now_minute
			$d = $now_hour
			//--------------------------------
			$e = $a * $b
			$f = $c * $d
			$g = $e + $f
			//-------------------------------
			$control_numbet = $g % 10
			//60????????
			if $level < 60
				if $control_numbet == 0
					DropMonsterItems(-1,60031)
				endif
				if $control_numbet == 1
					DropMonsterItems(-1,60032)
				endif
				if $control_numbet == 2
					DropMonsterItems(-1,60033)
				endif
				if $control_numbet == 3
					DropMonsterItems(-1,60034)
				endif
				if $control_numbet == 4
					DropMonsterItems(-1,60035)
				endif
				if $control_numbet == 5
					DropMonsterItems(-1,60036)
				endif
				if $control_numbet == 6
					DropMonsterItems(-1,60037)
				endif
				if $control_numbet == 7
					DropMonsterItems(-1,60038)
				endif
				if $control_numbet == 8
					DropMonsterItems(-1,60039)
				endif
				if $control_numbet == 9
					DropMonsterItems(-1,60040)
				endif
			else
				if $control_numbet == 0
					DropMonsterItems(-1,60041)
				endif
				if $control_numbet == 1
					DropMonsterItems(-1,60042)
				endif
				if $control_numbet == 2
					DropMonsterItems(-1,60043)
				endif
				if $control_numbet == 3
					DropMonsterItems(-1,60044)
				endif
				if $control_numbet == 4
					DropMonsterItems(-1,60045)
				endif
				if $control_numbet == 5
					DropMonsterItems(-1,60046)
				endif
				if $control_numbet == 6
					DropMonsterItems(-1,60047)
				endif
				if $control_numbet == 7
					DropMonsterItems(-1,60048)
				endif
				if $control_numbet == 8
					DropMonsterItems(-1,60049)
				endif
				if $control_numbet == 9
					DropMonsterItems(-1,60050)
				endif
			endif
		endif

	}