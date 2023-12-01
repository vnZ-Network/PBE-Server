	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/04
	//		Author:??
	//		TaskName:ITEM-qianmibaoxiang-level20.s
	//		TaskID:??20???64269
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 20
			BC( "chat", "player", -1, "You cannot open the chest until LV20." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "chat", "player", -1, "Insufficient bag slots!" )
			return
		endif

		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 64269, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		//????????
		AddPlayerInfo( -1, "item", 62511, 1 )
		AddPlayerInfo( -1, "item", 64268, 1 )	
		AddTitle(-1 , 1)
		
	}