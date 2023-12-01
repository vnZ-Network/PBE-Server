	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/20
	//		Author:???
	//		TaskName:Monster-43323.s
	//		TaskID: ??
	//
	//****************************************
	
	function OnDead(){
		
		$Now_Minute =  GetSystemTime( "minute")
		$Now_Hour =  GetSystemTime( "hour" )
		if $Now_Hour == 7
			DropMonsterItems( -1 , 90022 )
			BC( "screen", "player", -1, "You have gathered Dew Drop from the leaves." )
		else
			BC( "screen", "player", -1, "Everyday you can gather Dew Drop from this type of plant from 7:00 to 8:00." )
		endif
		
	}
	
	