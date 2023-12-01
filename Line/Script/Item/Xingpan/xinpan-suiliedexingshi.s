	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/09/11
	//		Author:??
	//		TaskName:xinpan-suiliedexingshi.s
	//		TaskID:?????
	//
	//****************************************

function OnUseItem(){
//??????????
		$count = GetPlayerInfo( -1, "item", 5702 )
		if $count < 20
			BC( "screen", "player", -1, "You must have 20 Asteroid Fragments to create a Common Asteroid!" )
			return
		else
			$bag_count1 = GetPlayerInfo( -1, "nullitem", 0 )
			if $bag_count1 < 1
				BC( "screen", "player", -1, "You do not have enough space in your bag." )
				return
			else
				$result = SubPlayerInfo( -1, "item", 5702, 20 )
				if $result != 0
					return
				endif
				AddPlayerInfo ( -1, "item", 5631, 1 )		
			endif				
		endif
}
