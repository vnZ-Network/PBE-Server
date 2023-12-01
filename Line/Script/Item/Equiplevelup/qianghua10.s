	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-8-1
	//		Author:??
	//		TaskName:qianghua10.s
	//		TaskID:+10????
	//
	//****************************************
	
	function OnUseItem(){
		//??id
		$item1 = 44381
		//????id
		$item2 = 44382
		//????
		$num = 3
		
		$n = GetPlayerInfo( -1, "item", $item1 )
		if $n < $num
			BC( "screen", "player", -1, "You don't have enough to do that!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		$Sub = SubPlayerInfo( -1, "item", $item1, $num )
		if $Sub == 0
			AddPlayerInfo( -1, "item", $item2, 1 )
			return
		endif
	}