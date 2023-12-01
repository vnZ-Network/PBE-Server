	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/9	
	//		Author:??
	//		TaskName:ITEM-jianshalu50048.s
	//		TaskID:???????
	//
	//****************************************
	
	
	function OnUseItem(){
	
	
	
//		$mapid = GetPlayerInfo ( -1 , "mapid" )
		//if $mapid != 111
//			if $mapid != 83
//				BC( "screen", "player", -1, "GUID:06645000000" )
//				return
//			endif
		//endif
		
		$pre = GetPlayerInfo( -1, "prestige", 47)
//		BC( "screen", "player", -1, "GUID:06645000001",$pre,"GUID:06645000002" )
		if $pre <= 200
			BC( "screen", "player", -1, "Your Infamy is below 200. You don't need to use the Spirit's Repentance!" )
			return
		endif
		$revalue = SubPlayerInfo( -1, "item", 50048, 1 )
		if $revalue == 0
			if $pre >= 210
				SubPlayerInfo( -1, "prestige", 47, 10 )
				$pre = GetPlayerInfo( -1, "prestige", 47)
				BC( "screen", "player", -1, "Your Infamy is reduced by 10! Your current Infamy is",$pre,"!")
			else
				$num = $pre - 200
				SubPlayerInfo( -1, "prestige", 47, $num )
				$pre = GetPlayerInfo( -1, "prestige", 47)
				BC( "screen", "player", -1, "Your Infamy is reduced by",$num,". Your current Infamy is",$pre,"!" )
			endif
		endif
	}
	
	