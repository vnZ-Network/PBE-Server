	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/27
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-12879.s
	//
	//****************************************
	

	
	function OnUseItem(){
		
		$task = IsTaskAccept(-1,400)
		if $task != 0
			BC("screen","player",-1,"You do not have the appropriate quest for this item.")
			return
		endif
		
		$mapid = GetPlayerInfo(-1,"mapid")
		if $mapid != 564
			BC("screen","player",-1,"This can't be used in this zone!")
			return
		endif
		
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		if $x > 164
			if $x < 172
				if $y > 137
					if $y < 145
						DeleteMonster($mapid,30615)
						SetServerVar(341,0)
						SetServerVar(298,0)
						AddMonsterByFloat(30614,1,564,168,141,0,-1)
					else
						BC("screen","player",-1,"This can't be used here.")
					endif
				else
					BC("screen","player",-1,"This can't be used here.")
				endif
			else
				BC("screen","player",-1,"This can't be used here.")
			endif
		else
			BC("screen","player",-1,"This can't be used here.")
		endif
								

		
	}
			
		
		
		  