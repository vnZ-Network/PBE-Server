	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/22
	//		Author:??
	//		TaskName:
	//		TaskID:????88888??
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 4
			BC( "screen", "player", -1, "You need at least 4 empty Bag slots." )
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif			
		//????
		$del_count = SubPlayerInfo( -1, "item", 44540, 1 )
		//????????
		if $del_count != 0
			return
		endif
//		//?????
//		AddPlayerInfo( -1, "item", 62620, 1 )
		//+13??
		AddPlayerInfo( -1, "item", 64297, 30 )
		AddPlayerInfo( -1, "item", 9, 100 )
		AddPlayerInfo( -1, "item", 64402, 5 )
		AddPlayerInfo( -1, "item", 64386, 2 )
//		//????
//		AddTitle( -1, 91 )

	}
