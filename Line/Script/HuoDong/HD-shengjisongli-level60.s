	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/24
	//		Author:??
	//		TaskName:HD-shengjisongli-level60.s
	//		TaskID:????????-60???
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 60
			BC( "chat", "player", -1, "You can open the pack after you reach level 60." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		
		$vip_id = GetRookieCardID(-1)
		
		$getvar284 = GetPlayerVar(-1,284)
		if $getvar284 == 1
			$vip_id = 1801
		endif
		
		//55?????,??????vip??
		$vip_id = 1801
		if $vip_id == 1801
			if $bag_count < 6
				BC( "chat", "player", -1, "You have less than 6 open bag slots." )
				return
			endif
		else
			if $bag_count < 4
				BC( "chat", "player", -1, "Your bag has less than 4 empty slots." )
				return
			endif
		endif
		

		//???????
		$del_count = SubPlayerInfo( -1, "item", 59172, -1 )
		//??????????
		if $del_count != 0
			return
		endif
		//?????
		AddPlayerInfo( -1, "item", 59173, 1 )
		
		if $vip_id == 1801
			
//			AddPlayerInfo( -1, "item", 63410, 1 )
//			AddPlayerInfo( -1, "item", 6390, 1 )
//			AddPlayerInfo( -1, "item", 6394, 1 )
			AddPlayerInfo( -1, "item", 64385, 20 )	
			AddPlayerInfo( -1, "item", 5963, 1 )	
		endif
		
		//BC( "screen", "player", -1, "GUID:05152000003" )
//		AddPlayerInfo( -1, "item", 6620, 1 )
		
		$pro = GetPlayerInfo( -1, "profession" )
		if $pro == 1
			AddPlayerInfo( -1, "item", 20257, 1 )
		endif
		if $pro == 2
			AddPlayerInfo( -1, "item", 20257, 1 )
		endif	
		if $pro == 3
			AddPlayerInfo( -1, "item", 20257, 1 )
		endif
		if $pro == 4
			AddPlayerInfo( -1, "item", 20258, 1 )
		endif
		if $pro == 5
			AddPlayerInfo( -1, "item", 20258, 1 )
		endif
		if $pro == 6
			AddPlayerInfo( -1, "item", 20258, 1 )
		endif
	
		
		$pro = GetPlayerInfo( -1, "sex" )
		if $pro == 0
			AddPlayerInfo( -1, "item", 36665, 1 )
		else
			AddPlayerInfo( -1, "item", 36664, 1 )
		endif

		
		AddPlayerInfo( -1, "item", 59122, 30 )
		AddPlayerInfo( -1, "item", 59936, 1 )
//		AddPlayerInfo( -1, "item", 59142, 1 )

	}