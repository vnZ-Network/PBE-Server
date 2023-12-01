	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/08
	//		Author:???
	//		TaskName:NPC-conexp-408.s
	//		TaskID:?? ????
	//
	//****************************************
	
	function OnRequest(){
		
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
	
		
		$lv = GetPlayerInfo( -1 , "level" )
		$lv2 = $lv * $lv
		$exp = $lv2 * 40
		$Info = GetPlayerInfo ( -1 , "item" , 12623 )
		if $Info < 1
			BC( "dialogbox", "player", -1, "Trade the Shiny Wish Charms for constellation blessings. Thus you can acquire a large amount of EXP reward.\n\nParticipate in the Outer Starway events to acquire shiny Constellation Wish Charms." )
			return
		endif
		$delinfo = SubPlayerInfo ( -1 , "item" , 12623 , 1 )
		if $delinfo != 0
			return
		endif
		
		AddPlayerInfo ( -1 , "exp" , $exp )
		$n = RandomNumber ( 0 , 99 )
		if $n < 50
			PlayEffect( -1 , "common\liuxing\keep\tx_liuxing_keep_01.ini" )
		else
			PlayEffect( -1 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
		endif
		
	
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
		//------   20?~21?????--------------
		if $hour < 20
			BC( "dialogbox", "player", -1, "Astral Feast time is 20:15 - 21:00. Please come back later." )
			return
		endif
		if $hour == 20
			if $minute < 15
				BC( "dialogbox", "player", -1, "Astral Feast time is 20:15 - 21:00. Please come back later." )
				return
			endif
		endif
		if $hour > 20
			BC( "dialogbox", "player", -1, "Astral Feast time is 20:15 - 21:00. Please come back tomorrow." )
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