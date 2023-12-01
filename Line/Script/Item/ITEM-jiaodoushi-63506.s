	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/11
	//		Author:??
	//		TaskName:ITEM-jiaodoushi-63506.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		
		$Now_Month =  GetSystemTime( "month" )
		$Now_Year =  GetSystemTime( "year" )
		
		if $Now_Year != 2009
			BC( "screen", "player", -1, "Incorrect date" )
			return
		endif
		if $Now_Month > 9
			BC( "screen", "player", -1, "Incorrect date" )
			return
		endif
		
		
		$level = GetPlayerInfo( -1, "level" )
		
		if $level > 75
			BC( "screen", "player", -1, "Unable to acquire EXP. You are already LV75." )
			return
		endif
        //------------------------------------------------------
		AddPlayerInfo(-1 , "exp" ,10000000 )
		
		
		
	}