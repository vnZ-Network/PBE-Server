	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/24
	//		Author:??
	//		TaskName:HD-shengjisongli-level80.s
	//		TaskID:????????-80???
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 80
			BC( "chat", "player", -1, "You can open the pack after you reach level 80." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		
		$vip_id = GetRookieCardID(-1)
		//55?????,??????vip??
		$vip_id = 1801
		if $vip_id == 1801
			if $bag_count < 2
				BC( "chat", "player", -1, "You need at least 2 empty slots in your bag." )
				return
			endif
		else
			if $bag_count < 2
				BC( "chat", "player", -1, "You need at least 2 empty slots in your bag." )
				return
			endif
		endif
		
		if $bag_count1 < 1
			BC( "chat", "player", -1, "You do not have enough bag space." )
			return
		endif

		//???????
		$del_count = SubPlayerInfo( -1, "item", 59176, -1 )
		//??????????
		if $del_count != 0
			return
		endif
		//?????
		AddPlayerInfo( -1, "item", 59177, 1 )
		
		
		
		if $vip_id == 1801
			
			AddPlayerInfo( -1, "item", 2211, 1 )
			AddPlayerInfo( -1, "item", 9, 10 )
			//AddPlayerInfo( -1, "item", 63416, 1 )
//			AddPlayerInfo( -1, "item", 63410, 2 )
			
		endif
		
		//BC( "screen", "player", -1, "GUID:05156000004" )
//		AddPlayerInfo( -1, "item", 64374, 3 )
		
//		AddPlayerInfo( -1, "item", 59122, 30 )	
//		AddPlayerInfo( -1, "item", 64176, 20 )
//		AddPlayerInfo( -1, "item", 64178, 5 )
		AddPlayerInfo( -1, "item", 59140, 1 )
//		AddPlayerInfo( -1, "item", 64402, 1 )

	}