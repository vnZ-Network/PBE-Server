	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/03
	//		Author:??
	//		TaskName:ITEM-gongneng60507.s
	//		TaskID:????.????0
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$pre = GetPlayerInfo( -1, "prestige", 0)
		if $pre <= 0
			BC( "screen", "player", -1, "Your Infamy is 0. You don't need to use that." )
			return
		endif
		
		$revalue = SubPlayerInfo( -1, "item", 60507, 1 )
		if $revalue == 0
			if $pre >= 10
				SubPlayerInfo( -1, "prestige", 0, 10 )
				BC( "screen", "player", -1, "Your Infamy is reduced by 10!")
			else
				SubPlayerInfo( -1, "prestige", 0, $pre )
				BC( "screen", "player", -1, "Your Infamy is reduced by ",$pre,"!" )
			endif

		endif
	}
	
	