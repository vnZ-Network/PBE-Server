	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/11
	//		Author:??
	//		TaskName:HD-shengjisongli-level25.s
	//		TaskID:????????-25???
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 25
			BC( "chat", "player", -1, "You must open the chest above level 25" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "chat", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 63028, -1 )
		//??????????
		if $del_count != 0
			return
		endif
		//?????????
		AddPlayerInfo( -1, "item", 63029, 1 )
		//????????
		AddPlayerInfo( -1, "item", 6066, 1 )
		//??
		ReqAsk( -1, 1 )
		
		$vip_id = GetRookieCardID(-1)
		
		$getvar284 = GetPlayerVar(-1,284)
		if $getvar284 == 1
			$vip_id = 1801
		endif
		
		//????VIP??
		if $vip_id != 1801
		
			$pro = GetPlayerInfo( -1, "profession" )
			if $pro == 1
				AddPlayerInfo( -1, "item", 39605, 1 )
			endif
			if $pro == 2
				AddPlayerInfo( -1, "item", 39606, 1 )
			endif	
			if $pro == 3
				AddPlayerInfo( -1, "item", 39607, 1 )
			endif
			if $pro == 4
				AddPlayerInfo( -1, "item", 39608, 1 )
			endif
			if $pro == 5
				AddPlayerInfo( -1, "item", 39609, 1 )
			endif
			if $pro == 6
				AddPlayerInfo( -1, "item", 39702, 1 )
			endif
		endif
		
	}