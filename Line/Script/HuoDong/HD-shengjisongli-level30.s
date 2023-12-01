	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/11
	//		Author:??
	//		TaskName:HD-shengjisongli-level30.s
	//		TaskID:????????-30???
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 30
			BC( "chat", "player", -1, "You must open the chest above level 30" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 6
			BC( "chat", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		$task_count = GetTaskCount (-1)
		if $task_count >= 20
			BC( "screen", "player", -1, "You got so many quests ,please abandon some quests and open the pack again" )
			return
		endif

		//???????
		$del_count = SubPlayerInfo( -1, "item", 63029, -1 )
		//??????????
		if $del_count != 0
			return
		endif
		AddPlayerInfo( -1, "item", 63030, 1 )
		
		$vip_id = GetRookieCardID(-1)
		
		$getvar284 = GetPlayerVar(-1,284)
		if $getvar284 == 1
			$vip_id = 1801
		endif
		
		//???VIP??
		if $vip_id == 1801
		
		$getvar284 = GetPlayerVar(-1,284)
		
			AcceptTask(-1,748)
			#name = GetPlayerInfo(-1 , "name")
			BC( "screen", "server", -1, "Inductee ",#name , " has opened their Beginner's Mega Pack and received the Path to Nobility 2 quest." )
			//??vip????
			AddPlayerInfo( -1, "item", 44350, 1 )
			BC( "screen", "server", -1, "Inductee ",#name , "You received the Celestial Blessing, and obtained a Divine Deity Chest!" )
		else
			$pro = GetPlayerInfo( -1, "profession" )
			if $pro == 1
				AddPlayerInfo( -1, "item", 39630, 1 )
			endif
			if $pro == 2
				AddPlayerInfo( -1, "item", 39631, 1 )
			endif	
			if $pro == 3
				AddPlayerInfo( -1, "item", 39632, 1 )
			endif
			if $pro == 4
				AddPlayerInfo( -1, "item", 39633, 1 )
			endif
			if $pro == 5
				AddPlayerInfo( -1, "item", 39634, 1 )
			endif	
			if $pro == 6
				AddPlayerInfo( -1, "item", 39703, 1 )
			endif	
		endif
        //------------------------  
//35019	???????(?)
//35319	???????(?)
//35619	???????(?)
//35919	???????(?)
//35029	???????(?)
//35329	???????(?)
//35629	???????(?)
//35929	???????(?)

		    		
		//????????
		//64402	?????
		AddPlayerInfo( -1, "item", 64402, 1 )
//36662	????(?)??
//36663	????(?)??
		$pro = GetPlayerInfo( -1, "sex" )
		if $pro == 0
			AddPlayerInfo( -1, "item", 36663, 1 )
		else
			AddPlayerInfo( -1, "item", 36662, 1 )
		endif
		//??
		ReqAsk( -1, 2 )
		//????-??
		//AddPlayerInfo( -1, "item", 6664, 1 )
		//????-??
		//AddPlayerInfo( -1, "item", 6665, 1 )
		//????-??
		//AddPlayerInfo( -1, "item", 6666, 1 )

	}