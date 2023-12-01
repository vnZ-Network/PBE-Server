	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/15
	//		Author:??
	//		TaskName:HD-lvsepaohuan-quest.s
	//		TaskID:????????????
	//
	//****************************************
	
	
	function OnTaskDone(){

		$level = GetPlayerInfo( -1, "level" )
		$quest_ring_number = GetPlayerVar( -1 , 3210 )
		//???????:????=(????^2+100)*(1+????*5)/ 10
		//?????????,???????
		$a = $level * $level
		$b = $a + 100
		$c = $quest_ring_number * 5
		$d = $c + 1
		$e = $d * $b

		//???????
		$add_exp = $e / 10
		//????
		
		
		
		
		//????????
		$status_value = IsExistStatus(-1 , 10516)
		if $status_value == 0
			//????????
			$b1 = $add_exp / 2
			$add_exp = $add_exp + $b1
			BC( "chat", "player", -1, "Get bonus EXP for Transform: ", $b1 )
		endif
		//??????????
		
		
		
		
		
		
		AddPlayerInfo( -1, "exp", $add_exp )
		
		if $quest_ring_number == 5
		
			//????????
			$status_value = IsExistStatus(-1 , 10516)
			if $status_value == 0
				AddPlayerInfo( -1, "item", 63271, 1)
				BC( "chat", "player", -1, "Since you are transformed, you gained an extra gift: Magician's Chest." )
			endif
			//??????????
			
			if $level < 45
				if $level >= 30
					AddPlayerInfo( -1, "item", 12242, 1)
				endif
			endif
			if $level < 60
				if $level >= 45
					AddPlayerInfo( -1, "item", 12242, 2)
				endif
			endif
			if $level < 75
				if $level >= 60
					AddPlayerInfo( -1, "item", 12242, 4)
				endif
			endif
			if $level < 90
				if $level >= 75
					AddPlayerInfo( -1, "item", 12242, 8)
				endif
			endif
			if $level < 105
				if $level >= 90
					AddPlayerInfo( -1, "item", 12242, 16)
				endif
			endif         			
		endif
				
		//??????
		SetPlayerVar( -1, 10, 0)
		//????
		$quest_ring_number = $quest_ring_number + 1
		SetPlayerVar( -1 , 3210 , $quest_ring_number )
	}