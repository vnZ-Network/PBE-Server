	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/31
	//		Author:???
	//		TaskName:NPC-900.s
	//		TaskID:??NPC??
	//
	//****************************************
	function OnRequest(){
	
	}

	function OnOption0(){
		$wanjia = GetPlayerVar( -1, 3533 )
		$fuwuqi = GetGlobalVar(142)

		if $wanjia > 7
			BC( "screen", "player", -1, "You already found the treasure! Let's not get greedy, now...")
			return
		endif	

		if $fuwuqi == 0				
			AddPlayerInfo( -1 , "item" , 54099 , 1)
			
			$lv = GetPlayerInfo( -1 , "level" )
			$lv1 = $lv * 4
			$lv1 = $lv1 / 100
			$lv2 = 76 / 100
			$lv3 = $lv1 - $lv2
			$lv4 = $lv * 2
			$lv4 = $lv4 * $lv3
			$lv4 = $lv4 * 50
			AddPlayerInfo( -1 , "exp" , $lv4)

			$tianyu =  GetFieldLevel(-1)
			if $tianyu > 0
				$ty1 = $tianyu * 2
				$ty2 = $tianyu * 60
				$ty2 = $ty2 / 100
				$ty3 = $ty1 + $ty2
				$ty3 = $ty3 + 1000
				$ty3 = $ty3 * 20
				AddFieldExp(-1 , $ty3)
			endif

			$wanjia = 8
			SetPlayerVar( -1 , 3533 , $wanjia )
			$fuwuqi = $fuwuqi + 1
			SetGlobalVar( 142, $fuwuqi )		

  		//??????-START
			$join_number = GetGlobalVar(891)
			$join_number = $join_number + 1
			SetGlobalVar(891 , $join_number)
			//??????-MID
			$playerid = GetPlayerID()
			$GetPlayerVar246 = GetPlayerVar($playerid,246)
			if $GetPlayerVar246 == 0
				SetPlayerVar($playerid,246,1)
				SetPlayerActLog($playerid,5,0)
			endif
			//??????-END
			return
		endif

		if $fuwuqi > 0
			if $fuwuqi <= 19		
				AddPlayerInfo( -1 , "item" , 54098 , 1)
				AddPlayerInfo( -1 , "item" , 54108 , 1)
			
				$lv = GetPlayerInfo( -1 , "level" )
				$lv1 = $lv * 4
				$lv1 = $lv1 / 100
				$lv2 = 76 / 100
				$lv3 = $lv1 - $lv2
				$lv4 = $lv * 2
				$lv4 = $lv4 * $lv3
				$lv4 = $lv4 * 50
				AddPlayerInfo( -1 , "exp" , $lv4)

				$tianyu =  GetFieldLevel(-1)
				if $tianyu > 0
					$ty1 = $tianyu * 2
					$ty2 = $tianyu * 60
					$ty2 = $ty2 / 100
					$ty3 = $ty1 + $ty2
					$ty3 = $ty3 + 1000
					$ty3 = $ty3 * 20
					AddFieldExp(-1 , $ty3)
				endif

				$wanjia = 8
				SetPlayerVar( -1 , 3533 , $wanjia )
				$fuwuqi = $fuwuqi + 1
				SetGlobalVar( 142, $fuwuqi )	

	  		//??????-START
				$join_number = GetGlobalVar(891)
				$join_number = $join_number + 1
				SetGlobalVar(891 , $join_number)
			//??????-MID
			$playerid = GetPlayerID()
			$GetPlayerVar246 = GetPlayerVar($playerid,246)
			if $GetPlayerVar246 == 0
				SetPlayerVar($playerid,246,1)
				SetPlayerActLog($playerid,5,0)
			endif
				//??????-END
				return
			endif
		endif

		if $fuwuqi > 19
			if $fuwuqi <= 99
				AddPlayerInfo( -1 , "item" , 54098 , 1)
				
				$lv = GetPlayerInfo( -1 , "level" )
				$lv1 = $lv * 4
				$lv1 = $lv1 / 100
				$lv2 = 76 / 100
				$lv3 = $lv1 - $lv2
				$lv4 = $lv * 2
				$lv4 = $lv4 * $lv3
				$lv4 = $lv4 * 50
				AddPlayerInfo( -1 , "exp" , $lv4)
	
				$tianyu =  GetFieldLevel(-1)
				if $tianyu > 0
					$ty1 = $tianyu * 2
					$ty2 = $tianyu * 60
					$ty2 = $ty2 / 100
					$ty3 = $ty1 + $ty2
					$ty3 = $ty3 + 1000
					$ty3 = $ty3 * 20
					AddFieldExp(-1 , $ty3)
				endif
	
				$wanjia = 8
				SetPlayerVar( -1 , 3533 , $wanjia )
				$fuwuqi = $fuwuqi + 1
				SetGlobalVar( 142, $fuwuqi )		

	  		//??????-START
				$join_number = GetGlobalVar(891)
				$join_number = $join_number + 1
				SetGlobalVar(891 , $join_number)
			//??????-MID
			$playerid = GetPlayerID()
			$GetPlayerVar246 = GetPlayerVar($playerid,246)
			if $GetPlayerVar246 == 0
				SetPlayerVar($playerid,246,1)
				SetPlayerActLog($playerid,5,0)
			endif
				//??????-END
				return
			endif
		endif
		
		if $fuwuqi > 99
			BC( "screen", "player", -1, "Sorry, it looks like you're too late! There's nothing here." )

			$wanjia = 8
			SetPlayerVar( -1 , 3533 , $wanjia )
		endif
	}