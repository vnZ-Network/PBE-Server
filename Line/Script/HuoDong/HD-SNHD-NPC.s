	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/04
	//		Author:???
	//		TaskName:HD-SNHD-NPC.s
	//		TaskID:????
	//
	//****************************************
	
	//????1:?????????? 3629
	//????2:?????????? 15
	//????3:?????????   3217
	//????4:???????       3218
	
	function OnRequest(){
		DisableNpcOption(0)
		
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 20
			DisableNpcOption(0)
			return
		endif
		
		//??????
		$time0 = GetSystemTime( "yday" )
		
		//????????
		$Task_Time = GetPlayerVar( -1, 3629 )
		
		//?????
		$Task0 = GetPlayerVar( -1, 3217 )
		
		//?????
		$Task1 = GetPlayerVar( -1, 3218 )
		
		//????????
		$Task2 = GetPlayerVar( -1, 15 )
		
		if $Task_Time == $time0
			if $Task1 > 4
				if $Task2 == 1
					DisableNpcOption(0)
				endif	
			endif
			
			if $Task0 > 5
				if $Task1 > 5
					DisableNpcOption(0)
				endif
			endif
						
			call IsExistQuest()
			if $ExistQuest == 1
				DisableNpcOption(0)
			endif
		endif
		
	}
	
//------------??1-------------
//	function OnOption0(){
//		//????ID
//		$Quest_ID = 0
//		
//		//?????????
//		$ExistQuest = 0
//		
//		$level = GetPlayerInfo( -1, "level" )
//		//????????
//		if $level < 20
//			BC( "dialogbox", "player", -1, "GUID:05166000000" )
//			return
//		endif
//		
//		$count = GetTaskCount ( -1 )
//		if $count >= 20
//			BC( "dialogbox", "player", -1, "GUID:05166000001" )	
//			return
//		endif
//		
//		//??????
//		$time0 = GetSystemTime( "yday" )
//		
//		//????????
//		$Task_Time = GetPlayerVar( -1, 3629 )
//		
//		//?????
//		$Task0 = GetPlayerVar( -1, 3217 )
//		
//		//?????
//		$Task1 = GetPlayerVar( -1, 3218 )
//		
//		//????????
//		$Task2 = GetPlayerVar( -1, 15 )
//		
//		if $Task_Time == $time0
//			if $Task2 == 1
//				call IsExistQuest()
//				if $ExistQuest == 1
//					BC( "dialogbox", "player", -1, "GUID:05166000002" )
//					return
//				else
//					if $Task1 > 4
//						BC( "dialogbox", "player", -1, "GUID:05166000003" )
//						return
//					else
//						$Task0 = 1
//						$Task1 = $Task1 + 1
//						call ClearQuest()
//						call RandomQuest()
//						SetTaskLoopCount( -1, $Quest_ID, 1 )
//						SetPlayerVar( -1, 3217, 1 )
//						SetPlayerVar( -1, 3218, $Task1 )
//						SetPlayerVar( -1, 15, 1 )
//						BC( "dialogbox", "player", -1, "GUID:05166000004",$Task1,"GUID:05166000005",$Task0,"GUID:05166000006" )
//						return
//					endif
//				endif
//			else
//				if $Task0 > 5
//					if $Task1 > 5
//						BC( "dialogbox", "player", -1, "GUID:05166000007" )
//						return
//					else
//						$Task0 = 1
//						$Task1 = $Task1 + 1
//						call RandomQuest()
//						SetTaskLoopCount( -1, $Quest_ID, 1 )
//						SetPlayerVar( -1, 3217, 1 )
//						SetPlayerVar( -1, 3218, $Task1 )
//						SetPlayerVar( -1, 15, 1 )
//						BC( "dialogbox", "player", -1, "GUID:05166000008",$Task1,"GUID:05166000009",$Task0,"GUID:05166000010" )
//						return
//					endif
//				else
//					call RandomQuest()
//					SetTaskLoopCount( -1, $Quest_ID, $Task0 )
//					SetPlayerVar( -1, 15, 1 )
//					BC( "dialogbox", "player", -1, "GUID:05166000011",$Task1,"GUID:05166000012",$Task0,"GUID:05166000013" )
//					return	
//				endif
//			endif
//		else
//			$Task0 = 1
//			$Task1 = 1
//			call ClearQuest()
//			call RandomQuest()
//			SetTaskLoopCount( -1, $Quest_ID, 1 )
//			SetPlayerVar( -1, 3217, 1 )
//			SetPlayerVar( -1, 3218, 1 )
//			SetPlayerVar( -1, 15, 1 )
//			SetPlayerVar( -1, 3629, $time0 )
//			BC( "dialogbox", "player", -1, "GUID:05166000014" )
//			return
//		endif
//	}
	
//------------??2-------------
	function OnOption1(){
		//???????
		$count = GetPlayerInfo( -1, "item", 63258 )
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63258, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64411, 1 )
		
		$Random = RandomNumber ( 1, 10 )
		if $Random == 1
			AddPlayerInfo( -1, "item", 64412, 1 )
		endif
		BC( "screen", "player", -1, "Exchange succeeds!" )
		return
	}
//------------??3-------------
	function OnOption2(){
		//???????
		$count = GetPlayerInfo( -1, "item", 63259 )
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63259, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 6122, 1 )
		
		$Random = RandomNumber ( 1, 10 )
		if $Random == 1
			AddPlayerInfo( -1, "item", 6143, 1 )
		endif
		BC( "screen", "player", -1, "Exchange succeeds!" )
		return
	}
//------------??4-------------
	function OnOption3(){
		//???????
		$count = GetPlayerInfo( -1, "item", 63260 )
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63260, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 6132, 1 )
		
		$Random = RandomNumber ( 1, 10 )
		if $Random == 1
			AddPlayerInfo( -1, "item", 6153, 1 )
		endif
		BC( "screen", "player", -1, "Exchange succeeds!" )
		return
	}
//------------??5-------------
	function OnOption4(){
		//???????
		$count = GetPlayerInfo( -1, "item", 63261 )
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63261, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64413, 1 )
		
		$Random = RandomNumber ( 1, 10 )
		if $Random == 1
			AddPlayerInfo( -1, "item", 64414, 1 )
		endif
		BC( "screen", "player", -1, "Exchange succeeds!" )
		return
	}
//------------??6-------------
	function OnOption5(){
		//???????
		$count = GetPlayerInfo( -1, "item", 63262 )
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63262, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 6012, 1 )
		
		$Random = RandomNumber ( 1, 10 )
		if $Random == 1
			AddPlayerInfo( -1, "item", 6183, 1 )
		endif
		BC( "screen", "player", -1, "Exchange succeeds!" )
		return
	}
//------------??7-------------
	function OnOption6(){
		//???????
		$count = GetPlayerInfo( -1, "item", 63263 )
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63263, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 6016, 1 )
		
		$Random = RandomNumber ( 1, 10 )
		if $Random == 1
			AddPlayerInfo( -1, "item", 6193, 1 )
		endif
		BC( "screen", "player", -1, "Exchange succeeds!" )
		return
	}
//------------??8-------------
	function OnOption7(){
		//???????
		$count = GetPlayerInfo( -1, "item", 63258 )
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		$count1 = GetPlayerInfo( -1, "item", 63259 )
		if $count1 == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		$count2 = GetPlayerInfo( -1, "item", 63260 )
		if $count2 == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63258, 1 )
		//??????
		if $result != 0
			return
		endif
		$result1 = SubPlayerInfo( -1, "item", 63259, 1 )
		//??????
		if $result1 != 0
			return
		endif
		$result2 = SubPlayerInfo( -1, "item", 63260, 1 )
		//??????
		if $result2 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64244, 1 )
		
		$Random = RandomNumber ( 1, 10 )
		if $Random == 1
			AddPlayerInfo( -1, "item", 6103, 1 )
		endif
		BC( "screen", "player", -1, "Exchange succeeds!" )
		return
	}
//------------??9-------------
	function OnOption8(){
		//???????
		$count = GetPlayerInfo( -1, "item", 63261 )
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		$count1 = GetPlayerInfo( -1, "item", 63262 )
		if $count1 == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		$count2 = GetPlayerInfo( -1, "item", 63263 )
		if $count2 == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63261, 1 )
		//??????
		if $result != 0
			return
		endif
		$result1 = SubPlayerInfo( -1, "item", 63262, 1 )
		//??????
		if $result1 != 0
			return
		endif
		$result2 = SubPlayerInfo( -1, "item", 63263, 1 )
		//??????
		if $result2 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64245, 1 )
		
		$Random = RandomNumber ( 1, 10 )
		if $Random == 1
			AddPlayerInfo( -1, "item", 6113, 1 )
		endif
		BC( "screen", "player", -1, "Exchange succeeds!" )
		return
	}
//------------??10-------------
	function OnOption9(){
		//???????
		$count = GetPlayerInfo( -1, "item", 63258 )
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		$count1 = GetPlayerInfo( -1, "item", 63259 )
		if $count1 == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		$count2 = GetPlayerInfo( -1, "item", 63260 )
		if $count2 == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		$count3 = GetPlayerInfo( -1, "item", 63261 )
		if $count3 == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		$count4 = GetPlayerInfo( -1, "item", 63262 )
		if $count4 == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		$count5 = GetPlayerInfo( -1, "item", 63263 )
		if $count5 == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$Pet = GetPetCount( -1 )
		$PetMax = GetPetMaxCount( -1 )
		if $Pet >= $PetMax
			BC( "dialogbox", "player", -1, "N/A????????!?????????"????"?!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63258, 1 )
		//??????
		if $result != 0
			return
		endif
		$result1 = SubPlayerInfo( -1, "item", 63259, 1 )
		//??????
		if $result1 != 0
			return
		endif
		$result2 = SubPlayerInfo( -1, "item", 63260, 1 )
		//??????
		if $result2 != 0
			return
		endif
		$result3 = SubPlayerInfo( -1, "item", 63261, 1 )
		//??????
		if $result3 != 0
			return
		endif
		$result4 = SubPlayerInfo( -1, "item", 63262, 1 )
		//??????
		if $result4 != 0
			return
		endif
		$result5 = SubPlayerInfo( -1, "item", 63263, 1 )
		//??????
		if $result5 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64402, 1 )
		
		$Random = RandomNumber ( 1, 10 )
		if $Random == 1
			AddPet( -1, 2760, 1, 0 )
			#name0 = GetPlayerInfo( -1, "name" )
			BC( "screen", "servergroup", -1, "N/A????:",#name0,"N/A????????-????!")
		endif

	}								
	
//------------??????--------------
	function IsExistQuest(){
		$quest0 = IsTaskAccept( -1, 4407 )
		if $quest0 == 0
			$ExistQuest = 1
			return
		endif
		$quest1 = IsTaskAccept( -1, 4409 )
		if $quest1 == 0
			$ExistQuest = 1
			return
		endif
		$quest2 = IsTaskAccept( -1, 4411 )
		if $quest2 == 0
			$ExistQuest = 1
			return
		endif
		$quest3 = IsTaskAccept( -1, 4413 )
		if $quest3 == 0
			$ExistQuest = 1
			return
		endif
		$quest4 = IsTaskAccept( -1, 4415 )
		if $quest4 == 0
			$ExistQuest = 1
			return
		endif
		$quest5 = IsTaskAccept( -1, 4416 )
		if $quest5 == 0
			$ExistQuest = 1
			return
		endif
		$quest6 = IsTaskAccept( -1, 4417 )
		if $quest6 == 0
			$ExistQuest = 1
			return
		endif
		$quest7 = IsTaskAccept( -1, 4418 )
		if $quest7 == 0
			$ExistQuest = 1
			return
		endif
		$quest8 = IsTaskAccept( -1, 4419 )
		if $quest8 == 0
			$ExistQuest = 1
			return
		endif
		$quest9 = IsTaskAccept( -1, 4420 )
		if $quest9 == 0
			$ExistQuest = 1
			return
		endif
		$quest10 = IsTaskAccept( -1, 4408 )
		if $quest10 == 0
			$ExistQuest = 1
			return
		endif
		$quest11 = IsTaskAccept( -1, 4410 )
		if $quest11 == 0
			$ExistQuest = 1
			return
		endif
		$quest12 = IsTaskAccept( -1, 4412 )
		if $quest12 == 0
			$ExistQuest = 1
			return
		endif
		$quest13 = IsTaskAccept( -1, 4414 )
		if $quest13 == 0
			$ExistQuest = 1
			return
		endif
		
		$ExistQuest = 0
	
	}	
	
//----------------????-------------------
	function ClearQuest(){
		CancelTask( -1, 4407 )
		CancelTask( -1, 4409 )
		CancelTask( -1, 4411 )
		CancelTask( -1, 4413 )
		CancelTask( -1, 4415 )
		CancelTask( -1, 4416 )
		CancelTask( -1, 4417 )
		CancelTask( -1, 4418 )
		CancelTask( -1, 4419 )
		CancelTask( -1, 4420 )
	}
	
//--------------????---------------
	function RandomQuest(){
		$Random = RandomNumber ( 1, 10 )
		if $Random == 1
			AcceptTask( -1, 4407 )
			$Quest_ID = 4407
			return
		endif
		if $Random == 2
			AcceptTask( -1, 4409 )
			$Quest_ID = 4409
			return
		endif
		if $Random == 3
			AcceptTask( -1, 4411 )
			$Quest_ID = 4411
			return
		endif
		if $Random == 4
			AcceptTask( -1, 4413 )
			$Quest_ID = 4413
			return
		endif
		if $Random == 5
			AcceptTask( -1, 4415 )
			$Quest_ID = 4415
			return
		endif
		if $Random == 6
			AcceptTask( -1, 4416 )
			$Quest_ID = 4416
			return
		endif
		if $Random == 7
			AcceptTask( -1, 4417 )
			$Quest_ID = 4417
			return
		endif
		if $Random == 8
			AcceptTask( -1, 4418 )
			$Quest_ID = 4418
			return
		endif
		if $Random == 9
			AcceptTask( -1, 4419 )
			$Quest_ID = 4419
			return
		endif
		if $Random == 10
			AcceptTask( -1, 4420 )
			$Quest_ID = 4420
			return
		endif
		
	}				