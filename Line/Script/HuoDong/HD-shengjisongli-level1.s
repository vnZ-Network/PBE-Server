	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/18
	//		Author:??
	//		TaskName:HD-shengjisongli-level1.s
	//		TaskID:????????-1???
	//
	//****************************************



	function OnUseItem(){

		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 1
			BC( "chat", "player", -1, "You must open the chest above level 1." )
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "chat", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		//???????
		$del_count = SubPlayerInfo( -1, "item", 63051, -1 )
		//??????????
		if $del_count != 0
			return
		endif
		//?????????
		AddPlayerInfo( -1, "item", 63024, 1 )
		//????????
		$pro = GetPlayerInfo( -1, "profession" )
		if $pro == 1
			AddPlayerInfo( -1, "item", 18002, 1 )
			return
		endif
		if $pro == 2
			AddPlayerInfo( -1, "item", 18302, 1 )
			return
		endif
		if $pro == 3
			AddPlayerInfo( -1, "item", 18602, 1 )
			return
		endif
		if $pro == 4
			AddPlayerInfo( -1, "item", 18902, 1 )
			return
		endif
		if $pro == 5
			AddPlayerInfo( -1, "item", 19202, 1 )
			return
		endif
		if $pro == 6
			AddPlayerInfo( -1, "item", 19400, 1 )
			return
		endif



	}