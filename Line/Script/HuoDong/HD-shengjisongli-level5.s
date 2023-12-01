	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/11
	//		Author:??
	//		TaskName:HD-shengjisongli-level5.s
	//		TaskID:????????-5???
	//
	//****************************************
	
	
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 5
			BC( "chat", "player", -1, "You must open the chest above level 5" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "chat", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 63024, -1 )
		//??????????
		if $del_count != 0
			return
		endif
		//?????????
		AddPlayerInfo( -1, "item", 63025, 1 )
		//????????
		$pro = GetPlayerInfo( -1, "profession" )
		if $pro == 1
			AddPlayerInfo( -1, "item", 39052, 1 )
		endif
		if $pro == 2
			AddPlayerInfo( -1, "item", 39052, 1 )
		endif
		if $pro == 3
			AddPlayerInfo( -1, "item", 39052, 1 )
		endif
		if $pro == 4
			AddPlayerInfo( -1, "item", 39053, 1 )	
		endif
		if $pro == 5
			AddPlayerInfo( -1, "item", 39053, 1 )
		endif
		if $pro == 6
			AddPlayerInfo( -1, "item", 39053, 1 )
		endif
		
		$pro = GetPlayerInfo( -1, "sex" )
		if $pro == 0
			AddPlayerInfo( -1, "item", 6558, 1 )
		else
			AddPlayerInfo( -1, "item", 6559, 1 )
		endif
		
	}