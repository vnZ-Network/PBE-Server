	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/24
	//		Author:??
	//		TaskName:HD-shengjisongli-level75.s
	//		TaskID:????????-75???
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 75
			BC( "chat", "player", -1, "You can open the pack after you reach level 75." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )

			if $bag_count < 5	
				BC( "chat", "player", -1, "You must have at least 5 spaces in your bag!" )
				return
			endif
	
		

		//???????
		$del_count = SubPlayerInfo( -1, "item", 59175, -1 )
		//??????????
		if $del_count != 0
			return
		endif
		//?????
		AddPlayerInfo( -1, "item", 59176, 1 )
		//if $vip_id == 1801
			
		//	AddPlayerInfo( -1, "item", 63410, 1 )
			
		//	AddPlayerInfo(-1 , "exp" , 945000)
		
		//endif
		//AddPlayerInfo( -1, "item", 63034, 1 )
		//????????
		
		AddPlayerInfo( -1, "item", 2211, 1 )
		AddPlayerInfo( -1, "item", 59143, 1 )
		
		//AddPlayerInfo( -1, "item", 60013, 3 )
		$pro = GetPlayerInfo( -1, "profession" )
		if $pro == 1
			AddPlayerInfo( -1, "item", 5959, 1 )
		endif
		if $pro == 2
			AddPlayerInfo( -1, "item", 5959, 1 )
		endif	
		if $pro == 3
			AddPlayerInfo( -1, "item", 5959, 1 )
		endif
		if $pro == 4
			AddPlayerInfo( -1, "item", 5960, 1 )
		endif
		if $pro == 5
			AddPlayerInfo( -1, "item", 5960, 1 )
		endif
		if $pro == 6
			AddPlayerInfo( -1, "item", 5960, 1 )
		endif		
		
		
//		AddPlayerInfo( -1, "item", 59162, 7 )
		AddPlayerInfo( -1, "item", 2147, 1 )
		//AddPlayerInfo( -1, "item", 63410, 2 )
		AddPlayerInfo( -1, "item", 59937, 1 )
		

	}