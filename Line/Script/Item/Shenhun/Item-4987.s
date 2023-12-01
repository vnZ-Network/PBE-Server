	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-7-4
	//		Author:??
	//		TaskName:Item-4987.s
	//		TaskID:??-???-??
	//
	//****************************************
	
	function OnUseItem(){
		//?????ID
		$shanchuID = 4987
		//?????ID
		$huodeID1 = 43280
		$huodeID2 = 43281
		$huodeID3 = 43282
		$huodeID4 = 43283
		//???????
		$huodeNum = 1
		
		$Item = GetPlayerInfo( -1, "item", $shanchuID )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		//
		$Sub = SubPlayerInfo( -1, "item", $shanchuID, 1 )
		if $Sub != 0
			return
		endif
		
		$n = RandomNumber( 1, 4 )
		if $n == 1
			$huodeID = $huodeID1
		endif
		if $n == 2
			$huodeID = $huodeID2
		endif
		if $n == 3
			$huodeID = $huodeID3
		endif
		if $n == 4
			$huodeID = $huodeID4
		endif		
		
		AddPlayerInfo( -1, "item", $huodeID, $huodeNum )
		
	}