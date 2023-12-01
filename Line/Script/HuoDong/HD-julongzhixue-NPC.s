	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/07
	//		Author:??
	//		TaskName:HD-julongzhixue-NPC.s
	//		TaskID:????NPC??????
	//
	//****************************************

	//1??? 63130
	function OnOption0(){
		$playerid = GetPlayerID()
		$level = GetPlayerInfo(-1,"level")
		if $level < 20
			BC( "dialogbox", "player", -1, "You are too low level to receive reward." )
			return
		endif
		$today_time = GetSystemTime( "yday" )
		$last_days = GetPlayerVar(-1 , 3610)
		if $today_time == $last_days
			BC( "dialogbox", "player", -1, "You have completed this today. Come back tomorrow." )
			return
		endif

		$itemIDbase = 63129
		$key = 5
		$itemid = $itemIDbase + $key
		$count = GetPlayerInfo(-1,"item",$itemid)
		if $count > 0
			$result = SubPlayerInfo(-1,"item",$itemid,1)
			if $result == 0
				AddPlayerInfo( -1, "exp", 158775 )
				$ran_number = RandomNumber(1 , 4096)
				if $ran_number == 1
					AddPlayerInfo( -1, "item",63243, 1 )
				endif
				SetPlayerVar( -1 , 3610, $today_time)
				BC("screen","player",-1,"Successfully exchanged a Dragonscale LV5. You can only do this once per day.")
			//??-START
				$TJ_join_number = GetGlobalVar(922)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(922 , $TJ_join_number)
			//??-END
			return
			endif
		endif
		$key -= 1

		$itemid = $itemIDbase + $key
		$count = GetPlayerInfo(-1,"item",$itemid)
		if $count > 0
			$result = SubPlayerInfo(-1,"item",$itemid,1)
			if $result == 0
				AddPlayerInfo( -1, "exp", 90720 )
				$ran_number = RandomNumber(1 , 4096)
				if $ran_number == 1
					AddPlayerInfo( -1, "item",63243, 1 )
				endif
				SetPlayerVar( -1 , 3610, $today_time)
				BC("screen","player",-1,"Successfully exchanged a Dragonscale LV4. You can only do this once per day.")
			//??-START
				$TJ_join_number = GetGlobalVar(922)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(922 , $TJ_join_number)
			//??-END
			return
			endif
		endif
		$key -= 1

		$itemid = $itemIDbase + $key
		$count = GetPlayerInfo(-1,"item",$itemid)
		if $count > 0
			$result = SubPlayerInfo(-1,"item",$itemid,1)
			if $result == 0
				AddPlayerInfo( -1, "exp", 50880 )
				$ran_number = RandomNumber(1 , 16400)
				if $ran_number == 1
					AddPlayerInfo( -1, "item",63243, 1 )
				endif
				BC("screen","player",-1,"Successfully exchanged a Dragonscale LV3. You can only do this once per day.")
			//??-START
				$TJ_join_number = GetGlobalVar(922)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(922 , $TJ_join_number)
			//??-END
			return
			endif
		endif
		$key -= 1

		$itemid = $itemIDbase + $key
		$count = GetPlayerInfo(-1,"item",$itemid)
		if $count > 0
			$result = SubPlayerInfo(-1,"item",$itemid,1)
			if $result == 0
				AddPlayerInfo( -1, "exp", 24080 )
				$ran_number = RandomNumber(1 , 16400)
				if $ran_number == 1
					AddPlayerInfo( -1, "item",63243, 1 )
				endif
				SetPlayerVar( -1 , 3610, $today_time)
				BC("screen","player",-1,"Successfully exchanged a Dragonscale LV2. You can only do this once per day.")
			//??-START
				$TJ_join_number = GetGlobalVar(922)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(922 , $TJ_join_number)
			//??-END
			return
			endif
		endif
		$key -= 1

		$itemid = $itemIDbase + $key
		$count = GetPlayerInfo(-1,"item",$itemid)
		if $count > 0
			$result = SubPlayerInfo(-1,"item",$itemid,1)
			if $result == 0
				AddPlayerInfo( -1, "exp", 7920 )
//				$ran_number = RandomNumber(1 , 16400)
//				if $ran_number == 1
//					AddPlayerInfo( -1, "item",63243, 1 )
//				endif
				SetPlayerVar( -1 , 3610, $today_time)
				BC("screen","player",-1,"Successfully exchanged a Dragonscale LV1. You can only do this once per day.")
//			//??-START
//				$TJ_join_number = GetGlobalVar(922)
//				$TJ_join_number = $TJ_join_number + 1
//				SetGlobalVar(922 , $TJ_join_number)
//			//??-END
			return
			endif
		endif
		$key -= 1
		BC("dialogbox","player",-1,"You don't have Dragonscale between LV1 and LV5.")
	}

	function OnOption1(){
		$playerid = GetPlayerID()
		$level = GetPlayerInfo(-1,"level")
		if $level < 30
			BC( "dialogbox", "player", -1, "You are too low level to receive reward." )
			return
		endif
		$today_time = GetSystemTime( "yday" )
		$last_days = GetPlayerVar(-1 , 3610)
		if $today_time == $last_days
			BC( "dialogbox", "player", -1, "You have completed this today. Come back tomorrow." )
			return
		endif

		$itemIDbase = 63129
		$key = 10
		$itemid = $itemIDbase + $key
		$count = GetPlayerInfo(-1,"item",$itemid)
		if $count > 0
			$result = SubPlayerInfo(-1,"item",$itemid,1)
			if $result == 0
				$ran_number = RandomNumber(1 , 1024)
				if $ran_number == 1
					AddPlayerInfo( -1, "item",63243, 1 )
				endif
				AddPlayerInfo( -1, "exp", 1107000 )
				AddPlayerInfo( -1, "item", 1, 3 )
				SetPlayerVar( -1 , 3610, $today_time)
				BC("screen","player",-1,"Successfully exchanged a Dragonscale LV10. You can only do this once per day.")
			//??-START
				$TJ_join_number = GetGlobalVar(922)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(922 , $TJ_join_number)
			//??-END
			return
			endif
		endif
		$key -= 1

		$itemid = $itemIDbase + $key
		$count = GetPlayerInfo(-1,"item",$itemid)
		if $count > 0
			$result = SubPlayerInfo(-1,"item",$itemid,1)
			if $result == 0
				$ran_number = RandomNumber(1 , 1024)
				if $ran_number == 1
					AddPlayerInfo( -1, "item",63243, 1 )
				endif
				AddPlayerInfo( -1, "exp", 811566)
				SetPlayerVar( -1 , 3610, $today_time)
				BC("screen","player",-1,"Successfully exchanged a Dragonscale LV9. You can only do this once per day.")
			//??-START
				$TJ_join_number = GetGlobalVar(922)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(922 , $TJ_join_number)
			//??-END
			return
			endif
		endif
		$key -= 1

		$itemid = $itemIDbase + $key
		$count = GetPlayerInfo(-1,"item",$itemid)
		if $count > 0
			$result = SubPlayerInfo(-1,"item",$itemid,1)
			if $result == 0
				$ran_number = RandomNumber(1 , 1024)
				if $ran_number == 1
					AddPlayerInfo( -1, "item",63243, 1 )
				endif
				AddPlayerInfo( -1, "exp", 573092 )
				SetPlayerVar( -1 , 3610, $today_time)
				BC("screen","player",-1,"Successfully exchanged a Dragonscale LV8. You can only do this once per day.")
			//??-START
				$TJ_join_number = GetGlobalVar(922)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(922 , $TJ_join_number)
			//??-END
			return
			endif
		endif
		$key -= 1

		$itemid = $itemIDbase + $key
		$count = GetPlayerInfo(-1,"item",$itemid)
		if $count > 0
			$result = SubPlayerInfo(-1,"item",$itemid,1)
			if $result == 0
				$ran_number = RandomNumber(1 , 4096)
				if $ran_number == 1
					AddPlayerInfo( -1, "item",63243, 1 )
				endif
				AddPlayerInfo( -1, "exp", 390600 )
				SetPlayerVar( -1 , 3610, $today_time)
				BC("screen","player",-1,"Successfully exchanged a Dragonscale LV7. You can only do this once per day.")
			//??-START
				$TJ_join_number = GetGlobalVar(922)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(922 , $TJ_join_number)
			//??-END
			return
			endif
		endif
		$key -= 1

		$itemid = $itemIDbase + $key
		$count = GetPlayerInfo(-1,"item",$itemid)
		if $count > 0
			$result = SubPlayerInfo(-1,"item",$itemid,1)
			if $result == 0
				$ran_number = RandomNumber(1 , 4096)
				if $ran_number == 1
					AddPlayerInfo( -1, "item",63243, 1 )
				endif
				AddPlayerInfo( -1, "exp", 257466 )
				SetPlayerVar( -1 , 3610, $today_time)
				BC("screen","player",-1,"Successfully exchanged a Dragonscale LV6. You can only do this once per day.")
			//??-START
				$TJ_join_number = GetGlobalVar(922)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(922 , $TJ_join_number)
			//??-END
			return
			endif
		endif
		$key -= 1
		BC("dialogbox","player",-1,"You don't have Dragonscale between LV6 and LV10.")
	}

	//??11???
	function OnOption2(){
		$level = GetPlayerInfo(-1,"level")
		if $level < 45
			BC( "dialogbox", "player", -1, "You are too low level to receive reward." )
			return
		endif
		$today_time = GetSystemTime( "yday" )
		$last_days = GetPlayerVar(-1 , 3610)

		if $today_time == $last_days
			BC( "dialogbox", "player", -1, "You have completed this today. Come back tomorrow." )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63140)
		if $count == 0
			BC( "dialogbox", "player", -1, "You do not have the appropriate level Dragonscale." )
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63140, 1 )
		//???????
		if $result != 0
			return
		endif
		//??
		$ran_number = RandomNumber(1 , 800)
		if $ran_number == 1
			AddPlayerInfo( -1, "item",63243, 1 )
		endif
		AddPlayerInfo( -1, "exp", 1404480 )
		AddPlayerInfo( -1, "item", 1, 3 )
		SetPlayerVar( -1 , 3610, $today_time)
		BC( "screen", "player", -1, "Exchange successful. You can only do this once per day." )
		//??-START
			$TJ_join_number = GetGlobalVar(922)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(922 , $TJ_join_number)
		//??-END
	}

	//??12???

	function OnOption3(){
		$level = GetPlayerInfo(-1,"level")
		if $level < 50
			BC( "dialogbox", "player", -1, "You are too low level to receive reward." )
			return
		endif
		$today_time = GetSystemTime( "yday" )
		$last_days = GetPlayerVar(-1 , 3610)

		if $today_time == $last_days
			BC( "dialogbox", "player", -1, "You have completed this today. Come back tomorrow." )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63141)
		if $count == 0
			BC( "dialogbox", "player", -1, "You do not have the appropriate level Dragonscale." )
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63141, 1 )
		//???????
		if $result != 0
			return
		endif
		//??
		$ran_number = RandomNumber(1 , 400)
		if $ran_number == 1
			AddPlayerInfo( -1, "item",63243, 1 )
		endif
		AddPlayerInfo( -1, "exp", 1750320 )
		AddPlayerInfo( -1, "item", 1, 3 )
		SetPlayerVar( -1 , 3610, $today_time)
		BC( "screen", "player", -1, "Exchange successful. You can only do this once per day." )
		//??-START
			$TJ_join_number = GetGlobalVar(922)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(922 , $TJ_join_number)
		//??-END
	}

	//??13???
	function OnOption4(){
		$level = GetPlayerInfo(-1,"level")
		if $level < 55
			BC( "dialogbox", "player", -1, "You are too low level to receive reward." )
			return
		endif
		$today_time = GetSystemTime( "yday" )
		$last_days = GetPlayerVar(-1 , 3610)

		if $today_time == $last_days
			BC( "dialogbox", "player", -1, "You have completed this today. Come back tomorrow." )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63142)
		if $count == 0
			BC( "dialogbox", "player", -1, "You do not have the appropriate level Dragonscale." )
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63142, 1 )
		//???????
		if $result != 0
			return
		endif
		//??
		$ran_number = RandomNumber(1 , 400)
		if $ran_number == 1
			AddPlayerInfo( -1, "item",63243, 1 )
		endif
		AddPlayerInfo( -1, "exp", 2148120 )
		AddPlayerInfo( -1, "item", 1, 6 )
		SetPlayerVar( -1 , 3610, $today_time)
		BC( "screen", "player", -1, "Exchange successful. You can only do this once per day." )
		//??-START
			$TJ_join_number = GetGlobalVar(922)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(922 , $TJ_join_number)
		//??-END
	}

	//??14???

	function OnOption5(){
		$level = GetPlayerInfo(-1,"level")
		if $level < 60
			BC( "dialogbox", "player", -1, "You are too low level to receive reward." )
			return
		endif
		$today_time = GetSystemTime( "yday" )
		$last_days = GetPlayerVar(-1 , 3610)

		if $today_time == $last_days
			BC( "dialogbox", "player", -1, "You have completed this today. Come back tomorrow." )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63143)
		if $count == 0
			BC( "dialogbox", "player", -1, "You do not have the appropriate level Dragonscale." )
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63143, 1 )
		//???????
		if $result != 0
			return
		endif
		//??
		$ran_number = RandomNumber(1 , 200)
		if $ran_number == 1
			AddPlayerInfo( -1, "item",63243, 1 )
		endif
		AddPlayerInfo( -1, "exp", 2601480 )
		AddPlayerInfo( -1, "item", 1, 6 )
		SetPlayerVar( -1 , 3610, $today_time)
		BC( "screen", "player", -1, "Exchange successful. You can only do this once per day." )
		//??-START
			$TJ_join_number = GetGlobalVar(922)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(922 , $TJ_join_number)
		//??-END
	}

	//??15???

	function OnOption6(){
		$level = GetPlayerInfo(-1,"level")
		if $level < 65
			BC( "dialogbox", "player", -1, "You are too low level to receive reward." )
			return
		endif
		$today_time = GetSystemTime( "yday" )
		$last_days = GetPlayerVar(-1 , 3610)

		if $today_time == $last_days
			BC( "dialogbox", "player", -1, "You have completed this today. Come back tomorrow." )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63144)
		if $count == 0
			BC( "dialogbox", "player", -1, "You do not have the appropriate level Dragonscale." )
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63144, 1 )
		//???????
		if $result != 0
			return
		endif
		//??
		$ran_number = RandomNumber(1 , 160)
		if $ran_number == 1
			AddPlayerInfo( -1, "item",63243, 1 )
		endif
		AddPlayerInfo( -1, "exp", 3114000 )
		AddPlayerInfo( -1, "item", 1, 6 )
		SetPlayerVar( -1 , 3610, $today_time)
		BC( "screen", "player", -1, "Exchange successful. You can only do this once per day." )
		//??-START
			$TJ_join_number = GetGlobalVar(922)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(922 , $TJ_join_number)
		//??-END
	}
	//??16???

	function OnOption7(){
		$level = GetPlayerInfo(-1,"level")
		if $level < 70
			BC( "dialogbox", "player", -1, "You are too low level to receive reward." )
			return
		endif
		$today_time = GetSystemTime( "yday" )
		$last_days = GetPlayerVar(-1 , 3610)

		if $today_time == $last_days
			BC( "dialogbox", "player", -1, "You have completed this today. Come back tomorrow." )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63145)
		if $count == 0
			BC( "dialogbox", "player", -1, "You do not have the appropriate level Dragonscale." )
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63145, 1 )
		//???????
		if $result != 0
			return
		endif
		//??
		$ran_number = RandomNumber(1 , 120)
		if $ran_number == 1
			AddPlayerInfo( -1, "item",63243, 1 )
		endif
		AddPlayerInfo( -1, "exp", 3689280 )
		AddPlayerInfo( -1, "item", 1, 12 )
		SetPlayerVar( -1 , 3610, $today_time)
		BC( "screen", "player", -1, "Exchange successful. You can only do this once per day." )
		//??-START
			$TJ_join_number = GetGlobalVar(922)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(922 , $TJ_join_number)
		//??-END
	}


	//??17???

	function OnOption8(){
		$level = GetPlayerInfo(-1,"level")
		if $level < 75
			BC( "dialogbox", "player", -1, "You are too low level to receive reward." )
			return
		endif
		$today_time = GetSystemTime( "yday" )
		$last_days = GetPlayerVar(-1 , 3610)

		if $today_time == $last_days
			BC( "dialogbox", "player", -1, "You have completed this today. Come back tomorrow." )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63146)
		if $count == 0
			BC( "dialogbox", "player", -1, "You do not have the appropriate level Dragonscale." )
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63146, 1 )
		//???????
		if $result != 0
			return
		endif
		//??
		$ran_number = RandomNumber(1 , 80)
		if $ran_number == 1
			AddPlayerInfo( -1, "item",63243, 1 )
		endif
		AddPlayerInfo( -1, "exp", 4330920 )
		AddPlayerInfo( -1, "item", 1, 15 )
		SetPlayerVar( -1 , 3610, $today_time)
		BC( "screen", "player", -1, "Exchange successful. You can only do this once per day." )
		//??-START
			$TJ_join_number = GetGlobalVar(922)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(922 , $TJ_join_number)
		//??-END
	}

	//??18???
	function OnOption9(){
		$level = GetPlayerInfo(-1,"level")
		if $level < 80
			BC( "dialogbox", "player", -1, "You are too low level to receive reward." )
			return
		endif
		$today_time = GetSystemTime( "yday" )
		$last_days = GetPlayerVar(-1 , 3610)

		if $today_time == $last_days
			BC( "dialogbox", "player", -1, "You have completed this today. Come back tomorrow." )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63147)
		if $count == 0
			BC( "dialogbox", "player", -1, "You do not have the appropriate level Dragonscale." )
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have enough space in your bag." )
			return
		endif
  		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63147, 1 )
		//???????
		if $result != 0
			return
		endif
		//??
		$ran_number = RandomNumber(1 , 40)
		if $ran_number == 1
			AddPlayerInfo( -1, "item",63243, 1 )
		endif
		AddPlayerInfo( -1, "exp", 5042520 )
		AddPlayerInfo( -1, "item", 1, 20 )
		SetPlayerVar( -1 , 3610, $today_time)
		BC( "screen", "player", -1, "Exchange successful. You can only do this once per day." )
		//??-START
			$TJ_join_number = GetGlobalVar(922)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(922 , $TJ_join_number)
		//??-END
	}