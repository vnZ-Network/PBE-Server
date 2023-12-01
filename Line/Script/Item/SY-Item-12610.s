	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/05
	//		Author:???
	//		TaskName:SY-Item-12610.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){		
		$Item = GetPlayerInfo( -1, "item", 12610 )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 12610, 1 )
		if $SubItem != 0
			return
		endif
		
		#player_name = GetPlayerInfo( -1, "name" )
		BC( "chat", "server", -1, "The hero ",#player_name," has opened the Oracle Ring Box and obtained 5 Oracle Ring Fragments." )
		BC( "screen", "server", -1, "The hero ",#player_name," has opened the Oracle Ring Box and obtained 5 Oracle Ring Fragments." )
	
		AddPlayerInfo( -1, "item", 59252 , 5 )
		
	}