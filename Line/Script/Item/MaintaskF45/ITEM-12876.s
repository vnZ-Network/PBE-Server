	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/27
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-12876.s
	//
	//****************************************
	

	
	function OnUseItem(){
		
		
		$task = IsTaskAccept(-1,381)
		if $task != 0
			BC("screen","player",-1,"You do not have the appropriate quest for this item.")
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		 //??????????
		 if $bag_count < 1
			 BC( "screen", "player", -1, "Not enough space in your bag!" )
			 return
		 endif
		  
//		 //??1?????
//		 $count = GetPlayerInfo( -1, "item", 38112 )
//		 if $count < 1
//			 return
//		 endif
		
		$mapid = GetPlayerInfo(-1,"mapid")
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		if $mapid != 562
			BC("screen","player",-1,"This can't be used in this zone!")
			return
		endif
		
		
		if $x < 252
			if $x > 244
				if $y < 170
					if $y > 160
						$result = SubPlayerInfo(-1,"item",12876,1)
						if $result == 0
							AddPlayerInfo(-1,"item",12867,1)
							PlayEffect(-1 ,"skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 1)
							AddMonsterByFloat(30605,1,562,243,165,0,-1)
							AddMonsterByFloat(30616,1,562,245,172,0,-1)
							AddMonsterByFloat(30616,1,562,240,176,0,-1)
							AddMonsterByFloat(30605,1,562,236,179,0,-1)
							AddMonsterByFloat(30606,4,562,240,160,2,-1)
							AddMonsterByFloat(30606,4,562,243,160,2,-1)
							AddMonsterByFloat(30606,4,562,240,165,2,-1)
							AddMonsterByFloat(30606,4,562,243,169,2,-1)
							AddMonsterByFloat(30606,4,562,243,165,2,-1)														
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

		
	}
			
		
		
		