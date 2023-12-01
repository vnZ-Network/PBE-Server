
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/9/13
	//		Author:??
	//		TaskName:item-59401.s
	//		TaskID:?????   
	//****************************************
	
	function OnUseItem(){
		
		#item_name = "Death's Deed"
		$task_id = 4394
		$item_id = 59401
		$monster_id = 30065
		$lv_num = 70
		$yday_var = 4085
		$times_var = 3522	

		
		$Accept = IsTaskAccept( -1 , $task_id )
		if $Accept == 0
			return
		endif
		
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$lv = GetPlayerInfo( -1 , "level" )
		$mapx = GetPlayerInfo( -1 , "mapx" )
		$mapy = GetPlayerInfo( -1 , "mapy" )
		
		if $lv < $lv_num
			BC( "screen" , "player" , -1 , $lv_num , " LV is required." )
			BC( "chat" , "player" , -1 , $lv_num , " LV is required." )
			return
		endif
		if $mapid != 66
			BC( "screen" , "player" , -1 , "This can only be used in Devilhunter Gorge." )
			BC( "chat" , "player" , -1 , "This can only be used in Devilhunter Gorge." )
			return
		endif
		
		$Time = GetSystemTime( "yday" )
		$Task_Time = GetPlayerVar( -1 , $yday_var )
		
		if $Time == $Task_Time
			$n = GetPlayerVar( -1 , $times_var )
			$n = $n + 1
			if $n < 6
				$info = SubPlayerInfo( -1, "item", $item_id , 1  )
				if $info != 0
					return
				endif
				AcceptTask( -1 , $task_id )
				AddMonster( $monster_id , 1 , 66 ,$mapx , $mapy , 2 , -1 )
				SetPlayerVar( -1 , $times_var , $n )
			else
				BC( "screen" , "player" , -1 , #item_name , "Can be used 5 times a day." )
				BC( "chat" , "player" , -1 , #item_name, "Can be used 5 times a day." )
			endif
		else
			$info = SubPlayerInfo( -1, "item", $item_id , 1  )
			if $info != 0
				return
			endif
			AcceptTask( -1 , $task_id )
			AddMonster( $monster_id , 1 , 66 ,$mapx , $mapy , 2 , -1 )
			SetPlayerVar( -1 , $times_var , 1 )
			SetPlayerVar( -1 , $yday_var , $Time )
		endif
		
	}