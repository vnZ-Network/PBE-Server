	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/25
	//		Author:?? ???
	//		TaskName:NPC-xinshouchuansong.s
	//		TaskID:??????NPC??
	//
	//****************************************
	

	function OnRequest(){
		
		$is_exist_quest = 0
		
		$result = IsTaskDone( -1, 651 )
		if $result == 0
			$is_exist_quest = 1
		endif
		
		$result = IsTaskDone( -1, 652 )
		if $result == 0
			$is_exist_quest = 1
		endif
		
		$result = IsTaskDone( -1, 653 )
		if $result == 0
			$is_exist_quest = 1
		endif
		
		$result = IsTaskDone( -1, 654 )
		if $result == 0
			$is_exist_quest = 1
		endif
		
		$result = IsTaskDone( -1, 655 )
		if $result == 0
			$is_exist_quest = 1
		endif
		
		$result = IsTaskDone( -1, 656 )
		if $result == 0
			$is_exist_quest = 1
		endif
		
		$result = IsTaskDone( -1, 657 )
		if $result == 0
			$is_exist_quest = 1
		endif
		
		$result = IsTaskDone( -1, 658 )
		if $result == 0
			$is_exist_quest = 1
		endif
		
		$result = IsTaskDone( -1, 659 )
		if $result == 0
			$is_exist_quest = 1
		endif
		
		$result = IsTaskDone( -1, 660 )
		if $result == 0
			$is_exist_quest = 1
		endif
		
		$result = IsTaskDone( -1, 661 )
		if $result == 0
			$is_exist_quest = 1
		endif
		
		$result = IsTaskDone( -1, 662 )
		if $result == 0
			$is_exist_quest = 1
		endif
		
		//??
		if $is_exist_quest == 0
			DisableNpcOption(0)
		else
			DisableNpcOption(2)
		endif
		
		
		
	//????????????????????
		$Status1 = IsExistStatus( -1 , 10683 )
		$Status2 = IsExistStatus( -1 , 10684 )
		$Status3 = IsExistStatus( -1 , 10685 )
		$Status4 = IsExistStatus( -1 , 10686 )
		$Status5 = IsExistStatus( -1 , 10687 )
		$Status6 = IsExistStatus( -1 , 10688 )
		$Status7 = IsExistStatus( -1 , 10689 )
		$Status8 = IsExistStatus( -1 , 10690 )
		$Status9 = IsExistStatus( -1 , 10691 )
		$Status10 = IsExistStatus( -1 , 10692 )
		$Status11 = IsExistStatus( -1 , 10693 )
		$Status12 = IsExistStatus( -1 , 10694 )
		
		$a = 0
		if $Status1 != 0
			$a = $a + 1
		endif
		if $Status2 != 0
			$a = $a + 1
		endif
		if $Status3 != 0
			$a = $a + 1
		endif
		if $Status4 != 0
		$a = $a + 1
		endif
		if $Status5 != 0
		$a = $a + 1
		endif
		if $Status6 != 0
		$a = $a + 1
		endif
		if $Status7 != 0
		$a = $a + 1
		endif
		if $Status8 != 0
		$a = $a + 1
		endif
		if $Status9 != 0
		$a = $a + 1
		endif
		if $Status10 != 0
		$a = $a + 1
		endif
		if $Status11 != 0
		$a = $a + 1
		endif
		if $Status12 != 0
		$a = $a + 1
		endif
		
		if $a == 12
			DisableNpcOption(1)
		endif
		$hour = GetSystemTime( "hour" )
		$minute = GetSystemTime( "minute" )
		$lv = GetPlayerInfo( -1 , "level" )
		//------   19?~21?????--------------
		if $hour < 20
			DisableNpcOption(1)
		endif
		if $hour == 20
			if $minute < 15
				DisableNpcOption(1)
			endif
		endif
		if $hour > 20
			DisableNpcOption(1)
		endif
		if $lv < 30
			DisableNpcOption(1)
		endif

	}
	
	function OnOption0(){


		FlyToMap( -1 ,475 ,100 ,64 )

	}


	function OnOption1(){
	
		$Line = GetServerLineID()
		$hour = GetSystemTime( "hour" )
		$minute = GetSystemTime( "minute" )
		$lv = GetPlayerInfo( -1 , "level" )
		if $Line == 1
			BC( "dialogbox", "player", -1, "Event Astral Feast is available only in Dual-line Realms." )
			return
		endif
		if $Line == 3
			BC( "dialogbox", "player", -1, "Event Astral Feast is available only in Dual-line Realms." )
			return
		endif
		if $Line == 5
			BC( "dialogbox", "player", -1, "Event Astral Feast is available only in Dual-line Realms." )
			return
		endif
		if $Line == 7
			BC( "dialogbox", "player", -1, "Event Astral Feast is available only in Dual-line Realms." )
			return
		endif
		//------   19?~21?????--------------
		if $hour < 20
			return
		endif
		if $hour == 20
			if $minute < 15
				return
			endif
		endif
		if $hour > 20
			return
		endif
		if $lv < 30
			return
		endif
		$Status1 = IsExistStatus( -1 , 10683 )
		$Status2 = IsExistStatus( -1 , 10684 )
		$Status3 = IsExistStatus( -1 , 10685 )
		$Status4 = IsExistStatus( -1 , 10686 )
		$Status5 = IsExistStatus( -1 , 10687 )
		$Status6 = IsExistStatus( -1 , 10688 )
		$Status7 = IsExistStatus( -1 , 10689 )
		$Status8 = IsExistStatus( -1 , 10690 )
		$Status9 = IsExistStatus( -1 , 10691 )
		$Status10 = IsExistStatus( -1 , 10692 )
		$Status11 = IsExistStatus( -1 , 10693 )
		$Status12 = IsExistStatus( -1 , 10694 )
		
		if $Status1 == 0
			FlyToMap( -1 , 186 , 63 , 64 )
			return
		endif
		if $Status2 == 0
			FlyToMap( -1 , 186 , 63 , 64 )
			return
		endif
		if $Status3 == 0
			FlyToMap( -1 , 186 , 63 , 64 )
			return
		endif
		if $Status4 == 0
			FlyToMap( -1 , 186 , 63 , 64 )
			return
		endif
		if $Status5 == 0
			FlyToMap( -1 , 186 , 63 , 64 )
			return
		endif
		if $Status6 == 0
			FlyToMap( -1 , 186 , 63 , 64 )
			return
		endif
		if $Status7 == 0
			FlyToMap( -1 , 186 , 63 , 64 )
			return
		endif
		if $Status8 == 0
			FlyToMap( -1 , 186 , 63 , 64 )
			return
		endif
		if $Status9 == 0
			FlyToMap( -1 , 186 , 63 , 64 )
			return
		endif
		if $Status10 == 0
			FlyToMap( -1 , 186 , 63 , 64 )
			return
		endif
		if $Status11 == 0
			FlyToMap( -1 , 186 , 63 , 64 )
			return
		endif
		if $Status12 == 0
			FlyToMap( -1 , 186 , 63 , 64 )
			return
		endif
		BC( "dialogbox", "player", -1, "Cannot return to Outer Starway without constellation Guardian Angel." )
	
	}	
	
	//????????????????????????????
	function OnOption2(){
		
		$vip_id = GetRookieCardID(-1)  
		if $vip_id == 1801     		
		
//			AddPlayerInfo( -1, "item", 64267, 1 )
			$pro = GetPlayerInfo( -1, "profession" )
			if $pro == 1
				AddPlayerInfo( -1, "item", 39265, 1 )
	 		//  AddPlayerInfo( -1, "item", 39266, 1 )
				AddPlayerInfo( -1, "item", 39267, 1 )
				AddPlayerInfo( -1, "item", 39268, 1 )
	 		    AddPlayerInfo( -1, "item", 39269, 1 )
			//	AddPlayerInfo( -1, "item", 39270, 1 ) 
			//	AddPlayerInfo( -1, "item", 39271, 1 ) 		
			endif
			if $pro == 2
				AddPlayerInfo( -1, "item", 39272, 1 )
	 		//  AddPlayerInfo( -1, "item", 39273, 1 )
				AddPlayerInfo( -1, "item", 39274, 1 )
				AddPlayerInfo( -1, "item", 39275, 1 )
	 		    AddPlayerInfo( -1, "item", 39276, 1 )
				AddPlayerInfo( -1, "item", 39279, 1 ) 
			//	AddPlayerInfo( -1, "item", 39278, 1 ) 
			endif
			if $pro == 3
				AddPlayerInfo( -1, "item", 39280, 1 )
	 		//  AddPlayerInfo( -1, "item", 39281, 1 )
				AddPlayerInfo( -1, "item", 39282, 1 )
				AddPlayerInfo( -1, "item", 39283, 1 )
	 		    AddPlayerInfo( -1, "item", 39284, 1 )
			//	AddPlayerInfo( -1, "item", 39285, 1 ) 
			//	AddPlayerInfo( -1, "item", 39286, 1 )
			endif
			if $pro == 4
				AddPlayerInfo( -1, "item", 39287, 1 )
	 		//    AddPlayerInfo( -1, "item", 39288, 1 )
				AddPlayerInfo( -1, "item", 39289, 1 )
				AddPlayerInfo( -1, "item", 39290, 1 )
	 		    AddPlayerInfo( -1, "item", 39291, 1 )
			//	AddPlayerInfo( -1, "item", 39292, 1 ) 
			//	AddPlayerInfo( -1, "item", 39293, 1 )
			endif
			if $pro == 5
				AddPlayerInfo( -1, "item", 39294, 1 )
	 		//  AddPlayerInfo( -1, "item", 39295, 1 )
				AddPlayerInfo( -1, "item", 39296, 1 )
				AddPlayerInfo( -1, "item", 39297, 1 )
	 		    AddPlayerInfo( -1, "item", 39298, 1 )
				AddPlayerInfo( -1, "item", 39301, 1 ) 
			//	AddPlayerInfo( -1, "item", 39300, 1 )
			endif
			
			if $pro == 6
				AddPlayerInfo( -1, "item", 39302, 1 )
	 		//  AddPlayerInfo( -1, "item", 39295, 1 )
				AddPlayerInfo( -1, "item", 39304, 1 )
				AddPlayerInfo( -1, "item", 39305, 1 )
	 		    AddPlayerInfo( -1, "item", 39306, 1 )
				AddPlayerInfo( -1, "item", 39309, 1 ) 
			//	AddPlayerInfo( -1, "item", 39300, 1 )
			endif

			//
			//AddPlayerInfo(-1 , "givepoint" , 294)	
			#name = GetPlayerInfo(-1 , "name")
			BC( "screen", "player", -1, "Greetings, inductee ",#name , "! Your exclusive beginner gear is ready." )
		endif

        //---------------------------------
		SetTaskDone( -1, 651 )
		SetTaskDone( -1, 652 )
		SetTaskDone( -1, 653 )
		SetTaskDone( -1, 654 )
		SetTaskDone( -1, 655 )
		SetTaskDone( -1, 656 )
		SetTaskDone( -1, 657 )
		SetTaskDone( -1, 658 )
		SetTaskDone( -1, 659 )
		SetTaskDone( -1, 660 )
		SetTaskDone( -1, 661 )
		SetTaskDone( -1, 662 )
		
//		$player_count = GetMapPlayerCount(128)
//		//??1
//		if $player_count < 200
//			FlyToMap( -1 ,128 ,37 ,79 )
//			return
//		endif                                               ---
//		$player_count = GetMapPlayerCount(147)
//		//??2
//		if $player_count < 200
//			FlyToMap( -1 ,147 ,37 ,79 )
//			return
//		endif
//		$player_count = GetMapPlayerCount(148)
//		//??3
//		if $player_count < 200
//			FlyToMap( -1 ,148 ,37 ,79 )
//			return
//		endif
//		//??1
		FlyToMap( -1 ,128 ,36 ,85 )
		
		
	}