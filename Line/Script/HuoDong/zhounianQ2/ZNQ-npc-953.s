	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:???2???--??
	//		TaskID:
	//
	//****************************************

	function OnRequest(){

		$isdone = GetPlayerVar( -1, 3299 )
		$taskday = GetPlayerVar( -1, 4048 )
		$Now_Yday =  GetSystemTime( "yday" )

		if $isdone != 2
			DisableNpcOption(3)
		endif
		if $taskday != $Now_Yday
			DisableNpcOption(3)
		endif

		DisableNpcOption(1)
		DisableNpcOption(3)

		$year = GetSystemTime( "year" )
		$month = GetSystemTime( "month" )
		$day = GetSystemTime( "mday" )

		if $year != 2011
			DisableNpcOption(4)
		endif
		if $month != 10
			DisableNpcOption(4)
		endif
		if $year == 2011
			if $month == 10
				if $day >= 8
					DisableNpcOption(4)
				endif
			endif
		endif

			$year = GetSystemTime("year")
			$month = GetSystemTime("month")
			$mday = GetSystemTime("mday")

			if $year == 2011
				if $month != 12
					DisableNpcOption(5)
					DisableNpcOption(6)
				else
					if $mday < 27
					DisableNpcOption(5)
					DisableNpcOption(6)
					endif
				endif
			else
				if $month != 1
					DisableNpcOption(5)
					DisableNpcOption(6)
				else
					if $mday > 15
					DisableNpcOption(5)
					DisableNpcOption(6)
					endif
				endif
			endif


	}

	function OnOption0(){
		//??????(20:00-22:00)
		$lv = GetPlayerInfo( -1, "level")

		$buffday = GetPlayerVar( -1, 4047 )

		$Now_Minute =  GetSystemTime( "minute")
		$Now_Hour =  GetSystemTime( "hour" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Now_Yday =  GetSystemTime( "yday" )
		$Now_week =  GetSystemTime( "week" )

		//????
		if $buffday == $Now_Yday
			BC( "dialogbox", "player", -1, "You have already obtained this. Please come again tomorrow.")
			return
		endif

//		//????
//		if $Now_Hour >= 20
//			if $Now_Hour < 22
				AddStatus( -1, 1111, 1 )
				PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
				BC( "screen", "player", -1, "Obtained Buff: A Slight Power" )
				SetPlayerVar(-1, 4047, $Now_Yday )
				AddStatus( -1, 7629, 1 )
//			else
//				BC( "dialogbox", "player", -1, "GUID:05324000002")
//			endif
//		else
//			BC( "dialogbox", "player", -1, "GUID:05324000003")
//		endif

	}



	function OnOption1(){
		//?????!???(20:00-22:00)

		return

		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		$lv = GetPlayerInfo( -1, "level")

		$taskday = GetPlayerVar( -1, 4048 )

		$Now_Minute =  GetSystemTime( "minute")
		$Now_Hour =  GetSystemTime( "hour" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Now_Yday =  GetSystemTime( "yday" )
		$Now_week =  GetSystemTime( "week" )


		//????
		if $taskday == $Now_Yday
			BC( "dialogbox", "player", -1, "You have obtained the Elf's appearing quest. Are you finished?")
			return
		endif

		//????
		if $Now_Hour >= 20
			if $Now_Hour < 22
				AcceptTask( -1 , 4147 )
				SetPlayerVar(-1, 4048, $Now_Yday )
				SetPlayerVar(-1, 3299, 1 )
			else
				$rand = RandomNumber( 0, 99 )
				if $rand < 33
					BC( "dialogbox", "player", -1, "You are late, or you have already finished it?")
				else
					if $rand < 66
						BC( "dialogbox", "player", -1, "You are late.")
					else
						BC( "dialogbox", "player", -1, "I will not say this a second time! The event time is (20:00-22:00). If you are late, you're on your own!")
					endif
				endif
			endif
		else
			BC( "dialogbox", "player", -1, "This is not the right time. Please obtain it between (20:00-22:00).")
		endif



	}


	function OnOption2(){
		//?????????(??)
		//????????????
		$result = IsTaskAccept( -1 , 1625 )
		if $result == 0
			BC( "dialogbox", "player", -1, "You have acquired the quest of {#ffff002a=Milla's blessing#}\n{#ffff002a=This quest can be obtained once a day, and when you finish it you get a reward of :Emeraldshine Heart#}" )
			return
		endif

		//????????
		$myday = GetPlayerVar( -1, 3950 )
		$Now_Yday =  GetSystemTime( "yday" )
		if $myday == $Now_Yday
			BC( "dialogbox", "player", -1, "You have already obtained this. Please come again tomorrow." )
			return
		endif

		//??????30?
		$lv = GetPlayerInfo( -1, "level")
		if $lv < 30
			BC( "screen", "player", -1, "You need to be at least LV30 to receive this quest." )
			return
		endif

		AcceptTask( -1 , 1625 )
		SetPlayerVar( -1 , 3950 , $Now_Yday )
		$rand = RandomNumber ( 0, 99 )
		if $rand < 30
			$info = AddPlayerInfo( -1, "givepoint", 100)
			BC( "messagebox", "player", -1, "You get 100 Salary." )
		endif
		//????
		$task = GetGlobalVar( 970 )
		$task1 = $task + 1
		$task2 = SetGlobalVar( 970,$task1 )


	}

	function OnOption3(){

		return

		$taskday = GetPlayerVar( -1, 4048 )
		$Now_Yday =  GetSystemTime( "yday" )

		//????
		if $taskday == $Now_Yday
			$isdone = GetPlayerVar( -1, 3299 )
			if $isdone == 2
				SetPlayerVar(-1, 3299, 0 )
				AddPlayerInfo( -1, "item", 59790 ,1)
				BC( "dialogbox", "player", -1, "You received the reward from the Elf's appearance quest.")
			else
				BC( "dialogbox", "player", -1, "You still have not finished the quest.")
			endif
		else
			BC( "dialogbox", "player", -1, "You have not obtained the Elf's appearance quest today.")
		endif

	}

	function OnOption4(){
		//?????????
		$today = GetSystemTime( "yday" )
		$myday = GetPlayerVar( -1 , 4006 )
		$year = GetSystemTime( "year" )
		$month = GetSystemTime( "month" )
		$day = GetSystemTime( "mday" )
		
		if $year != 2011
			DisableNpcOption(4)
		endif
		if $month != 10
			DisableNpcOption(4)
		endif
		if $year == 2011
			if $month == 10
				if $day >= 8
					DisableNpcOption(4)
				endif
			endif
		endif

		if $today == $myday
			BC( "dialogbox", "player", -1, "You have received a Holiday Double EXP Stone. Happy National Day!")
			return
		endif


		//?????
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem <= 0
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot.")
			return
		else
			//???
			AddPlayerInfo( -1 , "item" , 44093 , 1 )
			SetPlayerVar( -1 , 4006 , $today )
		endif

	}

//44144	???
//76 63691	??????*5
//84 44093	???????(30)
	function OnOption5(){
//?1??????????
		$item1 = GetPlayerInfo(-1,"item",44144)
		if $item1 < 1
			BC("dialogbox","player",-1,"You didn't bring any Bubble Gum!")
			return
		endif
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$result = SubPlayerInfo(-1,"item",44144,1)
		if $result == 0
			AddPlayerInfo(-1,"item",63691,10)
		else
			BC("dialogbox","player",-1,"You didn't bring any Bubble Gum.")
		endif
		
	}

	function OnOption6(){
//?3??????????
		$item1 = GetPlayerInfo(-1,"item",44144)
		if $item1 < 3
			BC("dialogbox","player",-1,"You didn't bring 3 pieces of Bubble Gum!")
			return
		endif
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$result = SubPlayerInfo(-1,"item",44144,3)
		if $result == 0
			AddPlayerInfo(-1,"item",44093,3)
		else
			BC("dialogbox","player",-1,"You didn't bring 3 pieces of Bubble Gum.")
		endif
		
		
	}