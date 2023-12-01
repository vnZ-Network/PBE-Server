	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/09/14
	//		Author:???
	//		TaskName:NPC-2049.s
	//		TaskID:??? ??????
	//
	//****************************************


	//???,?????????
	//3754  ???????????
	//3755  ??????????
	//2012-3-9????8 9 ????
	function OnRequest(){

		$lv = GetPlayerInfo( -1 , "level" )
		$today = GetSystemTime( "yday" )
		$finishday = GetPlayerVar( -1 , 3754 )
		$acceptday = GetPlayerVar( -1 , 3755 )


		//??????????????????
		$result = IsTaskAccept( -1 , 3520 )
		if $result == 0
			call disall()
			return
		endif

		$result = IsTaskAccept( -1 , 3521 )
		if $result == 0
			call disall()
			return
		endif

		$result = IsTaskAccept( -1 , 3522 )
		if $result == 0
			call disall()
			return
		endif

		$result = IsTaskAccept( -1 , 3523 )
		if $result == 0
			call disall()
			return
		endif

		$result = IsTaskAccept( -1 , 3524 )
		if $result == 0
			call disall()
			return
		endif

		$result = IsTaskAccept( -1 , 3525 )
		if $result == 0
			call disall()
			return
		endif

		$result = IsTaskAccept( -1 , 3526 )
		if $result == 0
			call disall()
			return
		endif

		$result = IsTaskAccept( -1 , 3527 )
		if $result == 0
			call disall()
			return
		endif

		$result = IsTaskAccept( -1 , 1827 )
		if $result == 0
			call disall()
			return
		endif

		$result = IsTaskAccept( -1 , 1828 )
		if $result == 0
			call disall()
			return
		endif


		//?????,?????????????1????????
		if $finishday == $today
			if $finishday == $acceptday
				call disall()
				return
			endif
		endif


		//0-19 ??????
		if $lv >= 0
			if $lv <= 19
				call disall()
				return
			endif
		endif

		//20-39 ????
		if $lv >= 20
			if $lv <= 39
				call enn0()
				return
			endif
		endif

		//???????????
		$month = GetSystemTime( "month" )
		$mday = GetSystemTime( "mday" )
		$week = GetSystemTime( "week" )
		$today = GetSystemTime( "yday" )

		$random = $month + $mday
		$random = $random + $week
		$random = $random + $today

		//40-49
		if $lv >= 40
			if $lv <= 49
				$mod = $random % 2
				if $mod == 0
					call enn1()
				endif
				if $mod == 1
					call enn2()
				endif
				return
			endif
		endif

		//50-64 1 2 3 4
		if $lv >= 50
			if $lv <= 64
				$mod = $random % 4
				if $mod == 0
					call enn1()
				endif
				if $mod == 1
					call enn2()
				endif
				if $mod == 2
					call enn3()
				endif
				if $mod == 3
					call enn4()
				endif
				return
			endif
		endif

		//65-79
		if $lv >= 65
			if $lv <= 79
				$random = $month + $mday
				$week = $week * 11
				$random = $random + $week
				$random = $random + $today
				$mod = $random % 6
				if $mod == 0
					call enn1()
				endif
				if $mod == 1
					call enn2()
				endif
				if $mod == 2
					call enn3()
				endif
				if $mod == 3
					call enn4()
				endif
				if $mod == 4
					call enn5()
				endif
				if $mod == 5
					call enn6()
				endif
				return
			endif
		endif

		//80-200
		if $lv >= 80
			if $lv <= 150
				//????95
				if $lv < 95
					$mod = $random % 7
					if $mod == 0
						call enn1()
					endif
					if $mod == 1
						call enn2()
					endif
					if $mod == 2
						call enn3()
					endif
					if $mod == 3
						call enn4()
					endif
					if $mod == 4
						call enn5()
					endif
					if $mod == 5
						call enn6()
					endif
					if $mod == 6
						call enn7()
					endif
					return
				endif
				//????110 ??1/4????95? ????
				if $lv < 110
					$week = GetSystemTime("week")
					$mod = 0
					if $week == 3
						$mod = $random % 4
					endif
					if $week == 5
						$mod = $random % 4
					endif
					if $week == 7
						$mod = $random % 4
					endif
					if $mod == 3
						call enn8()
						return
					else
						$mod = $random % 7
						if $mod == 0
							call enn1()
						endif
						if $mod == 1
							call enn2()
						endif
						if $mod == 2
							call enn3()
						endif
						if $mod == 3
							call enn4()
						endif
						if $mod == 4
							call enn5()
						endif
						if $mod == 5
							call enn6()
						endif
						if $mod == 6
							call enn7()
						endif
						return
					endif
				endif
				//???????? ?????if?else
				if $lv <= 150
					$week = GetSystemTime("week")
					$mod = 0
					if $week == 3
						$mod = $random % 4
					endif
					if $week == 5
						$mod = $random % 4
					endif
					if $week == 7
						$mod = $random % 4
					endif
					if $mod == 3
						call enn8()
						return
					endif
					$mod = $random % 8
					if $mod == 7
						call enn9()
						return
					endif
					$mod = $random % 7
					if $mod == 0
						call enn1()
					endif
					if $mod == 1
						call enn2()
					endif
					if $mod == 2
						call enn3()
					endif
					if $mod == 3
						call enn4()
					endif
					if $mod == 4
						call enn5()
					endif
					if $mod == 5
						call enn6()
					endif
					if $mod == 6
						call enn7()
					endif
					return
				endif
			endif
		endif

	}


	function OnOption0(){

		$today = GetSystemTime( "yday" )
		$lastday = GetPlayerVar( -1 , 3755 )
		if $today == $lastday
			BC( "dialogbox", "player", -1, "You have received the quest once today!" )
			return
		endif
		$result = AcceptTask( -1 , 3520 )
		//???????????
		if $result == 0
			SetPlayerVar( -1 , 3755 , $today )
			//????-START
			$TJ_join_number = GetGlobalVar(923)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(923 , $TJ_join_number)
			//????-END
			SetPlayerActLog(-1,19,0)
		endif

	}


	function OnOption1(){

		$today = GetSystemTime( "yday" )
		$lastday = GetPlayerVar( -1 , 3755 )
		if $today == $lastday
			BC( "dialogbox", "player", -1, "You have received the quest once today!" )
			return
		endif
		$result = AcceptTask( -1 , 3521 )
		//???????????
		if $result == 0
			SetPlayerVar( -1 , 3755 , $today )
			//????-START
			$TJ_join_number = GetGlobalVar(923)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(923 , $TJ_join_number)
			//????-END
			SetPlayerActLog(-1,19,0)
		endif

	}

	function OnOption2(){

		$today = GetSystemTime( "yday" )
		$lastday = GetPlayerVar( -1 , 3755 )
		if $today == $lastday
			BC( "dialogbox", "player", -1, "You have received the quest once today!" )
			return
		endif
		$result = AcceptTask( -1 , 3522 )
		//???????????
		if $result == 0
			SetPlayerVar( -1 , 3755 , $today )
			//????-START
			$TJ_join_number = GetGlobalVar(923)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(923 , $TJ_join_number)
			//????-END
			SetPlayerActLog(-1,19,0)
		endif

	}

	function OnOption3(){

		$today = GetSystemTime( "yday" )
		$lastday = GetPlayerVar( -1 , 3755 )
		if $today == $lastday
			BC( "dialogbox", "player", -1, "You have received the quest once today!" )
			return
		endif
		$result = AcceptTask( -1 , 3523 )
		//???????????
		if $result == 0
			SetPlayerVar( -1 , 3755 , $today )
			//????-START
			$TJ_join_number = GetGlobalVar(923)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(923 , $TJ_join_number)
			//????-END
			SetPlayerActLog(-1,19,0)
		endif

	}

	function OnOption4(){

		$today = GetSystemTime( "yday" )
		$lastday = GetPlayerVar( -1 , 3755 )
		if $today == $lastday
			BC( "dialogbox", "player", -1, "You have received the quest once today!" )
			return
		endif
		$result = AcceptTask( -1 , 3524 )
		//???????????
		if $result == 0
			SetPlayerVar( -1 , 3755 , $today )
			//????-START
			$TJ_join_number = GetGlobalVar(923)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(923 , $TJ_join_number)
			//????-END
			SetPlayerActLog(-1,19,0)
		endif

	}

	function OnOption5(){

		$today = GetSystemTime( "yday" )
		$lastday = GetPlayerVar( -1 , 3755 )
		if $today == $lastday
			BC( "dialogbox", "player", -1, "You have received the quest once today!" )
			return
		endif
		$result = AcceptTask( -1 , 3525 )
		//???????????
		if $result == 0
			SetPlayerVar( -1 , 3755 , $today )
			//????-START
			$TJ_join_number = GetGlobalVar(923)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(923 , $TJ_join_number)
			//????-END
			SetPlayerActLog(-1,19,0)
		endif

	}

	function OnOption6(){

		$today = GetSystemTime( "yday" )
		$lastday = GetPlayerVar( -1 , 3755 )
		if $today == $lastday
			BC( "dialogbox", "player", -1, "You have received the quest once today!" )
			return
		endif
		$result = AcceptTask( -1 , 3526 )
		//???????????
		if $result == 0
			SetPlayerVar( -1 , 3755 , $today )
			//????-START
			$TJ_join_number = GetGlobalVar(923)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(923 , $TJ_join_number)
			//????-END
			SetPlayerActLog(-1,19,0)
		endif

	}

	function OnOption7(){

		$today = GetSystemTime( "yday" )
		$lastday = GetPlayerVar( -1 , 3755 )
		if $today == $lastday
			BC( "dialogbox", "player", -1, "You have received the quest once today!" )
			return
		endif
		$result = AcceptTask( -1 , 3527 )
		//???????????
		if $result == 0
			SetPlayerVar( -1 , 3755 , $today )
			//????-START
			$TJ_join_number = GetGlobalVar(923)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(923 , $TJ_join_number)
			//????-END
			SetPlayerActLog(-1,19,0)
		endif

	}

	function OnOption8(){

		$today = GetSystemTime( "yday" )
		$lastday = GetPlayerVar( -1 , 3755 )
		if $today == $lastday
			BC( "dialogbox", "player", -1, "You have received the quest once today!" )
			return
		endif
		$result = AcceptTask( -1 , 1827 )
		//???????????
		if $result == 0
			SetPlayerVar( -1 , 3755 , $today )
			//????-START
			$TJ_join_number = GetGlobalVar(923)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(923 , $TJ_join_number)
			//????-END
			SetPlayerActLog(-1,19,0)
		endif

	}

	function OnOption9(){

		$today = GetSystemTime( "yday" )
		$lastday = GetPlayerVar( -1 , 3755 )
		if $today == $lastday
			BC( "dialogbox", "player", -1, "You have received the quest once today!" )
			return
		endif
		$result = AcceptTask( -1 , 1828 )
		//???????????
		if $result == 0
			SetPlayerVar( -1 , 3755 , $today )
			//????-START
			$TJ_join_number = GetGlobalVar(923)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(923 , $TJ_join_number)
			//????-END
			SetPlayerActLog(-1,19,0)
		endif

	}


	function disall(){

		DisableNpcOption(0)
		DisableNpcOption(1)
		DisableNpcOption(2)
		DisableNpcOption(3)
		DisableNpcOption(4)
		DisableNpcOption(5)
		DisableNpcOption(6)
		DisableNpcOption(7)
		DisableNpcOption(8)
		DisableNpcOption(9)

	}
	function enn0(){

//		DisableNpcOption(0)
		DisableNpcOption(1)
		DisableNpcOption(2)
		DisableNpcOption(3)
		DisableNpcOption(4)
		DisableNpcOption(5)
		DisableNpcOption(6)
		DisableNpcOption(7)
		DisableNpcOption(8)
		DisableNpcOption(9)

	}
	function enn1(){

		DisableNpcOption(0)
//		DisableNpcOption(1)
		DisableNpcOption(2)
		DisableNpcOption(3)
		DisableNpcOption(4)
		DisableNpcOption(5)
		DisableNpcOption(6)
		DisableNpcOption(7)
		DisableNpcOption(8)
		DisableNpcOption(9)

	}
	function enn2(){

		DisableNpcOption(0)
		DisableNpcOption(1)
//		DisableNpcOption(2)
		DisableNpcOption(3)
		DisableNpcOption(4)
		DisableNpcOption(5)
		DisableNpcOption(6)
		DisableNpcOption(7)
		DisableNpcOption(8)
		DisableNpcOption(9)

	}
	function enn3(){

		DisableNpcOption(0)
		DisableNpcOption(1)
		DisableNpcOption(2)
//		DisableNpcOption(3)
		DisableNpcOption(4)
		DisableNpcOption(5)
		DisableNpcOption(6)
		DisableNpcOption(7)
		DisableNpcOption(8)
		DisableNpcOption(9)

	}
	function enn4(){

		DisableNpcOption(0)
		DisableNpcOption(1)
		DisableNpcOption(2)
		DisableNpcOption(3)
//		DisableNpcOption(4)
		DisableNpcOption(5)
		DisableNpcOption(6)
		DisableNpcOption(7)
		DisableNpcOption(8)
		DisableNpcOption(9)

	}
	function enn5(){

		DisableNpcOption(0)
		DisableNpcOption(1)
		DisableNpcOption(2)
		DisableNpcOption(3)
		DisableNpcOption(4)
//		DisableNpcOption(5)
		DisableNpcOption(6)
		DisableNpcOption(7)
		DisableNpcOption(8)
		DisableNpcOption(9)

	}
	function enn6(){

		DisableNpcOption(0)
		DisableNpcOption(1)
		DisableNpcOption(2)
		DisableNpcOption(3)
		DisableNpcOption(4)
		DisableNpcOption(5)
//		DisableNpcOption(6)
		DisableNpcOption(7)
		DisableNpcOption(8)
		DisableNpcOption(9)

	}
	function enn7(){

		DisableNpcOption(0)
		DisableNpcOption(1)
		DisableNpcOption(2)
		DisableNpcOption(3)
		DisableNpcOption(4)
		DisableNpcOption(5)
		DisableNpcOption(6)
//		DisableNpcOption(7)
		DisableNpcOption(8)
		DisableNpcOption(9)

	}
	function enn8(){

		DisableNpcOption(0)
		DisableNpcOption(1)
		DisableNpcOption(2)
		DisableNpcOption(3)
		DisableNpcOption(4)
		DisableNpcOption(5)
		DisableNpcOption(6)
		DisableNpcOption(7)
//		DisableNpcOption(8)
		DisableNpcOption(9)

	}
	function enn9(){

		DisableNpcOption(0)
		DisableNpcOption(1)
		DisableNpcOption(2)
		DisableNpcOption(3)
		DisableNpcOption(4)
		DisableNpcOption(5)
		DisableNpcOption(6)
		DisableNpcOption(7)
		DisableNpcOption(8)
//		DisableNpcOption(9)

	}
