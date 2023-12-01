	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/27
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-12875.s
	//
	//****************************************
	

	
	function OnUseItem(){
		
		$task = IsTaskAccept(-1,374)
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
		
		if $x < 106
			if $x > 100
				if $y < 168
					if $y > 160
						//PlayEffect(-1 ,"skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 1)
						AddMonsterByFloat(30600,1,562,104,165,0,-1) 
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
			
		
		
		