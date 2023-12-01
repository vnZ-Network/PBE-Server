	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/11
	//		Author:??
	//		TaskName:HD-shengjisongli-level40.s
	//		TaskID:????????-40???
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 40
			BC( "chat", "player", -1, "You must open the chest above level 40" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 4
			BC( "chat", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "chat", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		$task_count = GetTaskCount (-1)
		if $task_count >= 20
			BC( "screen", "player", -1, "You got so many quests ,please abandon some quests and open the pack again" )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 63031, -1 )
		//??????????
		if $del_count != 0
			return
		endif
		AddPlayerInfo( -1, "item", 63032, 1 )
		$vip_id = GetRookieCardID(-1)
		
		$getvar284 = GetPlayerVar(-1,284)
		if $getvar284 == 1
			$vip_id = 1801
		endif
		
		//???VIP??
		if $vip_id == 1801
			AcceptTask(-1,749)
			#name = GetPlayerInfo(-1 , "name")
			BC( "screen", "server", -1, "Inductee ",#name , " has opened their Beginner's Mega Pack and received the Path to Nobility 3 quest." )
		else
			$pro = GetPlayerInfo( -1, "profession" )
			if $pro == 1
				AddPlayerInfo( -1, "item", 39635, 1 )
			endif
			if $pro == 2
				AddPlayerInfo( -1, "item", 39636, 1 )
			endif	
			if $pro == 3
				AddPlayerInfo( -1, "item", 39637, 1 )
			endif
			if $pro == 4
				AddPlayerInfo( -1, "item", 39638, 1 )
			endif
			if $pro == 5
				AddPlayerInfo( -1, "item", 39639, 1 )
			endif
			if $pro == 6
				AddPlayerInfo( -1, "item", 39705, 1 )
			endif
		endif
    //------------------------
		AddPlayerInfo( -1, "item", 64402, 1 )
		AddPlayerInfo( -1, "item", 59137, 1 )
//		AddPlayerInfo( -1, "item", 2141, 1 )
//		AddPlayerInfo( -1, "item", 5945, 1 )
//		2141	2???
//		5945	?????(2?)

		ReqAsk( -1, 4 )
		
		
	}