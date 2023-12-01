	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/11
	//		Author:??
	//		TaskName:HD-shengjisongli-level15.s
	//		TaskID:????????-15???
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 15
			BC( "chat", "player", -1, "You must open the chest above level 15" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "chat", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 63026, -1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		//?????????
		AddPlayerInfo( -1, "item", 63027, 1 )
		//????????
		$vip_id = GetRookieCardID(-1)
		
		$getvar284 = GetPlayerVar(-1,284)
		if $getvar284 == 1
			$vip_id = 1801
		endif
		
		$pro = GetPlayerInfo( -1, "profession" )
		if $pro == 1
			AddPlayerInfo( -1, "item", 19901, 1 )
			if $vip_id != 1801
				AddPlayerInfo( -1, "item", 39600, 1 )
			endif	
			return
		endif
		if $pro == 2
			AddPlayerInfo( -1, "item", 19902, 1 )
			if $vip_id != 1801
				AddPlayerInfo( -1, "item", 39601, 1 )
			endif	
			return
		endif
		if $pro == 3
			AddPlayerInfo( -1, "item", 19903, 1 )
			if $vip_id != 1801
				AddPlayerInfo( -1, "item", 39602, 1 )
			endif	
			return
		endif
		if $pro == 4
			AddPlayerInfo( -1, "item", 19904, 1 )
			if $vip_id != 1801
				AddPlayerInfo( -1, "item", 39603, 1 )
			endif	
			return
		endif
		if $pro == 5
			AddPlayerInfo( -1, "item", 19905, 1 )
			if $vip_id != 1801
				AddPlayerInfo( -1, "item", 39604, 1 )
			endif
			return
		endif	
		if $pro == 6
			AddPlayerInfo( -1, "item", 19906, 1 )
			if $vip_id != 1801
				AddPlayerInfo( -1, "item", 39700, 1 )
			endif
			return
		endif	
	}