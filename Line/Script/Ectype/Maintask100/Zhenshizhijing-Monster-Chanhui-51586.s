	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2010/02/24
	//		Author£ºÍõ¼Ò÷è
	//		TaskName£ºZhenshizhijing-Monster-Chanhui-51586.s
	//		TaskID âã»ÚÖ®Áé
	//
	//****************************************
	
	
	function OnDead(){
	
		$ectype_ID = GetEctypeID( -1, 253 )
		
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		
		$accept2 = IsTaskAccept( -1, 3317 )

		
		if $teamplayer1_id != -1
			$Map = GetPlayerInfo( $teamplayer1_id, "mapid" )
			if $Map == $ectype_ID	
				$accept2 = IsTaskAccept( $teamplayer1_id, 3317 )
				if $accept2 == 0
					DropMonsterItems( $teamplayer1_id, 90104 )
				endif
			endif
		endif

		if $teamplayer2_id != -1
			$Map = GetPlayerInfo( $teamplayer2_id, "mapid" )
			if $Map == $ectype_ID
				$accept2 = IsTaskAccept( $teamplayer2_id, 3317 )
				if $accept2 == 0
					DropMonsterItems( $teamplayer2_id, 90104 )
				endif
			endif
		endif

		if $teamplayer3_id != -1
			$Map = GetPlayerInfo( $teamplayer3_id, "mapid" )
			if $Map == $ectype_ID
				$accept2 = IsTaskAccept( $teamplayer3_id, 3317 )
				if $accept2 == 0
					DropMonsterItems( $teamplayer3_id, 90104 )
				endif
			endif
		endif

		if $teamplayer4_id != -1
			$Map = GetPlayerInfo( $teamplayer4_id, "mapid" )
			if $Map == $ectype_ID
				$accept2 = IsTaskAccept( $teamplayer4_id, 3317 )
				if $accept2 == 0
					DropMonsterItems( $teamplayer4_id, 90104 )
				endif
			endif
		endif

		if $teamplayer5_id != -1
			$Map = GetPlayerInfo( $teamplayer5_id, "mapid" )
			if $Map == $ectype_ID
				$accept2 = IsTaskAccept( $teamplayer5_id, 3317 )
				if $accept2 == 0
					DropMonsterItems( $teamplayer5_id, 90104 )
				endif
			endif
		endif

		if $teamplayer6_id != -1
			$Map = GetPlayerInfo( $teamplayer6_id, "mapid" )
			if $Map == $ectype_ID
				$accept2 = IsTaskAccept( $teamplayer6_id, 3317 )
				if $accept2 == 0
					DropMonsterItems( $teamplayer6_id, 90104 )
				endif
			endif
		endif


	}