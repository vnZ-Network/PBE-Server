	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/22
	//		Author:??
	//		TaskName:
	//		TaskID:???????(?7-10?)
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "You need at least 2 empty Bag slots." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 44536, 1 )
		//????????
		if $del_count != 0
			return
		endif
//		//?????
//		AddPlayerInfo( -1, "item", 62620, 1 )
		//+13??
		AddPlayerInfo( -1, "item", 44384, 1 )
		//????
		AddTitle( -1, 92 )

	}
