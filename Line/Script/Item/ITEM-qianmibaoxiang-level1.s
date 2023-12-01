	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/04
	//		Author:??
	//		TaskName:ITEM-qianmibaoxiang-level1.s
	//		TaskID:??1???64267
	//
	//****************************************
	
	function OnUseItem(){
	
	//	$level = GetPlayerInfo( -1, "level" )
		//????????
	//	if $level < 35
	//		BC( "chat", "player", -1, "GUID:06734000000" )
	//		return
	//	endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "chat", "player", -1, "Insufficient bag slots!" )
			return
		endif

		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 64267, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		//?????????
		AddPlayerInfo( -1, "item", 64269, 1 )
		//????????
		
		$job = GetPlayerInfo( -1, "profession" )
		if $job == 1
			AddPlayerInfo( -1, "item", 19511, 1 )
		endif
		if $job == 2
			AddPlayerInfo( -1, "item", 19512, 1 )
		endif
		if $job == 3
			AddPlayerInfo( -1, "item", 19513, 1 )
		endif
		if $job == 4
			AddPlayerInfo( -1, "item", 19514, 1 )
		endif
		if $job == 5
			AddPlayerInfo( -1, "item", 19515, 1 )
		endif
		
		$sex = GetPlayerInfo( -1, "sex" )
		if $sex == 0
			AddPlayerInfo( -1, "item", 36251, 1 )	
		else
			AddPlayerInfo( -1, "item", 36266, 1 )
		endif
		
	}