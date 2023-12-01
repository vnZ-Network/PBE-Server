	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/11
	//		Author:??
	//		TaskName:HD-shengjisongli-level20.s
	//		TaskID:????????-20???
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 20
			BC( "chat", "player", -1, "You must open the chest above level 20" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "chat", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		$task_count = GetTaskCount (-1)
		if $task_count >= 20
			BC( "screen", "player", -1, "You got so many quests ,please abandon some quests and open the pack again" )
			return
		endif
		//???????
		$del_count = SubPlayerInfo( -1, "item", 63027, -1 )
		//??????????
		if $del_count != 0
			return
		endif
		//?????????
		AddPlayerInfo( -1, "item", 63028, 1 )
		//?????200
		AddPlayerInfo( -1, "item", 59141, 1 )
		
    $vip_id = GetRookieCardID(-1)
		
		$getvar284 = GetPlayerVar(-1,284)
		if $getvar284 == 1
			$vip_id = 1801
		endif
		
		//???VIP??
		if $vip_id == 1801
			AcceptTask(-1,747)
			#name = GetPlayerInfo(-1 , "name")
			BC( "screen", "server", -1, "Inductee ",#name , " has opened their Beginner's Mega Pack and received the Path to Nobility 1 quest." )
			//???????
			AddPlayerInfo( -1, "item", 62582, 1 )
		else
			//???????
			AddPlayerInfo( -1, "item", 62581, 1 )
			//????
			$pro = GetPlayerInfo( -1, "profession" )
			if $pro == 1
				AddPlayerInfo( -1, "item", 39625, 1 )
			endif
			if $pro == 2
				AddPlayerInfo( -1, "item", 39626, 1 )
			endif
			if $pro == 3
				AddPlayerInfo( -1, "item", 39627, 1 )
			endif
			if $pro == 4
				AddPlayerInfo( -1, "item", 39628, 1 )
			endif
			if $pro == 5
				AddPlayerInfo( -1, "item", 39629, 1 )
			endif	
			if $pro == 6
				AddPlayerInfo( -1, "item", 39640, 1 )
			endif	
		endif

		
	}