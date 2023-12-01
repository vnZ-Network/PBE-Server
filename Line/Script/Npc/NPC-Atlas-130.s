	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/06/17
	//		Author:???
	//		TaskName:NPC-Atlas-130.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
					//???????? ????
		$today_time = GetSystemTime( "yday" )
		if $today_time != 306
		DisableNpcOption(2)
			endif
			//??????

	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	if $Now_Year != 2013 
	  DisableNpcOption(3)
  endif
  	if $Now_Month != 2 
	   DisableNpcOption(3)
  endif
  if $Now_Mday < 10
	   DisableNpcOption(3)
  endif
   if $Now_Mday > 26
	   DisableNpcOption(3)
  endif
  	//????
    $playervar = GetPlayerVar(-1,3451)  
    if $playervar > 4
	   DisableNpcOption(3)
  endif
   	//??????
		$Info = GetPlayerInfo( -1, "item", 44639)	
		if $Info < 1
			DisableNpcOption(3)
		endif
	}
		
	function OnOption0(){
		
		$ItemId = 12470
		$UseTime = GetPlayerVar( -1, 3646 )
		//????????????
		$NowTime = GetSystemTime( "yday" )
		//??????
		if $UseTime == $NowTime
			BC( "dialogbox", "player", -1, "Thank you for the Poseidon Stamps you gave me today. Please come back tomorrow." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", $ItemId )
		if $Item < 20
			BC( "dialogbox", "player", -1, "You need to offer {#ff00ff00=20 Poseidon Stamps#} to acquire the EXP reward." )
			return
		endif
		
		
		$lv = GetPlayerInfo( -1, "level" )
		if $lv >= 60
			$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
			if $bag_count < 1
				BC( "dialogbox", "player", -1, "There is not enough space in your bag." )
				return
			endif
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemId, 20 )
		if $SubItem != 0
			return
		endif
		
		//?????
		$PlayVar = GetPlayerVar( -1, 40 )
		if $PlayVar != 1
			SetPlayerVar( -1, 40, 1 )
		endif
		
		SetPlayerActLog(-1,28,1)
		
		//??-START
			$TJ_join_number = GetGlobalVar(912)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(912 , $TJ_join_number)
		//??-END
		//2012-3-14-????
		AddPlayerInfo( -1, "item", 44235, 2 )
		//-----------Exp------------
		$PlayerLevel = GetPlayerInfo( -1, "level" )
		#name0 = GetPlayerInfo( -1, "name" )
		if $PlayerLevel >= 55
			if $PlayerLevel < 57
				AddPlayerInfo( -1, "exp", 179280 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 179280 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 57
			if $PlayerLevel < 59
				AddPlayerInfo( -1, "exp", 262416 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 262416 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 59
			if $PlayerLevel < 61
				AddPlayerInfo( -1, "exp", 387810 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 387810 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 61
			if $PlayerLevel < 63
				AddPlayerInfo( -1, "exp", 527904 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 527904 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 63
			if $PlayerLevel < 65
				AddPlayerInfo( -1, "exp", 673440 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 673440 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 65
			if $PlayerLevel < 67
				AddPlayerInfo( -1, "exp", 826956 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 826956 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 67
			if $PlayerLevel < 69
				AddPlayerInfo( -1, "exp", 994206 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 994206 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 69
			if $PlayerLevel < 71
				AddPlayerInfo( -1, "exp", 1162800 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 1162800 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 71
			if $PlayerLevel < 73
				AddPlayerInfo( -1, "exp", 1441800 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 1441800 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 73
			if $PlayerLevel < 75
				AddPlayerInfo( -1, "exp", 1757700 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 1757700 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 75
			if $PlayerLevel < 77
				AddPlayerInfo( -1, "exp", 2052000 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 2052000 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 77
			if $PlayerLevel < 79
				AddPlayerInfo( -1, "exp", 2359800 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 2359800 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 79
			if $PlayerLevel < 81
				AddPlayerInfo( -1, "exp", 2682000 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 2682000 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 81
			if $PlayerLevel < 83
				AddPlayerInfo( -1, "exp", 3019500 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 3019500 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 83
			if $PlayerLevel < 85
				AddPlayerInfo( -1, "exp", 3373200 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 3373200 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 85
			if $PlayerLevel < 87
				AddPlayerInfo( -1, "exp", 3744000 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 3744000 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 87
			if $PlayerLevel < 89
				AddPlayerInfo( -1, "exp", 4132800 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 4132800 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 89
			if $PlayerLevel < 91
				AddPlayerInfo( -1, "exp", 4540500 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 4540500 EXP!")
				return
			endif
		endif
		if $PlayerLevel >= 91
			if $PlayerLevel < 93
				AddPlayerInfo( -1, "exp", 4968000 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 4968000 EXP!")
				return
			endif	
		endif
		if $PlayerLevel >= 93
			if $PlayerLevel < 95
				AddPlayerInfo( -1, "exp", 5050000 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 5050000 EXP!")
				return
			endif	
		endif
		if $PlayerLevel >= 95
			if $PlayerLevel < 97
				AddPlayerInfo( -1, "exp", 5120000 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 5120000 EXP!")
				return
			endif	
		endif
		if $PlayerLevel >= 97
			if $PlayerLevel < 99
				AddPlayerInfo( -1, "exp", 5190000 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 5190000 EXP!")
				return
			endif	
		endif
		if $PlayerLevel >= 99
			if $PlayerLevel < 101
				AddPlayerInfo( -1, "exp", 5260000 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 5260000 EXP!")
				return
			endif	
		endif
		if $PlayerLevel >= 101
			if $PlayerLevel < 103
				AddPlayerInfo( -1, "exp", 5330000 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 5330000 EXP!")
				return
			endif	
		endif
		if $PlayerLevel >= 103
			if $PlayerLevel < 105
				AddPlayerInfo( -1, "exp", 5400000 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 5400000 EXP!")
				return
			endif	
		endif
		if $PlayerLevel >= 105
			if $PlayerLevel < 107
				AddPlayerInfo( -1, "exp", 5470000 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 5470000 EXP!")
				return
			endif	
		endif
		if $PlayerLevel >= 107
			if $PlayerLevel < 109
				AddPlayerInfo( -1, "exp", 5540000 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 5540000 EXP!")
				return
			endif	
		endif
		if $PlayerLevel >= 109
			if $PlayerLevel < 111
				AddPlayerInfo( -1, "exp", 5610000 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 5610000 EXP!")
				return
			endif	
		endif
		if $PlayerLevel >= 111
			if $PlayerLevel < 113
				AddPlayerInfo( -1, "exp", 5680000 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 5680000 EXP!")
				return
			endif	
		endif
		if $PlayerLevel >= 113
			if $PlayerLevel < 115
				AddPlayerInfo( -1, "exp", 5750000 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 5750000 EXP!")
				return
			endif	
		endif
		if $PlayerLevel >= 115
			if $PlayerLevel < 117
				AddPlayerInfo( -1, "exp", 5820000 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 5820000 EXP!")
				return
			endif	
		endif
		if $PlayerLevel >= 117
			if $PlayerLevel < 119
				AddPlayerInfo( -1, "exp", 5890000 )
				SetPlayerVar( -1, 3646, $NowTime )
				BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 5890000 EXP!")
				return
			endif	
		endif
		if $PlayerLevel >= 119
			AddPlayerInfo( -1, "exp", 5960000 )
			SetPlayerVar( -1, 3646, $NowTime )
			BC( "screen", "server", -1, "Congrats, ",#name0,"! You've traded 20 Poseidon Stamps for 5960000 EXP!")
			return
		endif
	}
	
		function OnOption1(){
			
			$lv = GetPlayerInfo( -1, "level" )
			if $lv < 75
				BC( "dialogbox", "player", -1, "You can't join the Poseidon's Blessings before reaching LV75!")
				return
			endif
			$UseTime = GetPlayerVar( -1, 3956 )
			//????????????
			
			$NowTime = GetSystemTime( "yday" )
			$NowHour =  GetSystemTime( "hour" )
			$NowMinute =  GetSystemTime( "minute")
			
			if $NowHour >= 0
				if $NowHour < 10
					BC( "dialogbox", "player", -1, "The Poseidon's Blessings event is available from 10:00 - 24:00 every day!" )
					return
				endif
			endif
			
			//??????
			if $UseTime == $NowTime
				BC( "dialogbox", "player", -1, "The Poseidon's Blessings event is available from 10:00 - 24:00 every day!" )
				return
			endif
		
			$task1 = IsTaskAccept( -1 , 2530 )
			$task2 = IsTaskAccept( -1 , 2531 )
			$task3 = IsTaskAccept( -1 , 2532 )
			$task4 = IsTaskAccept( -1 , 2533 )
			$task5 = IsTaskAccept( -1 , 2534 )
			$task6 = IsTaskAccept( -1 , 2535 )
			$task7 = IsTaskAccept( -1 , 2536 )
			$task8 = IsTaskAccept( -1 , 2537 )
			
			if $task1 == 0
				BC( "dialogbox", "player", -1, "You have received the quest [Poseidon's Blessings], please come back after completing it.")
				return
			endif
				if $task2 == 0
				BC( "dialogbox", "player", -1, "You have received the quest [Poseidon's Blessings], please come back after completing it.")
				return
			endif
				if $task3 == 0
				BC( "dialogbox", "player", -1, "You have received the quest [Poseidon's Blessings], please come back after completing it.")
				return
			endif
				if $task4 == 0
				BC( "dialogbox", "player", -1, "You have received the quest [Poseidon's Blessings], please come back after completing it.")
				return
			endif
				if $task5 == 0
				BC( "dialogbox", "player", -1, "You have received the quest [Poseidon's Blessings], please come back after completing it.")
				return
			endif
				if $task6 == 0
				BC( "dialogbox", "player", -1, "You have received the quest [Poseidon's Blessings], please come back after completing it.")
				return
			endif
				if $task7 == 0
				BC( "dialogbox", "player", -1, "You have received the quest [Poseidon's Blessings], please come back after completing it.")
				return
			endif
				if $task8 == 0
				BC( "dialogbox", "player", -1, "You have received the quest [Poseidon's Blessings], please come back after completing it.")
				return
			endif
			
			$count = GetTaskCount( -1 )
			if $count > 20
				BC( "dialogbox", "player", -1, "Your Quest Log is full. Try again after clearing up some space.")
				return
			endif
			
			$Item = GetPlayerInfo( -1, "item", 64374 )
			if $Item < 1
				BC( "dialogbox", "player", -1, "You need a {#ff00ff00=Medal of Triumph#} to participate in Poseidon's Blessings!" )
				return
			endif
			
			$SubItem = SubPlayerInfo( -1, "item", 64374, 1 )
			if $SubItem != 0
				return
			endif
			
			SetPlayerActLog(-1,28,2)
			
			SetPlayerVar( -1, 3956 , $NowTime )
		//SetPlayerVar( -1, 3963 , $NowHour )
		//??-START
			$TJ_join_number = GetGlobalVar(972)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(972 , $TJ_join_number)
		//??-END
//----------------------------------------------
			if $lv >= 75
				if $lv < 80
					AcceptTask( -1 , 2533 )
					return
				endif	
			endif
			if $lv >= 80
				if $lv < 85
					AcceptTask( -1 , 2534 )
					return
				endif	
			endif
			if $lv >= 85
				if $lv < 90
					AcceptTask( -1 , 2535 )
					return
				endif	
			endif
			if $lv >= 90
				if $lv <= 99
					AcceptTask( -1 , 2536 )
					return
				endif	
			endif
		if $lv >= 100
			AcceptTask( -1 , 2537 )
			return
		endif
				
		}
			//???????????
	function OnOption2(){
	
	//??????
	$TaskVar = GetPlayerVar( -1, 256 )
	if $TaskVar >= 1
				BC( "dialogbox", "player", -1, "You've already obtained this reward!" )
				return
			endif

		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You material bag is full. How could you receive my gifts?" )
			return
		endif

		AddPlayerInfo( -1, "item", 9, 2 )
		SetPlayerVar( -1, 256, 1 )
		 
		$TaskVar1 = GetPlayerVar( -1, 251)
		$TaskVar2 = GetPlayerVar( -1, 252)
		$TaskVar3 = GetPlayerVar( -1, 253)
		$TaskVar4 = GetPlayerVar( -1, 254)
		$TaskVar5 = GetPlayerVar( -1, 255)
		$TaskVar6 = GetPlayerVar( -1, 256)
		$TaskVar7 = GetPlayerVar( -1, 257)
		
    $t = $TaskVar1 + $TaskVar2    
    $t = $t + $TaskVar3 
		$t = $t + $TaskVar4
    $t = $t + $TaskVar5
    $t = $t + $TaskVar6
    $t = $t + $TaskVar7
	 if $TaskVar < 7
	
		BC( "screen", "player", -1, "Happy Halloween! Try to find gifts senders in Atlantis!" )
		BC( "dialogbox", "player", -1, "Warrior! Have you participated in today's Trial for the Brave today? There are prizes in store for all who do!" )
		return
		endif
			if $TaskVar == 7
	
		BC( "screen", "player", -1, "Congratulations! You've found all the gifts senders in Atlantis! We all wish you a happy Halloween!!!" )
			PlayEffect(-1,"common\transmit\colorfulring\fire\colorfulring_fire.ini")
		return
		endif
	}
		function OnOption3(){
	  	//????
    $playervar = GetPlayerVar(-1,3451)  
    if $playervar > 4
     return
  endif
   	//??????
		$Info = GetPlayerInfo( -1, "item", 44639)	
			if $Info < 1
				return
			endif

		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		 //???????
     $del_count = SubPlayerInfo( -1, "item", 44639, 1 )
     //??????????,????????
  if $del_count != 0
     return
  endif
		AddPlayerInfo( -1, "item", 44640, 1 )
		AddPlayerInfo( -1, "item", 59557, 1 )
		$playervar = $playervar + 1
		SetPlayerVar(-1, 3451, $playervar )
		BC( "dialogbox", "player", -1, "This is your lucky red envelope!\nGo to see {hIgnese[133]h} now! He'll be glad to see you." )
		
	}
	
	