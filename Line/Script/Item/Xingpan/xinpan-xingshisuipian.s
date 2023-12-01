	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/28
	//		Author:??
	//		TaskName:xingpan-xingshisuipian.s
	//		TaskID:????
	//
	//****************************************

function OnUseItem(){
		//2012?9?????????20?1??,???????2??????
//		$count = GetPlayerInfo( -1, "item", 5701 )
//		if $count < 10
//			BC( "screen", "player", -1, "GUID:07781000000" )
//			return
//		else
			$bag_count1 = GetPlayerInfo( -1, "nullitem", 0 )
			if $bag_count1 < 1
				BC( "screen", "player", -1, "You do not have enough space in your bag." )
				return
			else
				$result = SubPlayerInfo( -1, "item", 5701, 1 )
				if $result != 0
					return
				endif
				AddPlayerInfo ( -1, "item", 5702, 2 )		
			endif				
//		endif
}
