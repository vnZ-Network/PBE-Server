	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/25
	//		Author:??
	//		TaskName:HD-item63049-leishengjitan1.s
	//		TaskID:???????????
	//
	//****************************************
	
	function OnUseItem(){
	

		//??????????,?????????????,????
		$count = GetPlayerInfo( -1, "item", 63049 )
		if $count == 0
			return 
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		//????
		if $level < 30
			BC( "chat", "player", -1, "You can use the item above level 30." )
			return
		endif
		//????
		$mapid = GetPlayerInfo( -1, "mapid" )
		if $mapid != 112
			BC( "chat", "player", -1, "You must use the item in Pilgrim's Temple." )
			return
		endif



		//???????????????(??????)
		$use_day = GetPlayerVar( -1, 3601)
		//???????(??????)
		$time = GetSystemTime( "yday" )
		
		//????????
		if $use_day == $time
			BC( "chat", "player", -1, "You have use one already,please continue tomorrow." )
			return
			
		endif
		//?????????
		$result = AddStatus( -1, 11909 , 1)
		if $result == 0
			//?????,?????
			SetPlayerVar( -1 , 3601 , $time)
			//??????
			SubPlayerInfo( -1, "item", 63049, 1 )
		endif

	}