	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/13
	//		Author:??
	//		TaskName:Vip-Item-37021-baijinka.s
	//		TaskID:vip????  
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 5
			BC( "screen", "player", -1, "You need at least 4 empty Bag slots." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 37021, 1 )
		//????????
		if $del_count != 0
			return
		endif
		//????
		AddPlayerInfo( -1, "item", 37027, 1 )		
		//????
		AddPlayerInfo( -1, "item", 37028, 1 )
		//???
		AddPlayerInfo( -1, "item", 64386, 1 )
		//??vip???
		AddPlayerInfo( -1, "item", 44428, 1 )		
		//??
		AddPlayerInfo( -1, "item", 59055, 1 )		
	}
