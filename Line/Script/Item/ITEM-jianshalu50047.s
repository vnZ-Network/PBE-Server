	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/21
	//		Author:??
	//		TaskName:ITEM-jianshalu50047.s
	//		TaskID:???????
	//
	//****************************************
	
	
	function OnUseItem(){
	
	
	
		$mapid = GetPlayerInfo ( -1 , "mapid" )
		//if $mapid != 111
			if $mapid != 475
				BC( "screen", "player", -1, "Dew of Atlantis can only be used in Atlantis!" )
				return
			endif
		//endif
		
		$pre = GetPlayerInfo( -1, "prestige", 47)
		if $pre <= 0
			BC( "screen", "player", -1, "Your Infamy is 0. You don't need to use that." )
			return
		endif
		
		$revalue = SubPlayerInfo( -1, "item", 50047, 1 )
		if $revalue == 0
			if $pre >= 10
				SubPlayerInfo( -1, "prestige", 47, 10 )
				BC( "screen", "player", -1, "Your Infamy is reduced by 10!")
			else
				SubPlayerInfo( -1, "prestige", 47, $pre )
				BC( "screen", "player", -1, "Your Infamy is reduced by ",$pre," EXP!" )
			endif
		endif
	}
	
	