  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/04/19
	//		Author:???
	//		TaskName:Ectype-WorldTree-Monster-51393.s
	//		TaskID:??????    
	//****************************************
	
	function OnDead(){
		
//		$Ectype_Id = GetEctypeID( -1, 250 )	
//		BC( "screen", "map", $ectype_ID, "GUID:04237000000" )
//		OpenMapMask( 2 )
//		StartEctypeTimer( $ectype_ID, 6 )
			$teamplayer1_id =  GetTeamMemberID( -1, 0 )
			$teamplayer2_id =  GetTeamMemberID( -1, 1 )
			$teamplayer3_id =  GetTeamMemberID( -1, 2 )
			$teamplayer4_id =  GetTeamMemberID( -1, 3 )
			$teamplayer5_id =  GetTeamMemberID( -1, 4 )
			$teamplayer6_id =  GetTeamMemberID( -1, 5 )
			//-------------------------------------------------------------------------------------1?
			if $teamplayer1_id != -1
				$level = GetPlayerInfo( $teamplayer1_id, "level" )
					
					if $level <= 90
						DropMonsterItems( $teamplayer1_id, 90171 )
					endif
					if $level > 90
						if $level <= 110
							 DropMonsterItems( $teamplayer1_id, 90172 )
						endif
					endif
					if $level > 111
						 DropMonsterItems( $teamplayer1_id, 90173 )
					endif
									
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------2?
			if $teamplayer2_id != -1
				$level = GetPlayerInfo( $teamplayer2_id, "level" )
					
					if $level <= 90
						DropMonsterItems( $teamplayer2_id, 90171 )
					endif
					if $level > 90
						if $level <= 110
							 DropMonsterItems( $teamplayer2_id, 90172 )
						endif
					endif
					if $level > 111
						 DropMonsterItems( $teamplayer2_id, 90173 )
					endif
					
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------3?
			if $teamplayer3_id != -1
				$level = GetPlayerInfo( $teamplayer3_id, "level" )
					
					if $level <= 90
						DropMonsterItems( $teamplayer3_id, 90171 )
					endif
					if $level > 90
						if $level <= 110
							 DropMonsterItems( $teamplayer3_id, 90172 )
						endif
					endif
					if $level > 111
						 DropMonsterItems( $teamplayer3_id, 90173 )
					endif
					
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------4?
			if $teamplayer4_id != -1
				$level = GetPlayerInfo( $teamplayer4_id, "level" )
					
					if $level <= 90
						DropMonsterItems( $teamplayer4_id, 90171 )
					endif
					if $level > 90
						if $level <= 110
							 DropMonsterItems( $teamplayer4_id, 90172 )
						endif
					endif
					if $level > 111
						 DropMonsterItems( $teamplayer4_id, 90173 )
					endif
					
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------5?
			if $teamplayer5_id != -1
				$level = GetPlayerInfo( $teamplayer5_id, "level" )
					
					if $level <= 90
						DropMonsterItems( $teamplayer5_id, 90171 )
					endif
					if $level > 90
						if $level <= 110
							 DropMonsterItems( $teamplayer5_id, 90172 )
						endif
					endif
					if $level > 111
						 DropMonsterItems( $teamplayer5_id, 90173 )
					endif
					
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------6?
			if $teamplayer6_id != -1
				$level = GetPlayerInfo( $teamplayer6_id, "level" )
					
					if $level <= 90
						DropMonsterItems( $teamplayer6_id, 90171 )
					endif
					if $level > 90
						if $level <= 110
							 DropMonsterItems( $teamplayer6_id, 90172 )
						endif
					endif
					if $level > 111
						 DropMonsterItems( $teamplayer6_id, 90173 )
					endif
					
			endif
			//------------------------------------------------------------------------------------------
		
//		$Time = GetSystemTime( "week" )
//		if $Time == 6
//			OpenMapMask( 6 )
//			StartEctypeTimer( $ectype_ID, 7 )
//			SetEctypeVar( -1, 7, 1 )
//			BC( "screen", "map", $ectype_ID, "GUID:04237000001" )
//		endif
	}