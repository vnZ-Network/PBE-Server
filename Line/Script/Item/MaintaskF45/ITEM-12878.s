	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/27
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-12878.s
	//
	//****************************************
	

	
	function OnUseItem(){
		
		$task = IsTaskAccept(-1,392)
		if $task != 0
		 BC("screen","player",-1,"You do not have the appropriate quest for this item.")
		 return
		endif
		
		$mapid = GetPlayerInfo(-1,"mapid")
		if $mapid != 563
			BC("screen","player",-1,"This can't be used in this zone!")
			return
		endif
		
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		
		if $mapid == 563
			if $x < 126
				if $x > 118
					if $y < 217
						if $y > 209
							$result = SubPlayerInfo(-1,"item",12878,1)
							if $result == 0
								AddPlayerInfo(-1,"item",12868,1)
								PlayEffect(-1 ,"skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 1)
								AddMonsterByFloat(30612,4,$mapid,$x,$y,2,-1)
								AddMonsterByFloat(30621,4,$mapid,$x,$y,2,-1)
								return
							else
								BC("screen","player",-1,"Unable to remove item.")
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
			else
				BC("screen","player",-1,"This can't be used here.")	
			endif
		endif

		
	}
			
		
		
		