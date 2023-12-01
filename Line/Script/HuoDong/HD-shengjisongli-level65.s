	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/24
	//		Author:??
	//		TaskName:HD-shengjisongli-level65.s
	//		TaskID:????????-65???
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 65
			BC( "chat", "player", -1, "You can open the pack after you reach level 65." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
			if $bag_count < 3	
				BC( "chat", "player", -1, "You have less than 3 open bag slots." )
				return
			endif
	
		//???????
		$del_count = SubPlayerInfo( -1, "item", 59173, -1 )
		//??????????
		if $del_count != 0
			return
		endif
		//?????
		AddPlayerInfo( -1, "item", 59174, 1 )
		//if $vip_id == 1801
			
		//	AddPlayerInfo( -1, "item", 63410, 1 )
			
		//	AddPlayerInfo(-1 , "exp" , 945000)
		
		//endif
		//AddPlayerInfo( -1, "item", 63034, 1 )
		//????????
		
		//AddPlayerInfo( -1, "item", 59135, 1 )
//		AddPlayerInfo( -1, "item", 62537, 1 )
		//AddPlayerInfo( -1, "item", 59142, 1 )
		AddPlayerInfo( -1, "item", 63667, 1 )
//		AddPlayerInfo( -1, "item", 59162, 6 )
		
		AddPlayerInfo( -1, "item", 6390, 1 )
		AddPlayerInfo( -1, "item", 6394, 1 )

	}