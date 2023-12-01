	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/22
	//		Author:	???
	//		TaskName:ITEM-Star-59296.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 59296, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		$Rad = RandomNumber( 1, 4 )
		if $Rad == 1
			AddPlayerInfo( -1, "item", 59297, 1 )
		endif
		
		if $Rad == 2
			AddPlayerInfo( -1, "item", 59298, 1 )
		endif
		
		if $Rad == 3
			AddPlayerInfo( -1, "item", 59299, 1 )
		endif
		
		if $Rad == 4
			AddPlayerInfo( -1, "item", 59300, 1 )
		endif
		
	}
