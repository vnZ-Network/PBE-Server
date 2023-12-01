	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/16
	//		Author:???
	//		TaskName:NPC-1532-Jadeluo.s
	//		TaskID:?????
	//
	//****************************************
	
	//????1:?????????? 3631
	//????2:?????????? 20
	//????3:?????????   3221
	//????4:???????       3222
	
	function OnRequest(){
		
//		DisableNpcOption(0)
		
		$Now_Week =  GetSystemTime( "week" )
		//-----------------------
		if $Now_Week == 1
			DisableNpcOption(0)
		endif
		if $Now_Week == 2
			DisableNpcOption(0)
		endif
		if $Now_Week == 3
			DisableNpcOption(0)
		endif
		if $Now_Week == 4
			DisableNpcOption(0)
		endif
		if $Now_Week == 5
			DisableNpcOption(0)
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 30
			DisableNpcOption(0)
		endif
		//??????
		$time0 = GetSystemTime( "yday" )
		//????????
		$Task_Time = GetPlayerVar( -1, 3631 )
		
		//?????
		$Task0 = GetPlayerVar( -1, 3221 )
		
		//?????
		$Task1 = GetPlayerVar( -1, 3222 )
		
		//????????
		$Task2 = GetPlayerVar( -1, 20 )
		
		if $Task_Time == $time0
			if $Task1 > 1
				if $Task2 == 1
					DisableNpcOption(0)
				endif
			endif
			
			if $Task0 > 20
				if $Task1 >= 2
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
	function OnOption0(){
		
		BC( "dialogbox", "player", -1, "Sorry, the Rainbow Sonata event has already ended!" )
		return
		
		$Now_Week =  GetSystemTime( "week" )
		//-----------------------
		if $Now_Week == 1
			return
		endif
		if $Now_Week == 2
			return
		endif
		if $Now_Week == 3
			return
		endif
		if $Now_Week == 4
			return
		endif
		if $Now_Week == 5
			return
		endif
		$line = GetServerLineID()
		if $line == 1
			BC( "dialogbox", "player", -1, "Rainbow Sonata is only available on Realms 2, 4, 6, and 8." )
			return
		endif
		if $line == 3
			BC( "dialogbox", "player", -1, "Rainbow Sonata is only available on Realms 2, 4, 6, and 8." )
			return
		endif
		if $line == 5
			BC( "dialogbox", "player", -1, "Rainbow Sonata is only available on Realms 2, 4, 6, and 8." )
			return
		endif
		if $line == 7
			BC( "dialogbox", "player", -1, "Rainbow Sonata is only available on Realms 2, 4, 6, and 8." )
			return
		endif
		//????ID
		$Quest_ID = 0
		
		//?????????
		$ExistQuest = 0
		
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 30
			BC( "dialogbox", "player", -1, "You do not meet the level requirement. Please come back when you are at least LV20." )
			return
		endif
		
		$count = GetTaskCount ( -1 )
		if $count >= 20
			BC( "dialogbox", "player", -1, "Quest list is full. Please delete some quests and try again." )	
			return
		endif
		
		$NullItem = GetPlayerInfo( -1, "nullitem",0 )
		if $NullItem < 1
			BC( "dialogbox", "player", -1, "Bag is full." )
			return
		endif
		
		//??????
		$time0 = GetSystemTime( "yday" )
		
		//????????
		$Task_Time = GetPlayerVar( -1, 3631 )
		
		//?????
		$Task0 = GetPlayerVar( -1, 3221 )
		
		//?????
		$Task1 = GetPlayerVar( -1, 3222 )
		
		//????????
		$Task2 = GetPlayerVar( -1, 20 )
		
		if $Task_Time == $time0
			if $Task2 == 1
				call IsExistQuest()
				if $ExistQuest == 1
					BC( "dialogbox", "player", -1, "You have already acquired the event quest. Please finish it first." )
					return
				else
					if $Task1 > 1
						BC( "dialogbox", "player", -1, "You have already acquired the 2nd phase quest. Please continue tomorrow." )
						return
					else
						$Task0 = 1
						$Task1 = $Task1 + 1
						call ClearQuest()
						call RandomQuest()
						SetTaskLoopCount( -1, $Quest_ID, 1 )
						SetPlayerVar( -1, 3221, 1 )
						SetPlayerVar( -1, 3222, $Task1 )
						SetPlayerVar( -1, 20, 1 )
						BC( "dialogbox", "player", -1, "You are currently on Phase ",$Task1,", Round ",$Task0," of Rainbow Sonata." )
						return
					endif	
				endif
			else
				if $Task0 > 20
					if $Task1 >= 2
						BC( "dialogbox", "player", -1, "You have already acquired the 2nd phase quest. Please continue tomorrow." )
						return
					else
						$Task0 = 1
						$Task1 = $Task1 + 1
						call RandomQuest()
						SetTaskLoopCount( -1, $Quest_ID, 1 )
						SetPlayerVar( -1, 3221, 1 )
						SetPlayerVar( -1, 3222, $Task1 )
						SetPlayerVar( -1, 20, 1 )
						BC( "dialogbox", "player", -1, "You are currently on Phase ",$Task1,", Round ",$Task0," of Rainbow Sonata." )
						return
					endif	
				else
					call RandomQuest()
					SetTaskLoopCount( -1, $Quest_ID, $Task0 )
					SetPlayerVar( -1, 20, 1 )
					BC( "dialogbox", "player", -1, "You are currently on Phase ",$Task1,", Round ",$Task0," of Rainbow Sonata." )
					return	
				endif
			endif
		else
			$Task0 = 1
			$Task1 = 1
			call ClearQuest()
			call RandomQuest()
			SetTaskLoopCount( -1, $Quest_ID, 1 )
			SetPlayerVar( -1, 3221, 1 )
			SetPlayerVar( -1, 3222, 1 )
			SetPlayerVar( -1, 20, 1 )
			SetPlayerVar( -1, 3631, $time0 )
			BC( "dialogbox", "player", -1, "You are currently on Phase 1, Round 1 of Rainbow Sonata." )
			//????-START
			$TJ_join_number = GetGlobalVar(943)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(943 , $TJ_join_number)
			//????-END
			return
		endif
	}
	
	function OnOption1(){
		$NullItem = GetPlayerInfo( -1, "nullitem",0 )
		if $NullItem < 1
			BC( "dialogbox", "player", -1, "Bag is full." )
			return
		endif
		
		$ItemID01 = 63288
		$ItemID02 = 63289
		$ItemID03 = 63290
		$ItemID04 = 63291
		$ItemID05 = 63292
		$Money01 = 50000
		
		$Info01 = GetPlayerInfo( -1, "money" )
		$Info02 = GetPlayerInfo( -1, "item", $ItemID01 )
		$Info03 = GetPlayerInfo( -1, "item", $ItemID02 )
		$Info04 = GetPlayerInfo( -1, "item", $ItemID03 )
		$Info05 = GetPlayerInfo( -1, "item", $ItemID04 )
		$Info06 = GetPlayerInfo( -1, "item", $ItemID05 )
		if $Info01 < $Money01
			BC( "dialogbox", "player", -1, "You have less than ",$Money01," coins." )
			return
		endif
		if $Info02 < 1
			BC( "dialogbox", "player", -1, "You don't have {#ff00ff00=Illusion Dragon's Head#}!" )
			return
		endif
		if $Info03 < 1
			BC( "dialogbox", "player", -1, "You don't have {#ff00ff00=Illusion Dragon's Body#}!" )
			return
		endif
		if $Info04 < 1
			BC( "dialogbox", "player", -1, "You don't have {#ff00ff00=Illusion Dragon's Wing#}!" )
			return
		endif
		if $Info05 < 1
			BC( "dialogbox", "player", -1, "You don't have {#ff00ff00=Illusion Dragon's Claw#}!" )
			return
		endif
		if $Info06 < 1
			BC( "dialogbox", "player", -1, "You don't have {#ff00ff00=Illusion Dragon's Tail#}!" )
			return
		endif
		
		$Sub1 = SubPlayerInfo( -1, "item", $ItemID01, 1 )
		if $Sub1 != 0
			return
		endif
		$Sub2 = SubPlayerInfo( -1, "item", $ItemID02, 1 )
		if $Sub2 != 0
			return
		endif
		$Sub3 = SubPlayerInfo( -1, "item", $ItemID03, 1 )
		if $Sub3 != 0
			return
		endif
		$Sub4 = SubPlayerInfo( -1, "item", $ItemID04, 1 )
		if $Sub4 != 0
			return
		endif
		$Sub5 = SubPlayerInfo( -1, "item", $ItemID05, 1 )
		if $Sub5 != 0
			return
		endif
		$Sub6 = SubPlayerInfo( -1, "money", $Money01 )
		if $Sub6 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 62512, 1 )
		
	}
	
//------------??????--------------
	function IsExistQuest(){
		$quest0 = IsTaskAccept( -1, 798 )
		if $quest0 == 0
			$ExistQuest = 1
			return
		endif
		$quest1 = IsTaskAccept( -1, 799 )
		if $quest1 == 0
			$ExistQuest = 1
			return
		endif
		$quest2 = IsTaskAccept( -1, 800 )
		if $quest2 == 0
			$ExistQuest = 1
			return
		endif
		$quest3 = IsTaskAccept( -1, 801 )
		if $quest3 == 0
			$ExistQuest = 1
			return
		endif
		$quest4 = IsTaskAccept( -1, 802 )
		if $quest4 == 0
			$ExistQuest = 1
			return
		endif
		$quest5 = IsTaskAccept( -1, 803 )
		if $quest5 == 0
			$ExistQuest = 1
			return
		endif
		$quest6 = IsTaskAccept( -1, 804 )
		if $quest6 == 0
			$ExistQuest = 1
			return
		endif
		$quest7 = IsTaskAccept( -1, 805 )
		if $quest7 == 0
			$ExistQuest = 1
			return
		endif
		$quest8 = IsTaskAccept( -1, 806 )
		if $quest8 == 0
			$ExistQuest = 1
			return
		endif
		$quest9 = IsTaskAccept( -1, 807 )
		if $quest9 == 0
			$ExistQuest = 1
			return
		endif
		$quest10 = IsTaskAccept( -1, 808 )
		if $quest10 == 0
			$ExistQuest = 1
			return
		endif
		$quest11 = IsTaskAccept( -1, 809 )
		if $quest11 == 0
			$ExistQuest = 1
			return
		endif
		$quest12 = IsTaskAccept( -1, 810 )
		if $quest12 == 0
			$ExistQuest = 1
			return
		endif
		$quest13 = IsTaskAccept( -1, 811 )
		if $quest13 == 0
			$ExistQuest = 1
			return
		endif
		$quest14 = IsTaskAccept( -1, 820 )
		if $quest14 == 0
			$ExistQuest = 1
			return
		endif
		$quest15 = IsTaskAccept( -1, 821 )
		if $quest15 == 0
			$ExistQuest = 1
			return
		endif
		$quest16 = IsTaskAccept( -1, 822 )
		if $quest16 == 0
			$ExistQuest = 1
			return
		endif
		$quest17 = IsTaskAccept( -1, 823 )
		if $quest17 == 0
			$ExistQuest = 1
			return
		endif
		$quest18 = IsTaskAccept( -1, 824 )
		if $quest18 == 0
			$ExistQuest = 1
			return
		endif
		$quest19 = IsTaskAccept( -1, 825 )
		if $quest19 == 0
			$ExistQuest = 1
			return
		endif
		$quest20 = IsTaskAccept( -1, 826 )
		if $quest20 == 0
			$ExistQuest = 1
			return
		endif
		$quest21 = IsTaskAccept( -1, 827 )
		if $quest21 == 0
			$ExistQuest = 1
			return
		endif
		$quest22 = IsTaskAccept( -1, 828 )
		if $quest22 == 0
			$ExistQuest = 1
			return
		endif
		$quest23 = IsTaskAccept( -1, 829 )
		if $quest23 == 0
			$ExistQuest = 1
			return
		endif
		$quest24 = IsTaskAccept( -1, 830 )
		if $quest24 == 0
			$ExistQuest = 1
			return
		endif
		$quest25 = IsTaskAccept( -1, 912 )
		if $quest25 == 0
			$ExistQuest = 1
			return
		endif
		$quest26 = IsTaskAccept( -1, 913 )
		if $quest26 == 0
			$ExistQuest = 1
			return
		endif
		$quest27 = IsTaskAccept( -1, 914 )
		if $quest27 == 0
			$ExistQuest = 1
			return
		endif
		$quest28 = IsTaskAccept( -1, 915 )
		if $quest28 == 0
			$ExistQuest = 1
			return
		endif
		$quest29 = IsTaskAccept( -1, 916 )
		if $quest29 == 0
			$ExistQuest = 1
			return
		endif
		$quest30 = IsTaskAccept( -1, 1336 )
		if $quest30 == 0
			$ExistQuest = 1
			return
		endif
		$quest31 = IsTaskAccept( -1, 1337 )
		if $quest31 == 0
			$ExistQuest = 1
			return
		endif
		
		$ExistQuest = 0
	
	}	
	
//----------------????-------------------
	function ClearQuest(){
		CancelTask( -1, 798 )
		CancelTask( -1, 799 )
		CancelTask( -1, 800 )
		CancelTask( -1, 801 )
		CancelTask( -1, 802 )
		CancelTask( -1, 803 )
		CancelTask( -1, 804 )
		CancelTask( -1, 805 )
		CancelTask( -1, 806 )
		CancelTask( -1, 807 )
		CancelTask( -1, 808 )
		CancelTask( -1, 809 )
		CancelTask( -1, 810 )
		CancelTask( -1, 811 )
		CancelTask( -1, 820 )
		CancelTask( -1, 821 )
		CancelTask( -1, 822 )
		CancelTask( -1, 823 )
		CancelTask( -1, 824 )
		CancelTask( -1, 825 )
		CancelTask( -1, 826 )
		CancelTask( -1, 827 )
		CancelTask( -1, 828 )
		CancelTask( -1, 829 )
		CancelTask( -1, 830 )
		CancelTask( -1, 912 )
		CancelTask( -1, 913 )
		CancelTask( -1, 914 )
		CancelTask( -1, 915 )
		CancelTask( -1, 916 )
	}
	
//--------------????---------------
	function RandomQuest(){
		$Random = RandomNumber ( 1, 135 )
		if $Random <= 10
			$level0 = GetPlayerInfo( -1, "level" )
			if $level0 > 19
				if $level0 < 30
					$Random01 = RandomNumber ( 1, 2 )
					if $Random01 == 1
						AcceptTask( -1, 798 )
						$Quest_ID = 798
						return
					else
						AcceptTask( -1, 799 )
						$Quest_ID = 799
						return
					endif
				endif
			endif
			if $level0 > 29
				if $level0 < 45
					$Random01 = RandomNumber ( 1, 2 )
					if $Random01 == 1
						AcceptTask( -1, 800 )
						$Quest_ID = 800
						return
					else
						AcceptTask( -1, 801 )
						$Quest_ID = 801
						return
					endif
				endif
			endif
			if $level0 > 44
				if $level0 < 60
					$Random01 = RandomNumber ( 1, 2 )
					if $Random01 == 1
						AcceptTask( -1, 802 )
						$Quest_ID = 802
						return
					else
						AcceptTask( -1, 803 )
						$Quest_ID = 803
						return
					endif
				endif
			endif
			if $level0 > 59
				if $level0 < 75
					$Random01 = RandomNumber ( 1, 2 )
					if $Random01 == 1
						AcceptTask( -1, 804 )
						$Quest_ID = 804
						return
					else
						AcceptTask( -1, 805 )
						$Quest_ID = 805
						return
					endif
				endif
			endif
			if $level0 > 74
				$Random01 = RandomNumber ( 1, 2 )
				if $Random01 == 1
					AcceptTask( -1, 806 )
					$Quest_ID = 806
					return
				else
					AcceptTask( -1, 807 )
					$Quest_ID = 807
					return	
				endif
			endif
		endif
		if $Random > 10
			if $Random <= 20
				AcceptTask( -1, 808 )
				$Quest_ID = 808
				return
			endif	
		endif
		if $Random > 20
			if $Random <= 30
				AcceptTask( -1, 809 )
				$Quest_ID = 809
				return
			endif	
		endif
		if $Random > 30
			if $Random <= 40
				AcceptTask( -1, 810 )
				$Quest_ID = 810
				return
			endif	
		endif
		if $Random > 40
			if $Random <= 50
				$level0 = GetPlayerInfo( -1, "level" )
				if $level0 > 19
					if $level0 < 30
						AcceptTask( -1, 820 )
						$Quest_ID = 820
						return
					endif
				endif
				if $level0 > 29
					if $level0 < 45
						AcceptTask( -1, 821 )
						$Quest_ID = 821
						return
					endif
				endif
				if $level0 > 44
					if $level0 < 60
						AcceptTask( -1, 822 )
						$Quest_ID = 822
						return
					endif
				endif
				if $level0 > 59
					if $level0 < 75
						AcceptTask( -1, 823 )
						$Quest_ID = 823
						return
					endif
				endif
				if $level0 > 74
					AcceptTask( -1, 824 )
					$Quest_ID = 824
					return
				endif
			endif	
		endif
		if $Random > 50
			if $Random <= 60
				AcceptTask( -1, 825 )
				$Quest_ID = 825
				return
			endif	
		endif
		if $Random > 60
			if $Random <= 70
				AcceptTask( -1, 826 )
				$Quest_ID = 826
				return
			endif	
		endif
		if $Random > 70
			if $Random <= 75
				AcceptTask( -1, 827 )
				$Quest_ID = 827
				return
			endif	
		endif
		if $Random > 75
			if $Random <= 85
				AcceptTask( -1, 829 )
				$Quest_ID = 829
				return
			endif	
		endif
		if $Random > 85
			if $Random <= 95
				AcceptTask( -1, 830 )
				$Quest_ID = 830
				return
			endif	
		endif
		if $Random > 95
			if $Random <= 105
				AcceptTask( -1, 912 )
				$Quest_ID = 912
				AddPlayerInfo( -1, "item", 12374, 1 )
				return
			endif	
		endif
		if $Random > 105
			if $Random <= 115
				AcceptTask( -1, 913 )
				$Quest_ID = 913
				return
			endif	
		endif
		if $Random > 115
			if $Random <= 125
				AcceptTask( -1, 914 )
				$Quest_ID = 914
				return
			endif	
		endif
		if $Random > 125
			if $Random <= 135
				$Random01 = RandomNumber ( 1, 2 )
				if $Random01 == 1
					AcceptTask( -1, 915 )
					$Quest_ID = 915
					return
				else
					AcceptTask( -1, 916 )
					$Quest_ID = 916
					return
				endif
			endif	
		endif
		
	}				