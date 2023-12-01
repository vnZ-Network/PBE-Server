	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/18
	//		Author:???
	//		TaskName:Ectype-elinggubao-Monster-51633.s
	//		TaskID:????
	//
	//****************************************
	
	
	function OnDead(){
	
		$Men1 = GetTeamMemberID( -1, 0 )
		$Men2 = GetTeamMemberID( -1, 1 )
		$Men3 = GetTeamMemberID( -1, 2 )
		$Men4 = GetTeamMemberID( -1, 3 )
		$Men5 = GetTeamMemberID( -1, 4 )
		$Men6 = GetTeamMemberID( -1, 5 )
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$id = GetPlayerID()
		DropMonsterItems( -1 , 90102 )
		#name = GetPlayerInfo( -1 , "name" )
		BC("screen", "servergroup", -1, "The hero ",#name, " killed Darkness Bringer of Shadow Manor successfully, and received unknown treasure (Death's Scythe)" )
		BC("chat", "servergroup", -1, "The hero ",#name, " killed Darkness Bringer of Shadow Manor successfully, and received unknown treasure (Death's Scythe)" )
		
		if $Men1 != -1
			if $Men1 != $id
				$mapid0 = GetPlayerInfo( $Men1 , "mapid" )
				if $mapid0 == $mapid
					DropMonsterItems( $Men1 , 90102 )
					AddPlayerInfo( $Men1 , "prestige" , 9 , 50 )
				endif
			endif
		endif
		if $Men2 != -1
			if $Men2 != $id
				$mapid0 = GetPlayerInfo( $Men2 , "mapid" )
				if $mapid0 == $mapid
					DropMonsterItems( $Men2 , 90102 )
					AddPlayerInfo( $Men2 , "prestige" , 9 , 50 )
				endif
			endif
		endif
		if $Men3 != -1
			if $Men3 != $id
				$mapid0 = GetPlayerInfo( $Men3 , "mapid" )
				if $mapid0 == $mapid
					DropMonsterItems( $Men3 , 90102 )
					AddPlayerInfo( $Men3 , "prestige" , 9 , 50 )
				endif
			endif
		endif
		if $Men4 != -1
			if $Men4 != $id
				$mapid0 = GetPlayerInfo( $Men4 , "mapid" )
				if $mapid0 == $mapid
					DropMonsterItems( $Men4 , 90102 )
					AddPlayerInfo( $Men4 , "prestige" , 9 , 50 )
				endif
			endif
		endif
		if $Men5 != -1
			if $Men5 != $id
				$mapid0 = GetPlayerInfo( $Men5 , "mapid" )
				if $mapid0 == $mapid
					DropMonsterItems( $Men5 , 90102 )
					AddPlayerInfo( $Men5 , "prestige" , 9 , 50 )
				endif
			endif
		endif
		if $Men6 != -1
			if $Men6 != $id
				$mapid0 = GetPlayerInfo( $Men6 , "mapid" )
				if $mapid0 == $mapid
					DropMonsterItems( $Men6 , 90102 )
					AddPlayerInfo( $Men6 , "prestige" , 9 , 50 )
				endif
			endif
		endif
		
	}
		