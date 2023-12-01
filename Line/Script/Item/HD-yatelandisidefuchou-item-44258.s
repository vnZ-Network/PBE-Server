	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/08
	//		Author:???
	//		TaskName:HD-yatelandisidefuchou-item-44258.s
	//		TaskID:???
	//
	//****************************************

	function OnUseItem(){

		$mapid = GetPlayerInfo( -1 , "mapid")
		$level = GetPlayerInfo( -1 , "level" )
		$zuobiaox = GetPlayerInfo(-1 , "mapposx")
		$zuobiaoy = GetPlayerInfo(-1 , "mapposy")

		if $mapid != 66
			BC("screen","player",-1,"Vendetta Order can only be used in Devilhunter Gorge.")
			return
		endif

		if $level < 50
			BC("screen", "player", -1, "Sorry, but your level isn't high enough for that! Try again once you've reached LV50!" )
			return
		endif

		$jieshou1 = IsTaskAccept(-1, 1857 )
		if $jieshou1 == 0
			BC("screen", "player", -1, "Sorry, you've already accepted this quest!" )
			return
		endif

		$jieshou2 = IsTaskAccept(-1, 1858 )
		if $jieshou2 == 0
			BC("screen", "player", -1, "Sorry, you've already accepted this quest!" )
			return
		endif

		$jieshou3 = IsTaskAccept(-1, 1859 )
		if $jieshou3 == 0
			BC("screen", "player", -1, "Sorry, you've already accepted this quest!" )
			return
		endif

		if $level >= 50
			if $level < 80
				$del_count = SubPlayerInfo(-1, "item", 44258, 1)
				if $del_count == 0
					AddMonsterByFloat(21027 , 1 , 66 , $zuobiaox , $zuobiaoy , 0 , -1 )
					AcceptTask( -1 , 1857 )
					return
				endif
			endif
		endif

		if $level >= 80
			if $level < 100
				$del_count = SubPlayerInfo(-1, "item", 44258, 1)
				if $del_count == 0
					AddMonsterByFloat(21028 , 1 , 66 , $zuobiaox , $zuobiaoy , 0 , -1 )
					AcceptTask( -1 , 1858 )
					return
				endif
			endif
		endif

		if $level >= 100
			if $level < 200
				$del_count = SubPlayerInfo(-1, "item", 44258, 1)
				if $del_count == 0
					AddMonsterByFloat(21029 , 1 , 66 , $zuobiaox , $zuobiaoy , 0 , -1 )
					AcceptTask( -1 , 1859 )
					return
				endif
			endif
		endif

	}