	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/27
	//		Author:???
	//		TaskName:???
	//		TaskID:ITEM-44266.s
	//
	//****************************************
	
	//4026 ????
	//3417 ????????
	
	function OnUseItem(){
		
		//????
//		$del = SubPlayerInfo ( -1, "item", 44266, 1 )
//		if  $del != 0
//			return
//		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 75
			BC("screen","player",-1,"Only LV75 players can use that!")
			return
		endif
		
		$now_yday = GetSystemTime("yday")
		$last_day = GetPlayerVar(-1,4026)
		$ci = GetPlayerVar(-1,3417)
		
		//??????2?
		if $now_yday == $last_day
			if $ci >= 1
				BC("screen","player",-1,"You can only use 2 Photo Albums a day!")
				return
			endif
		endif
		
		//???????,???????0
		if $now_yday != $last_day
			SetPlayerVar(-1,3417,0)
		endif
		
		//???
		if $now_yday != $last_day
			$del = SubPlayerInfo ( -1, "item", 44266, 1 )
			if  $del == 0
				$suiji = RandomNumber(1,4)
				if $suiji == 1
					DropMonsterItems(-1,90190)
					SetPlayerVar(-1,4026,$now_yday)
				endif
				if $suiji == 2
					DropMonsterItems(-1,90191)
					SetPlayerVar(-1,4026,$now_yday)
				endif
				if $suiji == 3
					DropMonsterItems(-1,90192)
					SetPlayerVar(-1,4026,$now_yday)
				endif
				if $suiji == 4
					DropMonsterItems(-1,90193)
					SetPlayerVar(-1,4026,$now_yday)
				endif
			endif
		endif
		
		if $now_yday == $last_day
			if $ci < 1
				$del = SubPlayerInfo ( -1, "item", 44266, 1 )
				if  $del == 0
				$suiji = RandomNumber(1,4)
					if $suiji == 1
						DropMonsterItems(-1,90190)
						SetPlayerVar(-1,3417,1)
					endif
					if $suiji == 2
						DropMonsterItems(-1,90191)
						SetPlayerVar(-1,3417,1)
					endif
					if $suiji == 3
						DropMonsterItems(-1,90192)
						SetPlayerVar(-1,3417,1)
					endif
					if $suiji == 4
						DropMonsterItems(-1,90193)
						SetPlayerVar(-1,3417,1)
					endif
				endif
			endif
		endif
		
	}
			
		
		
		