	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/05
	//		Author:???
	//		TaskName:HD-SNHD-ITEM-64263.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		$count = GetPlayerInfo( -1, "item", 64263 )
		if $count == 0
			BC( "screen", "player", -1, "N/A????????????!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "You do not have 2 empty bag slots." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64263, 1 )
		//??????
		if $result != 0
			return
		endif
		
		$Random0 = RandomNumber ( 1, 100 )
		if $Random0 < 31
			AddPlayerInfo( -1, "item", 63258, 1 )
			call GetItem()
			return
		endif
		if $Random0 > 30
			if $Random0 < 61
				AddPlayerInfo( -1, "item", 63259, 1 )
				call GetItem()
				return
			endif	
		endif
		if $Random0 > 60
			if $Random0 < 91
				AddPlayerInfo( -1, "item", 63260, 1 )
				call GetItem()
				return
			endif	
		endif
		if $Random0 > 90
			if $Random0 < 95
				AddPlayerInfo( -1, "item", 63261, 1 )
				call GetItem()
				return
			endif	
		endif
		if $Random0 > 94
			if $Random0 < 98
				AddPlayerInfo( -1, "item", 63262, 1 )
				call GetItem()
				return
			endif	
		endif
		if $Random0 > 97
			if $Random0 < 101
				AddPlayerInfo( -1, "item", 63263, 1 )
				call GetItem()
				return
			endif	
		endif
	}
	
	function GetItem(){
		$Random = RandomNumber ( 1, 100 )
		if $Random < 21
			AddPlayerInfo( -1, "item", 6102, 1 )
			return
		endif
		if $Random > 20
			if $Random < 41
				AddPlayerInfo( -1, "item", 6112, 1 )
				return
			endif	
		endif
		if $Random > 40
			if $Random < 51
				AddPlayerInfo( -1, "item", 6228, 1 )
				return
			endif	
		endif
		if $Random > 50
			if $Random < 61
				AddPlayerInfo( -1, "item", 6208, 1 )
				return
			endif	
		endif
		if $Random > 60
			if $Random < 63
				AddPlayerInfo( -1, "item", 64244, 1 )
				return
			endif	
		endif
		if $Random > 62
			if $Random < 68
				AddPlayerInfo( -1, "item", 61000, 1 )
				return
			endif	
		endif
		if $Random > 67
			if $Random < 73
				AddPlayerInfo( -1, "item", 61043, 1 )
				return
			endif	
		endif
		if $Random > 72
			if $Random < 93
				AddPlayerInfo( -1, "item", 64411, 1 )
				return
			endif	
		endif
		if $Random > 92
			if $Random < 99
				AddPlayerInfo( -1, "item", 64412, 1 )
				return
			endif	
		endif
		if $Random > 98
			if $Random < 101
				AddPlayerInfo( -1, "item", 64413, 1 )
				return
			endif	
		endif
		
	}