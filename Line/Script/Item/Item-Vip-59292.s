	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/22
	//		Author:	???
	//		TaskName:Item-Vip-59292.s
	//		TaskID:????VIP???
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "screen", "player", -1, "You need at least 3 open Bag slots." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 59292, 1 )
		//????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 63743, 1 )
		AddPlayerInfo( -1, "item", 64386, 1 )
		$sex = GetPlayerInfo( -1, "sex" )
		if $sex == 0
			AddPlayerInfo( -1, "item", 63745, 1 )
		endif
		
		if $sex == 1
			AddPlayerInfo( -1, "item", 63746, 1 )
		endif
		
	}
