	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/09
	//		Author:???
	//		TaskName:ITEM-64406.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 64406 )
		if $item1 < 1
			return
		endif
		
		$time0 = GetSystemTime( "yday" )
		$PlayerVar1 = GetPlayerVar( -1, 3708 )
		$PlayerVar2 = GetPlayerVar( -1, 3230 )
		if $PlayerVar1 == $time0
			if $PlayerVar2 < 3
				$SubItem1 = SubPlayerInfo( -1, "item", 64406, 1 )
				if $SubItem1 != 0
					return
				endif
				AddExpAddons( -1, 3600, 0 )
				$PlayerVar2 = GetPlayerVar( -1, 3230 )
				$PlayerVar2 = $PlayerVar2 + 1
				SetPlayerVar( -1, 3230, $PlayerVar2 )
        BC( "screen", "player", -1, "You have acquired a hour of double EXP duration." )
        return
      else
      	BC( "screen", "player", -1, "That can be used up to 3 times per day." )
        return  
			endif
		else
			$SubItem1 = SubPlayerInfo( -1, "item", 64406, 1 )
			if $SubItem1 != 0
				return
			endif
			SetPlayerVar( -1, 3708, $time0 )
			SetPlayerVar( -1, 3230, 1 )
			AddExpAddons( -1, 3600, 0 )
			BC( "screen", "player", -1, "You have acquired a hour of double EXP duration." )
			return
		endif
		
	}