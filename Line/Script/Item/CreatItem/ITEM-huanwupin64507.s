	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/12/28
	//		Author:??
	//		TaskName:ITEM-huanwupin64507.s
	//		TaskID:????
	//		????:2012-3-31 ??
	//    ????:??????????,??????????????????,?????????
	//****************************************
	
	function OnUseItem(){
		//????? 64506
		//????? 64264
		$bangding = 64507
		$feibang = 64279
		$hecheng = 2316
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		//??1?????
		$count1 = GetPlayerInfo( -1, "item", $bangding )
		$count2 = GetPlayerInfo( -1, "item", $feibang )	
		if $count1 >= 5
			$revalue = SubPlayerInfo( -1, "item", $bangding, 5 )
			if $revalue == 0 
				//??????
				AddPlayerInfo( -1, "item", $hecheng, 1 )
				return
			endif			
		else
			$n = 5 - $count1
			if $count2 >= $n
				$revalue1 = SubPlayerInfo( -1, "item", $bangding, $count1 )
				$revalue2 = SubPlayerInfo( -1, "item", $feibang, $n )
				if $revalue1 == 0
					if $revalue2 == 0
						//??????
						AddPlayerInfo( -1, "item", $hecheng, 1 )
						return					
					endif
				endif
			endif
			BC( "screen", "player", -1, "Insufficient Universe Emblem Fragment!" )
			return
		endif
				
//		if $count < 5
//			BC( "screen", "player", -1, "GUID:06076000002" )
//			return
//		endif
//		
//		//??????
//		$revalue = SubPlayerInfo( -1, "item", 64506, 5)

//		//??????
//		if $revalue == 0 
//			AddPlayerInfo( -1, "item", 2315, 1 )
//		endif
		
		
	}
