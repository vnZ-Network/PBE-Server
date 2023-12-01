   	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2009/07/20
	//		Author£∫¡ıœ˛Ë¥
	//		TaskName£∫Ectype-ShenLong-Monster-51262.s
	//		TaskID£∫‘∂π≈ª§Œ¿’ﬂ
	//****************************************
	
	function OnDead(){
		$ectype_ID = GetEctypeID( -1, 187 )
		
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
			
		if $teamplayer1_id != -1
			$Map = GetPlayerInfo( $teamplayer1_id, "mapid" )
			if $Map != $ectype_ID
				return
			endif
			DropMonsterItems( $teamplayer1_id, 60317 )
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2∫≈
		if $teamplayer2_id != -1
			$Map = GetPlayerInfo( $teamplayer2_id, "mapid" )
			if $Map != $ectype_ID
				return
			endif
			DropMonsterItems( $teamplayer2_id, 60317 )
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------3∫≈
		if $teamplayer3_id != -1
			$Map = GetPlayerInfo( $teamplayer3_id, "mapid" )
			if $Map != $ectype_ID
				return
			endif
			DropMonsterItems( $teamplayer3_id, 60317 )
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------4∫≈
		if $teamplayer4_id != -1
			$Map = GetPlayerInfo( $teamplayer4_id, "mapid" )
			if $Map != $ectype_ID
				return
			endif
			DropMonsterItems( $teamplayer4_id, 60317 )
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------5∫≈
		if $teamplayer5_id != -1
			$Map = GetPlayerInfo( $teamplayer5_id, "mapid" )
			if $Map != $ectype_ID
				return
			endif
			DropMonsterItems( $teamplayer5_id, 60317 )
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------6∫≈
		if $teamplayer6_id != -1
			$Map = GetPlayerInfo( $teamplayer6_id, "mapid" )
			if $Map != $ectype_ID
				return
			endif
			DropMonsterItems( $teamplayer6_id, 60317 )
		endif
		
	}