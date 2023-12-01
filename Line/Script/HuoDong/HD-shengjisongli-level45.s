	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/11
	//		Author:??
	//		TaskName:HD-shengjisongli-level45.s
	//		TaskID:????????-45???
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 45
			BC( "chat", "player", -1, "You must open the chest above level 45" )
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
		//???????
		$del_count = SubPlayerInfo( -1, "item", 63032, -1 )
		//??????????
		if $del_count != 0
			return
		endif
		//?????????
		AddPlayerInfo( -1, "item", 63033, 1 )
		//????????
		AddPlayerInfo( -1, "item", 64402, 1 )
		AddPlayerInfo( -1, "item", 1, 30 )
		AddPlayerInfo( -1, "item", 63664, 1 )
		AddPlayerInfo( -1, "item", 64230, 10 )
		AddPlayerInfo( -1, "item", 2203, 1 )
		ReqAsk( -1, 5 )
		$pro = GetPlayerInfo( -1, "profession" )
		if $pro <= 3
			AddPlayerInfo( -1, "item", 5941, 1 )
		else
			AddPlayerInfo( -1, "item", 5942, 1 )
		endif
	
	}