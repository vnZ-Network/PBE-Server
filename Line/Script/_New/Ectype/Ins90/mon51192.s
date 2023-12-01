	function OnDead(){
		
		$mem1_id =  GetTeamMemberID( -1, 0 )
		$mem2_id =  GetTeamMemberID( -1, 1 )
		$mem3_id =  GetTeamMemberID( -1, 2 )
		$mem4_id =  GetTeamMemberID( -1, 3 )
		$mem5_id =  GetTeamMemberID( -1, 4 )
		$mem6_id =  GetTeamMemberID( -1, 5 )		
		
		
		#name = GetPlayerInfo(-1 , "name")
		
		
		$ectID = GetEctypeID(-1 ,223)
		$Dif = GetEctypeVar(-1 ,0)
		
		if $Dif != 1
			$drop_id = 60314
		else
			$drop_id = 60316
		endif
		
		BC("screen", "map", $ectID, #name ," has opened Razill's Treasure Chest. All party members have received items. The portal to the King's Throne has appeared.")
		
		
		if $mem1_id != -1
			$len = GetPlayerDistance( -1 , $mem1_id )
			if $len <= 30
				DropMonsterItems($mem1_id, $drop_id )		
			endif
		endif
		if $mem2_id != -1
		
			$len = GetPlayerDistance( -1 , $mem2_id )
			if $len <= 30
				DropMonsterItems($mem2_id, $drop_id )
			endif
		
		endif
		
		if $mem3_id != -1
			
			$len = GetPlayerDistance( -1 , $mem3_id )
			if $len <= 30
				DropMonsterItems($mem3_id, $drop_id )
			endif
			
		endif
		if $mem4_id != -1
			
			$len = GetPlayerDistance( -1 , $mem4_id )
			if $len <= 30
				DropMonsterItems($mem4_id, $drop_id )
			endif
			
		endif
		if $mem5_id != -1
			
			$len = GetPlayerDistance( -1 , $mem5_id )
			if $len <= 30
				DropMonsterItems($mem5_id, $drop_id )
			endif
		endif
		if $mem6_id != -1
			
			$len = GetPlayerDistance( -1 , $mem6_id )
			if $len <= 30
				DropMonsterItems($mem6_id, $drop_id )
			endif
		endif
	}

		
	}