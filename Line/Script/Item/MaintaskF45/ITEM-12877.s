	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/27
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-12877.s
	//
	//****************************************
	

	
	function OnUseItem(){
		
		$task = IsTaskAccept(-1,383)
		if $task != 0
			BC("screen","player",-1,"You do not have the appropriate quest for this item.")
			return
		endif
		
		$mapid = GetPlayerInfo(-1,"mapid")
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		if $mapid != 562
			BC("screen","player",-1,"This can't be used in this zone!")
			return
		endif
		
		if $x > 180
			if $x < 190
				if $y > 160
					if $y < 170
						PlayEffect(-1 ,"skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 1)	
						AddMonsterByFloat(30610,1,562,185,165,0,-1)
						AddMonsterByFloat(30607,1,562,184,164,0,-1)
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
			
		
		
		