	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/06
	//		Author:???
	//		TaskName:????????
	//		TaskID:HD-yatelandisidefuchou-NPC-1722.s
	//
	//****************************************

	//	3415	?????????????????
	function OnRequest(){

		$level = GetPlayerInfo(-1 , "level")
		if $level < 50
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif

		call IsExistQuest()
		if $is_exist_quest == 1
			DisableNpcOption(0)
		endif

	}

		//  ?????????,???????
	function OnOption0(){

		$level = GetPlayerInfo( -1, "level" )
		if $level < 50
			return
		endif

		call IsExistQuest()
		if $is_exist_quest == 1
			BC("dialogbox", "player", -1, "Please first complete the quest you previously accepted!" )
			return
		endif

		$today_week = GetNowWeek()
		$last_week = GetPlayerVar(-1 , 3415)
		$cishu = GetPlayerVar(-1 , 3416)

		if $today_week == $last_week
			if $cishu >= 3
				BC("dialogbox", "player", -1, "You've already accepted three quests this week, come again next week!" )
				return
			endif
			$cishu = $cishu + 1
			SetPlayerVar(-1,3416,$cishu)
		else
			SetPlayerVar(-1 , 3416 , 1)
			SetPlayerVar(-1 , 3415 , $today_week)
		endif

		//??????

		if $level >= 50
			if $level < 70
				$chujiefuchouling = RandomNumber ( 0, 5 )
				if $chujiefuchouling == 0
					$revalue = AcceptTask( -1, 1845 )
				endif
				if $chujiefuchouling == 1
					$revalue = AcceptTask( -1, 1846 )
				endif
				if $chujiefuchouling == 2
					$revalue = AcceptTask( -1, 1847 )
				endif
				if $chujiefuchouling == 3
					$revalue = AcceptTask( -1, 1848 )
				endif
				if $chujiefuchouling == 4
					$revalue = AcceptTask( -1, 1849 )
				endif
				if $chujiefuchouling == 5
					$revalue = AcceptTask( -1, 1850 )
				endif
			endif
		endif

		if $level >= 70
			if $level < 100
				$chujiefuchouling = RandomNumber ( 0, 5 )
				if $chujiefuchouling == 0
					$revalue = AcceptTask( -1, 1848 )
				endif
				if $chujiefuchouling == 1
					$revalue = AcceptTask( -1, 1849 )
				endif
				if $chujiefuchouling == 2
					$revalue = AcceptTask( -1, 1850 )
				endif
				if $chujiefuchouling == 3
					$revalue = AcceptTask( -1, 1851 )
				endif
				if $chujiefuchouling == 4
					$revalue = AcceptTask( -1, 1852 )
				endif
				if $chujiefuchouling == 5
					$revalue = AcceptTask( -1, 1853 )
				endif
			endif
		endif

		if $level >= 100
			if $level < 999
				$chujiefuchouling = RandomNumber ( 0, 5 )
				if $chujiefuchouling == 0
					$revalue = AcceptTask( -1, 1851 )
				endif
				if $chujiefuchouling == 1
					$revalue = AcceptTask( -1, 1852 )
				endif
				if $chujiefuchouling == 2
					$revalue = AcceptTask( -1, 1853 )
				endif
				if $chujiefuchouling == 3
					$revalue = AcceptTask( -1, 1854 )
				endif
				if $chujiefuchouling == 4
					$revalue = AcceptTask( -1, 1855 )
				endif
				if $chujiefuchouling == 5
					$revalue = AcceptTask( -1, 1856 )
				endif
			endif
		endif

				//????-START
				$TJ_join_number = GetGlobalVar(892)
				$TJ_join_number = $TJ_join_number + $team_count
				SetGlobalVar(892 , $TJ_join_number)
				//????-END
				
				SetPlayerActLog(-1,24,0)

	}

	function OnOption1(){

		$num = GetPlayerInfo (-1 , "item" , 44257)
		if $num < 12
			BC("dialogbox", "player", -1, "Sorry, but you need 12 Overlord Proofs." )
			return
		endif

		$num = GetPlayerInfo (-1 , "nullitem" , 0)
		if $num < 1
			BC("dialogbox", "player", -1, "Sorry, you don't have enough space in your bag!" )
			return
		endif

		$num = SubPlayerInfo (-1 , "item" , 44257 , 12)
		if $num == 0
			AddPlayerInfo(-1 , "item" , 44258 , 1)
		endif
	}

	function IsExistQuest(){

		$taskid = 1845
		$is_exist_quest = 0
		while $taskid <= 1856
			$result = IsTaskAccept( -1, $taskid )
			if $result == 0
				$is_exist_quest = 1
				return
			endif
			$taskid = $taskid + 1
		endwhile

	}
