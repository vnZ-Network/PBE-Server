	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/05/21
	//		Author:???
	//		TaskName:NPC-liwen-1552.s
	//		TaskID:??
	//
	//****************************************
	
	function OnRequest(){
		DisableNpcOption(0)
	}
	
	
	function OnOption0(){
		
		$Item = GetPlayerInfo( -1, "item", 60099 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "You need a LV13 Chalice Coupon to exchange for a LV13 Chalice." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		$profession = GetPlayerInfo( -1, "profession" )
		$level = GetPlayerInfo( -1, "level" )
		if $level < 60
			BC( "dialogbox", "player", -1, "You can't exchange before reaching LV60." )
			return
		endif
		
		$Sub = SubPlayerInfo( -1, "item", 60099, 1 )
		if $Sub != 0
			return
		endif
		
		if $profession <= 3
			if $level >= 60
				if $level < 80
					AddPlayerInfo( -1, "item", 20144, 1 )
				endif
			endif
			if $level >= 80
				if $level < 100
					AddPlayerInfo( -1, "item", 20186, 1 )
				endif
			endif
			if $level >= 100
				if $level < 120
					AddPlayerInfo( -1, "item", 20228, 1 )
				endif
			endif
			if $level >= 120
				AddPlayerInfo( -1, "item", 20463, 1 )
			endif
		else
			if $level >= 60
				if $level < 80
					AddPlayerInfo( -1, "item", 20165, 1 )
				endif
			endif
			if $level >= 80
				if $level < 100
					AddPlayerInfo( -1, "item", 20207, 1 )
				endif
			endif
			if $level >= 100
				if $level < 120
					AddPlayerInfo( -1, "item", 20249, 1 )
				endif
			endif
			if $level >= 120
				AddPlayerInfo( -1, "item", 20484, 1 )
			endif
		endif
		
	}