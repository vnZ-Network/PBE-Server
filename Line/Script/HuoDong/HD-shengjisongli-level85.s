	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/24
	//		Author:??
	//		TaskName:HD-shengjisongli-level85.s
	//		TaskID:????????-85???
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 85
			BC( "chat", "player", -1, "You can open the pack after you reach level 85." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )

			if $bag_count < 2
				BC( "chat", "player", -1, "You need at least 2 empty slots in your bag." )
				return
			endif
	
		

		//???????
		$del_count = SubPlayerInfo( -1, "item", 59177, -1 )
		//??????????
		if $del_count != 0
			return
		endif
		//?????
		AddPlayerInfo( -1, "item", 59178, 1 )
		//if $vip_id == 1801
			
		//	AddPlayerInfo( -1, "item", 63410, 1 )
			
		//	AddPlayerInfo(-1 , "exp" , 945000)
		
		//endif
		//AddPlayerInfo( -1, "item", 63034, 1 )
		//????????
		
//		AddPlayerInfo( -1, "item", 59136, 7 )
		AddPlayerInfo( -1, "item", 61081, 20 )
//		AddPlayerInfo( -1, "item", 61083, 3 )
//		AddPlayerInfo( -1, "item", 59162, 8 )
//		AddPlayerInfo( -1, "item", 63466, 1 )
		
		AddPlayerInfo( -1, "item", 63667, 1 )
		

	}