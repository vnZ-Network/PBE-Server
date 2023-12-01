	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/23
	//		Author:???  ???
	//		TaskName:AV-NPC-97.s
	//		TaskID:???
	//
	//****************************************
	
	function OnRequest(){
		DisableNpcOption(3)
		//??????
		$time0 = GetSystemTime( "yday" )	
		$TaskVar1 = GetPlayerVar( -1, 3797 )
		$TaskVar2 = GetPlayerVar( -1, 3798 )
		$TaskVar3 = GetPlayerVar( -1, 3790 )
		$level = GetPlayerInfo( -1, "level" )
		$task1 = IsTaskAccept( -1, 1742 )
		$task2 = IsTaskDone(-1 , 1742 )
		
		//??????
		$Line = GetServerLineID()
		if $Line != 2
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
		endif
		
		if $TaskVar1 == $time0
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif
		
		if $TaskVar2 == $time0
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif
		
		if $TaskVar3 == $time0
			DisableNpcOption(3)
		endif
		
		if $task1 == 1
			DisableNpcOption(6)
		endif
		
		if $task2 == 0
			DisableNpcOption(6)
		endif
			
		if $level < 55
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
		endif

//-----------------------??????????????------------------------		
//		$GetSerVar1 = GetServerVar( 66 )
//		if $GetSerVar1 < 1000
//			DisableNpcOption(1)
//			DisableNpcOption(2)
//		endif
		
		// ?? 5 ???????
		$task1 = IsTaskAccept( -1, 2328 )
		if $task1 == 0
			DisableNpcOption(5)
		endif
		$task2 = IsTaskAccept( -1, 2329 )
		if $task2 == 0
			DisableNpcOption(5)
		endif
		$task3 = IsTaskAccept( -1, 2330 )
		if $task3 == 0
			DisableNpcOption(5)
		endif
		$task4 = IsTaskAccept( -1, 2331 )
		if $task4 == 0
			DisableNpcOption(5)
		endif				
	}
	
	function OnOption0(){
	
		$money = GetPlayerInfo( -1, "money" )
		if $money < 400
			BC( "dialogbox", "player", -1, "You don't have enough money for the teleport." )
			return
		endif
		$delinfo = SubPlayerInfo( -1 , "money" , 400 )
		if $delinfo != 0
			return
		endif
		FlyToMap( -1 , 13 , 33 , 79 )	
	}
	
	function OnOption1(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "You can acquire Darkflame Emblem only in Realm 2." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3797 )
		$level = GetPlayerInfo( -1, "level" )
		$Item = GetPlayerInfo( -1, "item", 12421 )
		if $Item > 0
			BC( "dialogbox", "player", -1, "You cannot have Darkflame Emblem and Darkness Emblem together." )
			return
		endif
		
//-----------------------??????????????------------------------
//		$GetSerVar1 = GetServerVar( 66 )
//		if $GetSerVar1 < 1000
//			BC( "dialogbox", "player", -1, "GUID:08040000003" )
//			return
//		endif
		
		if $level < 55
			BC( "dialogbox", "player", -1, "You are not LV55 yet." )
			return
		endif
		
		if $TaskVar == $time0
			BC( "dialogbox", "player", -1, "You have already acquired the Darkflame Emblem today." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 3 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient quest bag slots!" )
			return
		endif
		
		AddPlayerInfo( -1, "item", 12420, 1 )
		SetPlayerVar( -1, 3797, $time0 )
	}
	
	function OnOption2){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "Darkness Emblem can be acquired only in Realm 2." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3798 )
		$level = GetPlayerInfo( -1, "level" )
		$Item = GetPlayerInfo( -1, "item", 12420 )
		if $Item > 0
			BC( "dialogbox", "player", -1, "You cannot have Darkflame Emblem and Darkness Emblem together." )
			return
		endif


//-------------------------??????????????--------------------------		
//		$GetSerVar1 = GetServerVar( 66 )
//		if $GetSerVar1 < 1000
//			BC( "dialogbox", "player", -1, "GUID:08040000009" )
//			return
//		endif
		
		if $level < 55
			BC( "dialogbox", "player", -1, "You are not LV55 yet." )
			return
		endif
		
		if $TaskVar == $time0
			BC( "dialogbox", "player", -1, "You have already acquired the Darkness Emblem today." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 3 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient quest bag slots!" )
			return
		endif
		
		AddPlayerInfo( -1, "item", 12421, 1 )
		SetPlayerVar( -1, 3798, $time0 )
	}
	
//	function OnOption3(){
//		$Line = GetServerLineID()
//		if $Line != 2
//			BC( "dialogbox", "player", -1, "GUID:08040000013" )
//			return
//		endif
//		
//		$Item1 = GetPlayerInfo( -1, "item", 12423 )
//		$Item2 = GetPlayerInfo( -1, "item", 12424 )
//		$level = GetPlayerInfo( -1, "level" )
//		if $level < 55
//			BC( "dialogbox", "player", -1, "You are not LV55 yet." )
//			return
//		endif
//		
//		if $Item1 < 1
//			BC( "dialogbox", "player", -1, "GUID:08040000015" )
//			return
//		endif
//		
//		if $Item2 < 1
//			BC( "dialogbox", "player", -1, "GUID:08040000016" )
//			return
//		endif
//		
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "dialogbox", "player", -1, "GUID:08040000017" )
//			return
//		endif
//		
//		$Sub1 = SubPlayerInfo( -1, "item", 12423, 1 )
//		$Sub2 = SubPlayerInfo( -1, "item", 12424, 1 )
//		if $Sub1 != 0
//			return
//		endif
//		if $Sub2 != 0
//			return
//		endif
//		
//		AddPlayerInfo( -1, "item", 12422, 1 )
//		
//	}
	
	function OnOption4(){
		
		$level = GetPlayerInfo( -1, "level" )
		$time = GetSystemTime( "yday" )
		$lasttime = GetPlayerVar( -1, 3790 )
		
		if $level < 55
			BC( "dialogbox", "player", -1, "You are not LV55 yet." )
			return
		endif
		
		$quest00 = IsTaskAccept( -1, 2312 )
		if $quest00 == 0
			BC( "dialogbox", "player", -1, "You have acquired the quest already." )
			return
		endif
		$quest0 = IsTaskAccept( -1, 2313 )
		if $quest0 == 0
			BC( "dialogbox", "player", -1, "You have acquired the quest already." )
			return
		endif
		$quest1 = IsTaskAccept( -1, 2314 )
		if $quest1 == 0
			BC( "dialogbox", "player", -1, "You have acquired the quest already." )
			return
		endif
		$quest2 = IsTaskAccept( -1, 2315 )
		if $quest2 == 0
			BC( "dialogbox", "player", -1, "You have acquired the quest already." )
			return
		endif
		$quest3 = IsTaskAccept( -1, 2316 )
		if $quest3 == 0
			BC( "dialogbox", "player", -1, "You have acquired the quest already." )
			return
		endif
		$quest4 = IsTaskAccept( -1, 2317 )
		if $quest4 == 0
			BC( "dialogbox", "player", -1, "You have acquired the quest already." )
			return
		endif
		$quest5 = IsTaskAccept( -1, 2318 )
		if $quest5 == 0
			BC( "dialogbox", "player", -1, "You have acquired the quest already." )
			return
		endif
		$quest6 = IsTaskAccept( -1, 2319 )
		if $quest6 == 0
			BC( "dialogbox", "player", -1, "You have acquired the quest already." )
			return
		endif
		$quest7 = IsTaskAccept( -1, 2320 )
		if $quest7 == 0
			BC( "dialogbox", "player", -1, "You have acquired the quest already." )
			return
		endif
		$quest8 = IsTaskAccept( -1, 2321 )
		if $quest8 == 0
			BC( "dialogbox", "player", -1, "You have acquired the quest already." )
			return
		endif
		
		$a = GetPlayerVar( -1, 3709 )
		$a = $a + 1
		
		if $lasttime == $time
			if $a <= 3
				BC( "dialogbox", "player", -1, "You have acquired " , $a , " adventurer's trial quests.\nEach day you can have up to 3 adventurer's trial quests.")
				call RandTask()
				SetPlayerVar( -1, 3709 , $a )
			else
				BC( "dialogbox", "player", -1, "\nYou have already acquired that quest for 3 times today!\n\nRequirements:\n1> Level over 55.\n2> Up to 3 quests in one day." )
			endif
				
		else
			call CancelTask()
			call RandTask()
			SetPlayerVar( -1, 3790 , $time )
			SetPlayerVar( -1, 3709 , 1 )
		endif
		
	
	}
	
	function OnOption5(){
	
		$level = GetPlayerInfo( -1 , "level" )
		$time = GetSystemTime( "yday" )
		$lasttime = GetPlayerVar( -1 , 3698 )
		$a = GetPlayerVar( -1 , 3699 )
		$b = $a + 1
		
		$task1 = IsTaskAccept( -1, 2328 )
		if $task1 == 0
			return
		endif
		$task2 = IsTaskAccept( -1, 2329 )
		if $task2 == 0
			return
		endif
		$task3 = IsTaskAccept( -1, 2330 )
		if $task3 == 0
			return
		endif
		$task4 = IsTaskAccept( -1, 2331 )
		if $task4 == 0
			return
		endif
		
		if $level < 60
			BC( "dialogbox", "player", -1, "You have to be above LV60 to take the quest [Seeking Horus' Flute]." )
			return
		endif
		
		if $lasttime == $time
			if $a < 5
				BC( "dialogbox", "player", -1, "You have taken the quest [Seeking Horus' Flute]. You can do this 5 times a day.\n\nYou are currently doing it for the ",$b, " time." )
				call GetTask()
				SetPlayerVar( -1, 3699 , $b )
			else
				BC( "dialogbox", "player", -1, "You have donated 5 times already. Please start again tomorrow." )
			endif
		else
			call NoTask()
			call GetTask()
			SetPlayerVar( -1, 3698 , $time )
			SetPlayerVar( -1, 3699 , 1 )
		endif
	}
	
	function OnOption6(){
		
			FlyToMap(-1 ,111, 60, 60)
	}
		
	
	
	




	function GetTask(){
	
		$level = GetPlayerInfo( -1, "level" )
		if $level >= 60
			if $level <= 64
				AcceptTask( -1, 2328 )
			endif
		endif
		if $level >= 65
			if $level <= 69
				AcceptTask( -1, 2329 )
			endif
		endif
		if $level >= 70
			if $level <= 74
				AcceptTask( -1, 2330 )
			endif
		endif
		if $level > 74
			AcceptTask( -1, 2331 )
		endif
	}
	function NoTask(){
		
		CancelTask( -1 , 2328 )
		CancelTask( -1 , 2329 )
		CancelTask( -1 , 2330 )
		CancelTask( -1 , 2331 )
		
	}
	
	function RandTask(){
		
		$Random = RandomNumber( 0 , 9 )
		if $Random == 0
			AcceptTask( -1, 2312 )
		endif
		if $Random == 1
			AcceptTask( -1, 2313 )
		endif
		if $Random == 2
			AcceptTask( -1, 2314 )
		endif
		if $Random == 3
			AcceptTask( -1, 2315 )
		endif
		if $Random == 4
			AcceptTask( -1, 2316 )
		endif
		if $Random == 5
			AcceptTask( -1, 2317 )
		endif
		if $Random == 6
			AcceptTask( -1, 2318 )
		endif
		if $Random == 7
			AcceptTask( -1, 2319 )
		endif
		if $Random == 8
			AcceptTask( -1, 2320 )
		endif
		if $Random == 9
			AcceptTask( -1, 2321 )
		endif
	
	
	}
	
	
		
	
	function CancelTask(){
		CancelTask( -1 , 2312 )
		CancelTask( -1 , 2313 )
		CancelTask( -1 , 2314 )
		CancelTask( -1 , 2315 )
		CancelTask( -1 , 2316 )
		CancelTask( -1 , 2317 )
		CancelTask( -1 , 2318 )
		CancelTask( -1 , 2319 )
		CancelTask( -1 , 2320 )
		CancelTask( -1 , 2321 )
		
	}
		