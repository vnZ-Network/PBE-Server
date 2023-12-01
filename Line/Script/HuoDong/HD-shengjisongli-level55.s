	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/24
	//		Author:??
	//		TaskName:HD-shengjisongli-level55.s
	//		TaskID:????????-55???
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 55
			BC( "chat", "player", -1, "You can open the pack after you reach level 55." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		
		//$vip_id = GetRookieCardID(-1)
		
		//if $vip_id == 1801
			if $bag_count < 4	
				BC( "chat", "player", -1, "You have less than 4 open bag slots." )
				return
			endif
		//else
		//	if $bag_count < 3	
		//		BC( "chat", "player", -1, "GUID:05151000002" )
		//		return
		//	endif
		//endif
		

		//???????
		$del_count = SubPlayerInfo( -1, "item", 59161, -1 )
		//??????????
		if $del_count != 0
			return
		endif
		//?????
		AddPlayerInfo( -1, "item", 59172, 1 )
		//if $vip_id == 1801
			
		//	AddPlayerInfo( -1, "item", 63410, 1 )
			
		//	AddPlayerInfo(-1 , "exp" , 945000)
		
		//endif
		//AddPlayerInfo( -1, "item", 63034, 1 )
		//????????
		
		AddPlayerInfo( -1, "item", 61073, 20 )
//		AddPlayerInfo( -1, "item", 61075, 2 )
//		AddPlayerInfo( -1, "item", 59162, 5 )
		AddPlayerInfo( -1, "item", 6057, 1 )
		AddPlayerInfo( -1, "item", 59838, 1 )
		//???
		AddPlayerInfo( -1, "item", 62572, 1 )

	}