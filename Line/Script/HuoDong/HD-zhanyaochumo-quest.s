
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/08
	//		Author:??
	//		TaskName:HD-zhanyaochumo-quest.s
	//		TaskID:????????????
	//
	//****************************************
	
	
	function OnTaskDone(){

		$level = GetPlayerInfo( -1, "level" )
		$quest_ring_number = GetPlayerVar( -1 , 3205 )
		
		//???????:????=(????^2+100)*(1+????)
		$a = $level * $level
		$b = $a + 100
		$c = $quest_ring_number + 1
		$d = $c * $b

		//???????,????.????
		$add_exp = $d * 2
		
		//????????
		$status_value = IsExistStatus(-1 , 10517)
		if $status_value == 0
			//????????
			$b1 = $add_exp / 2
			$add_exp = $add_exp + $b1
			BC( "chat", "player", -1, "You got bonus EXP for transform.", $b1 )
		endif
		//????????
		
		
		//????
		AddPlayerInfo( -1, "exp", $add_exp )
		
		if $quest_ring_number == 10
			//????????
			$status_value = IsExistStatus(-1 , 10517)
			if $status_value == 0
				AddPlayerInfo( -1, "item", 63271, 1)
				BC( "chat", "player", -1, "Since you are transformed, you gained an extra gift: Magician's Chest." )
			endif
			//????????
		endif
		
		//if $quest_ring_number == 10
			//45??????????
		//	if $level < 45
		//		AddPlayerInfo( -1, "item", 64402, 1)
		//	endif
		//	if $level < 60
		//		if $level >= 45
		//			AddPlayerInfo( -1, "item", 64402, 1)
		//		endif
		//	endif	
				
		//	if $level < 75
		//		if $level >= 60
		//			AddPlayerInfo( -1, "item", 64402, 1)
		//		endif
		//	endif
		//	if $level < 90
		//		if $level >= 75
		//			AddPlayerInfo( -1, "item", 64402, 1)
		//		endif		
		//	endif
		//	if $level >= 90
				//????90?????,?????
		//	endif
		//endif
		
		//??????
		SetPlayerVar( -1, 9, 0)
		//????
		$quest_ring_number = $quest_ring_number + 1
		SetPlayerVar( -1 , 3205 , $quest_ring_number )
	}