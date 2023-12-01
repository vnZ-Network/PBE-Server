	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/22
	//		Author:??
	//		TaskName:
	//		TaskID:????88??
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "You need at least 2 empty Bag slots." )
			return
		endif
//		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "GUID:06264000001" )
//			return
//		endif
				
		//????
		$del_count = SubPlayerInfo( -1, "item", 44537, 1 )
		//????????
		if $del_count != 0
			return
		endif
//		//?????
//		AddPlayerInfo( -1, "item", 62620, 1 )
		//+13??
		AddPlayerInfo( -1, "item", 64297, 10 )
//		//????
//		AddTitle( -1, 91 )

	}
