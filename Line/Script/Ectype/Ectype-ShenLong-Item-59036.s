  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/25
	//		Author: ??
	//		TaskName:Ectype-ShenLong-Item-59036.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		$Money = GetPlayerInfo( -1, "money" )
		if $Money < 100
			BC("screen", "player", -1, "Needs 100 golds to open it.")
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 35
			BC("screen", "player", -1, "Must be at least LV35 to open.")
			return
		endif
		
		$SubMoney = SubPlayerInfo( -1, "money", 100 )
		if $SubMoney != 0
			return
		endif
		
		$Sub = SubPlayerInfo( -1, "item", 59036, 1 )
		if $Sub != 0
			return
		endif
		
		DropMonsterItems( -1, 60318 )
		if $level > 89
		   DropMonsterItems( -1, 60325 )
		endif
		
	}