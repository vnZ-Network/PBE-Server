	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/12/07
	//		Author:???
	//		TaskName:NPC-24.s
	//		TaskID:2010??
	//		2011-12-20??:???
	//****************************************
	
	function OnRequest(){
		
			$year = GetSystemTime("year")
			$month = GetSystemTime("month")
			$mday = GetSystemTime("mday")

			if $year == 2011
				if $month != 12
					DisableNpcOption(1)
					DisableNpcOption(2)
				else
					if $mday < 27
						DisableNpcOption(1)
						DisableNpcOption(2)
					endif
				endif
			else
				if $month != 1
					DisableNpcOption(1)
					DisableNpcOption(2)
				else
					if $mday > 15
						DisableNpcOption(1)
						DisableNpcOption(2)
					endif
				endif
			endif
			
			if $year == 2011
				if $month != 12
					DisableNpcOption(0)
				else
					if $mday < 27
						DisableNpcOption(0)
					endif
				endif
			else
				if $month != 1
					DisableNpcOption(0)
				else
					if $mday > 7
						DisableNpcOption(0)
					endif
				endif
			endif
			
	}

	function OnOption0(){
//????????
			$yday = GetSystemTime("yday")
			$playerid = GetPlayerID()
			$playerday = GetPlayerVar($playerid,4014)
			$mday = GetSystemTime("mday")
			$level = GetPlayerInfo($playerid,"level")


			$year = GetSystemTime("year")
			$month = GetSystemTime("month")
			$mday = GetSystemTime("mday")

			if $year == 2011
				if $month != 12
					BC("dialogbox","player",-1,"The New Year Event is closed, but item exchange is still available.")
					return
				else
					if $mday < 27
						BC("dialogbox","player",-1,"The New Year Event is closed, but item exchange is still available.")
						return
					endif
				endif
			else
				if $month != 1
					BC("dialogbox","player",-1,"The New Year Event is closed, but item exchange is still available.")
					return
				else
					if $mday > 7
						BC("dialogbox","player",-1,"The New Year Event is closed, but item exchange is still available.")
						return
					endif
				endif
			endif

			if $level < 60
				BC("dialogbox","player",-1,"You must be at least LV60 to take part in the New Year Event!")
				return
			endif
			if $playerday == $yday
				BC("dialogbox","player",-1,"You've already received one, please come back tomorrow.")
				return
			endif
			
			$taskid = 1770
			while $taskid <= 1772
				$taskacced = IsTaskAccept($playerid,$taskid)
				if $taskacced == 0
					BC("dialogbox","player",-1,"Please finish the New Year quest first.")
					return
				endif
				$taskid = $taskid + 1
			endwhile
			
			$count = GetTaskCount($playerid)
			if $count > 20
				BC("dialogbox","player",-1,"Your quest list is full, can't acquire quest.")
				return
			endif
			
			$taskid = RandomNumber(1770,1772)
			AcceptTask($playerid,$taskid)
			SetPlayerVar($playerid,4014,$yday)
		
	}

//44145	???
//39 64414	????Lv4
//52 59312	????(??)
	function OnOption1(){
//?1??????????
		$item1 = GetPlayerInfo(-1,"item",44145)
		if $item1 < 1
			BC("dialogbox","player",-1,"You didn't bring a Magic Wand!")
			return
		endif
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$result = SubPlayerInfo(-1,"item",44145,1)
		if $result == 0
			AddPlayerInfo(-1,"item",64414,5)
		else
			BC("dialogbox","player",-1,"You didn't bring a Magic Wand.")
		endif
		
	}

	function OnOption2(){
//?3??????????
		$item1 = GetPlayerInfo(-1,"item",44145)
		if $item1 < 3
			BC("dialogbox","player",-1,"You didn't bring 3 Magic Wands!")
			return
		endif
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif
			
		$result = SubPlayerInfo(-1,"item",44145,3)
		if $result == 0
			AddPlayerInfo(-1,"item",59312,2)
		else
			BC("dialogbox","player",-1,"You didn't bring 3 Magic Wands.")
		endif
		
	}
