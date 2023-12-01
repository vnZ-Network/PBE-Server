	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/06
	//		Author:???
	//		TaskName:SY-Item-59328.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){		
		$Item = GetPlayerInfo( -1, "item", 59328 )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Your bag is full." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 59328, 1 )
		if $SubItem != 0
			return
		endif
		
		#player_name = GetPlayerInfo( -1, "name" )
		BC( "chat", "server", -1, "The hero ",#player_name," opened Oracle Crystal Chest, and received 20 Oracle Crystals." )
		BC( "screen", "server", -1, "The hero ",#player_name," opened Oracle Crystal Chest, and received 20 Oracle Crystals." )
	
		AddPlayerInfo( -1, "item", 59326 , 20 )
		
	}