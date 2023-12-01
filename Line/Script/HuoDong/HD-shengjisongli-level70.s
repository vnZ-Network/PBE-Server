	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/24
	//		Author:??
	//		TaskName:HD-shengjisongli-level70.s
	//		TaskID:????????-70???
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 70
			BC( "chat", "player", -1, "You can open the pack after you reach level 70." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		
		$vip_id = GetRookieCardID(-1)
		//55?????,??????vip??
		$vip_id = 1801
		if $vip_id == 1801
			if $bag_count < 4
				BC( "chat", "player", -1, "Your bag has less than 4 empty slots." )
				return
			endif
		else
			if $bag_count < 4
				BC( "chat", "player", -1, "Your bag has less than 4 empty slots." )
				return
			endif
		endif
		

		//???????
		$del_count = SubPlayerInfo( -1, "item", 59174, -1 )
		//??????????
		if $del_count != 0
			return
		endif
		//?????
		AddPlayerInfo( -1, "item", 59175, 1 )
		
		
		
		if $vip_id == 1801
			
			AddPlayerInfo( -1, "item", 50025, 20 )
//			AddPlayerInfo( -1, "item", 2152, 1 )
			AddPlayerInfo( -1, "item", 63667, 1 )
			
//			AddPlayerInfo( -1, "item", 63481, 5 )
			
//			AddPlayerInfo( -1, "item", 60051, 3 )
			
		endif
		
		//BC( "screen", "player", -1, "GUID:05154000003" )
		AddPlayerInfo( -1, "item", 50036, 15 )
		
//		AddPlayerInfo( -1, "item", 50026, 20 )	
//		AddPlayerInfo( -1, "item", 50025, 10 )
		AddPlayerInfo( -1, "item", 59139, 1 )
//		AddPlayerInfo( -1, "item", 59201, 1 )

	}