	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/24
	//		Author:??
	//		TaskName:HD-shengjisongli-level90.s
	//		TaskID:????????-90???
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 90
			BC( "chat", "player", -1, "You can open the pack after you reach level 95." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		
		$vip_id = GetRookieCardID(-1)
		//55?????,??????vip??
		$vip_id = 1801
		if $vip_id == 1801
			if $bag_count < 5
				BC( "chat", "player", -1, "You must have at least 5 free bag spaces!" )
				return
			endif
		else
			if $bag_count < 2
				BC( "chat", "player", -1, "You need at least 2 empty slots in your bag." )
				return
			endif
		endif
		

		//???????
		$del_count = SubPlayerInfo( -1, "item", 59178, -1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		//AddPlayerInfo( -1, "item", 59177, 1 )
		
		
		
		if $vip_id == 1801
			
			AddPlayerInfo( -1, "item", 6602, 1 )
			AddPlayerInfo( -1, "item", 6605, 1 )
//			AddPlayerInfo( -1, "item", 60029, 5 )
			
		endif
		
		AddPlayerInfo( -1, "item", 59165, 1 )
		
//		AddPlayerInfo( -1, "item", 59136, 7 )
		
//		AddPlayerInfo( -1, "item", 2466, 1 )
		
		AddPlayerInfo( -1, "item", 59938, 1 )
		AddPlayerInfo( -1, "item", 59840, 1 )
		
//		AddPlayerInfo( -1, "item", 59142, 1 )
		
//		AddPlayerInfo( -1, "item", 59135, 1 )

	}