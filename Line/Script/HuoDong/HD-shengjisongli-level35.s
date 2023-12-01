	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/11
	//		Author:??
	//		TaskName:HD-shengjisongli-level35.s
	//		TaskID:????????-35???
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 35
			BC( "chat", "player", -1, "You must open the chest above level 35" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 5
			BC( "chat", "player", -1, "You do not have enough space in your bag." )
			return
		endif

		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 63030, -1 )
		//??????????
		if $del_count != 0
			return
		endif
		//?????????
		AddPlayerInfo( -1, "item", 63031, 1 )
		//????????
	
		AddPlayerInfo( -1, "item", 64402, 1 )
		AddPlayerInfo( -1, "item", 6055, 200 )
		AddPlayerInfo( -1, "item", 6052, 200 )
		AddPlayerInfo( -1, "item", 63501, 1 )
//		AddPlayerInfo( -1, "money", 10000 )
//		BC( "messagebox", "player", -1, "GUID:05146000002" )
		ReqAsk( -1, 3 )
		
		$vip_id = GetRookieCardID(-1)
		
		$getvar284 = GetPlayerVar(-1,284)
		if $getvar284 == 1
			$vip_id = 1801
		endif
		
		//????VIP??
		if $vip_id != 1801
			$pro = GetPlayerInfo( -1, "profession" )
			if $pro == 1
				AddPlayerInfo( -1, "item", 39610, 1 )
			endif
			if $pro == 2
				AddPlayerInfo( -1, "item", 39611, 1 )
			endif	
			if $pro == 3
				AddPlayerInfo( -1, "item", 39612, 1 )
			endif
			if $pro == 4
				AddPlayerInfo( -1, "item", 39613, 1 )
			endif
			if $pro == 5
				AddPlayerInfo( -1, "item", 39614, 1 )
			endif
			if $pro == 6
				AddPlayerInfo( -1, "item", 39704, 1 )
			endif
		endif	

		
	}