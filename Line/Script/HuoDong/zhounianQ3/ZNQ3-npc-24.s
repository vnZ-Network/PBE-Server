	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-4-11
	//		Author:???
	//		TaskName:???3????-??
	//		TaskID:
	//
	//****************************************

	function OnRequest(){
//4?17?(???4?24?)(??)~5?29?(??)
		$year = GetSystemTime( "year" )
		$month = GetSystemTime( "month" )
		$yday = GetSystemTime( "yday" )
		
		if $year != 2012
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
		else
			if $year == 2012
				if $yday < 242
						DisableNpcOption(0)
						DisableNpcOption(1)
						DisableNpcOption(2)
				endif
			endif
			
			if $year == 2012
				if $yday > 273
					DisableNpcOption(0)
					DisableNpcOption(1)
					DisableNpcOption(2)
				endif
			endif
			
		endif
		
		
		if $year != 2012
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		else
			$monthadd = $month * 100
			$dayadd = $monthadd + $day
			if $dayadd > 529
				$item1 = GetPlayerInfo(-1,"item",44247)
//				DisableNpcOption(0)
				if $item1 < 1
					DisableNpcOption(4)
					DisableNpcOption(5)
					DisableNpcOption(6)
				endif
			endif
		endif
		
	}

	function OnOption0(){
		$year = GetSystemTime( "year" )
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		$yday = GetSystemTime( "yday" )
		$last_yday = GetPlayerVar(-1 , 4027)
		$cishu = GetPlayerVar(-1 , 3418)
			
		if $nullitem < 2
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif	
		
		if $last_yday == $yday
			BC("dialogbox","player",-1,"Sorry, you've checked in already, you can't receive another gift pack!")
			return
		endif
		
			$cishu = GetPlayerVar(-1 , 3418)
			BC("screen","player",-1,"Congratulations for receiving favor from the Goddess of Fate!")
			AddPlayerInfo( -1 , "item" , 44366 , 1)
			$cishu = $cishu + 1
			SetPlayerVar( -1 , 3418 , $cishu )
			SetPlayerVar(-1 , 4027 , $yday )

		if $cishu == 5
			AddPlayerInfo( -1 , "item" , 44367 , 1)
			return
		endif

		if $cishu == 10
			AddPlayerInfo( -1 , "item" , 44367 , 1)
			return
		endif

		if $cishu == 15
			AddPlayerInfo( -1 , "item" , 44367 , 1)
			return
		endif

		if $cishu == 20
			AddPlayerInfo( -1 , "item" , 44367 , 1)
			return
		endif

		if $cishu == 25
			AddPlayerInfo( -1 , "item" , 44368 , 1)
			return
		endif									
	}

	function OnOption1(){
		$cishu = GetPlayerVar(-1 , 3418)
		BC("dialogbox","player",-1, "May the Goddess of Fate protect you!\nUp until today, you have checked in: " $cishu " days! Keep up the good work, and keep collecting those prizes!")				
	}
	
	function OnOption2(){
		BC("dialogbox","player",-1, "The Goddess of Fate sure is wonderful!\nEvery day that you check in, you have a chance to receive a Major Fortify Crystal, a LV2 Gem Coin, or a Salary Card (500 points).\nAdditionally, if you manage to sign-in for a consecutive 5, 10, 15, 20, or 25 days, you'll receive a bonus Deluxe Check-in Pack and a Final Victory Pack - open them to receive a bonus surprise!")			

	}

	function OnOption3(){
		//???????
		
		$level = GetPlayerInfo(-1,"level")
		if $level < 45
			BC("screen","player",-1,"You must be at least LV45 to participate.")
			return
		endif
		
//		$year = GetSystemTime( "year" )
//		$month = GetSystemTime( "month" )
//		$day = GetSystemTime( "mday" )
//		if $year != 2012
//			return
//		endif
//		$monthadd = $month * 100
//		$dayadd = $monthadd + $day
//		if $dayadd < 417
//			return
//		endif
//		if $dayadd > 529
//			return
//		endif

		$result = IsTaskAccept( -1 , 1625 )
		if $result == 0
			BC( "dialogbox", "player", -1, "You've already accepted the {#ffff002a=Misha's Blessings} quest. Complete it and then come back here!" )
			return
		endif
		
		$lv = GetPlayerInfo( -1, "level")
		$buffday = GetPlayerVar( -1, 4047 )
		$Now_Yday =  GetSystemTime( "yday" )

		//????
		if $buffday == $Now_Yday
			BC( "dialogbox", "player", -1, "You have already obtained this. Please come again tomorrow.")
			return
		endif
		
		$rand = RandomNumber ( 0, 99 )
		if $rand < 30
			$info = AddPlayerInfo( -1, "givepoint", 100)
			BC( "messagebox", "player", -1, "You get 100 Salary." )
		endif
		
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "Obtained Status: Misha's Blessing" )
		SetPlayerVar(-1, 4047, $Now_Yday )
		AddStatus( -1, 7629, 2 )
		AcceptTask( -1 , 1625 )
		SetPlayerActLog(-1,14,0)
		
//		AddPlayerInfo( -1 , "item" , 44245 , 1 )
		
		
	}

	function OnOption4(){
//?1??????????-????*3
//44247	??????

		$item1 = GetPlayerInfo(-1,"item",44247)
		if $item1 < 1
			BC("dialogbox","player",-1,"You don't have an Elemental Card!")
			return
		endif
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$result = SubPlayerInfo(-1,"item",44247,1)
		if $result == 0
			AddPlayerInfo(-1,"item",1,3)
		else
			BC("dialogbox","player",-1,"You don't have an Elemental Card!!")
		endif
		
	}
	
	function OnOption5(){
//?2??????????-????*2
//44247	??????

		$item1 = GetPlayerInfo(-1,"item",44247)
		if $item1 < 2
			BC("dialogbox","player",-1,"You don't have two Elemental Cards!")
			return
		endif
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$result = SubPlayerInfo(-1,"item",44247,2)
		if $result == 0
			AddPlayerInfo(-1,"item",44093,2)
		else
			BC("dialogbox","player",-1,"You don't have two Elemental Cards!!")
		endif
		
	}
	
		function OnOption6(){
//?3??????????-??????*1
//44247	??????

		$item1 = GetPlayerInfo(-1,"item",44247)
		if $item1 < 3
			BC("dialogbox","player",-1,"You don't have three Elemental Cards!")
			return
		endif
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$result = SubPlayerInfo(-1,"item",44247,3)
		if $result == 0
			AddPlayerInfo(-1,"item",9,1)
		else
			BC("dialogbox","player",-1,"You don't have three Elemental Cards!!")
		endif
		
	}