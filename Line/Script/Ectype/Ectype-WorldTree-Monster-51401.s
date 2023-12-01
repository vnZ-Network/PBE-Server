  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/20
	//		Author:???
	//		TaskName:Ectype-WorldTree-Monster-51401.s
	//		TaskID:????
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1, 250 )
		SetEctypeVar( -1, 3, 1 )
		BC( "screen", "map", $ectype_ID, "Yggdrasil, the Tree of the World, thanks all of you brave warriors for your efforts in protecting it. You can leave now." )
		AddNPC( 485, $ectype_ID )
		DeleteMonster( $ectype_ID, 51400 )
		AddNPC( 476, $ectype_ID )
		
			$teamplayer1_id =  GetTeamMemberID( -1, 0 )
			$teamplayer2_id =  GetTeamMemberID( -1, 1 )
			$teamplayer3_id =  GetTeamMemberID( -1, 2 )
			$teamplayer4_id =  GetTeamMemberID( -1, 3 )
			$teamplayer5_id =  GetTeamMemberID( -1, 4 )
			$teamplayer6_id =  GetTeamMemberID( -1, 5 )
			//-------------------------------------------------------------------------------------1?
			if $teamplayer1_id != -1
				$level = GetPlayerInfo( $teamplayer1_id, "level" )
					$exp = $level * $level
					$exp = $exp * 10
					$exp1 = $level * 4
					$exp1 = $exp1 - 76
					$exp = $exp * $exp1
					$exp = $exp / 100
					$exp = $exp * 3
					$exp = $exp / 10
					$exp = $exp * 6
					AddPlayerInfo( $teamplayer1_id, "exp", $exp )
					
//					if $level <= 90
//						DropMonsterItems( $teamplayer1_id, 90171 )
//					endif
//					if $level > 90
//						if $level <= 110
//							 DropMonsterItems( $teamplayer1_id, 90172 )
//						endif
//					endif
//					if $level > 111
//						 DropMonsterItems( $teamplayer1_id, 90173 )
//					endif
					
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------2?
			if $teamplayer2_id != -1
				$level = GetPlayerInfo( $teamplayer2_id, "level" )
					$exp = $level * $level
					$exp = $exp * 10
					$exp1 = $level * 4
					$exp1 = $exp1 - 76
					$exp = $exp * $exp1
					$exp = $exp / 100
					$exp = $exp * 3
					$exp = $exp / 10
					$exp = $exp * 6
					AddPlayerInfo( $teamplayer2_id, "exp", $exp )
					
//					if $level <= 90
//						DropMonsterItems( $teamplayer2_id, 90171 )
//					endif
//					if $level > 90
//						if $level <= 110
//							 DropMonsterItems( $teamplayer2_id, 90172 )
//						endif
//					endif
//					if $level > 111
//						 DropMonsterItems( $teamplayer2_id, 90173 )
//					endif
					
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------3?
			if $teamplayer3_id != -1
				$level = GetPlayerInfo( $teamplayer3_id, "level" )
					$exp = $level * $level
					$exp = $exp * 10
					$exp1 = $level * 4
					$exp1 = $exp1 - 76
					$exp = $exp * $exp1
					$exp = $exp / 100
					$exp = $exp * 3
					$exp = $exp / 10
					$exp = $exp * 6
					AddPlayerInfo( $teamplayer3_id, "exp", $exp )
					
//					if $level <= 90
//						DropMonsterItems( $teamplayer3_id, 90171 )
//					endif
//					if $level > 90
//						if $level <= 110
//							 DropMonsterItems( $teamplayer3_id, 90172 )
//						endif
//					endif
//					if $level > 111
//						 DropMonsterItems( $teamplayer3_id, 90173 )
//					endif
					
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------4?
			if $teamplayer4_id != -1
				$level = GetPlayerInfo( $teamplayer4_id, "level" )
					$exp = $level * $level
					$exp = $exp * 10
					$exp1 = $level * 4
					$exp1 = $exp1 - 76
					$exp = $exp * $exp1
					$exp = $exp / 100
					$exp = $exp * 3
					$exp = $exp / 10
					$exp = $exp * 6
					AddPlayerInfo( $teamplayer4_id, "exp", $exp )
					
//					if $level <= 90
//						DropMonsterItems( $teamplayer4_id, 90171 )
//					endif
//					if $level > 90
//						if $level <= 110
//							 DropMonsterItems( $teamplayer4_id, 90172 )
//						endif
//					endif
//					if $level > 111
//						 DropMonsterItems( $teamplayer4_id, 90173 )
//					endif
					
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------5?
			if $teamplayer5_id != -1
				$level = GetPlayerInfo( $teamplayer5_id, "level" )
					$exp = $level * $level
					$exp = $exp * 10
					$exp1 = $level * 4
					$exp1 = $exp1 - 76
					$exp = $exp * $exp1
					$exp = $exp / 100
					$exp = $exp * 3
					$exp = $exp / 10
					$exp = $exp * 6
					AddPlayerInfo( $teamplayer5_id, "exp", $exp )
					
//					if $level <= 90
//						DropMonsterItems( $teamplayer5_id, 90171 )
//					endif
//					if $level > 90
//						if $level <= 110
//							 DropMonsterItems( $teamplayer5_id, 90172 )
//						endif
//					endif
//					if $level > 111
//						 DropMonsterItems( $teamplayer5_id, 90173 )
//					endif
					
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------6?
			if $teamplayer6_id != -1
				$level = GetPlayerInfo( $teamplayer6_id, "level" )
					$exp = $level * $level
					$exp = $exp * 10
					$exp1 = $level * 4
					$exp1 = $exp1 - 76
					$exp = $exp * $exp1
					$exp = $exp / 100
					$exp = $exp * 3
					$exp = $exp / 10
					$exp = $exp * 6
					AddPlayerInfo( $teamplayer6_id, "exp", $exp )
					
//					if $level <= 90
//						DropMonsterItems( $teamplayer6_id, 90171 )
//					endif
//					if $level > 90
//						if $level <= 110
//							 DropMonsterItems( $teamplayer6_id, 90172 )
//						endif
//					endif
//					if $level > 111
//						 DropMonsterItems( $teamplayer6_id, 90173 )
//					endif
					
			endif
			//------------------------------------------------------------------------------------------
			
		$ectype_ID = GetEctypeID( -1 ,250 )
		$ectype_type = GetEctypeVar( -1, 119 )
		//?????ID
		$team_head_id =	GetTeamHeaderID (-1)
		//???????
		#player_name = GetPlayerInfo( $team_head_id, "name" )
		
		$min = $ectype_type / 60
		$sec = $ectype_type % 60
		
		//C???
		if $min <= 50
			if $min >= 40
				PlayEffect( 0, "common\pingdingdengji_c\fire\tx_pingdingdengji_c.ini" )
				BC( "screen", "map", $ectype_ID, "The hero ",#player_name,"s team has protected the Tree of World successfully, total time ",$min," min. ",$sec,"second(s), which is C class!" )
			endif	
		endif
		
		//B???
		if $min < 40
			if $min >= 30
				PlayEffect( 0, "common\pingdingdengji_b\fire\tx_pingdingdengji_b.ini" )
				BC( "screen", "map", $ectype_ID, "The hero ",#player_name,"s team has protected the Tree of World successfully, total time ",$min," min. ",$sec,"second(s), which is B class!" )
			endif	
		endif
		
		//A???
		if $min < 30
			if $min >= 20
				PlayEffect( 0, "common\pingdingdengji_a\fire\tx_pingdingdengji_a.ini" )
				BC( "screen", "map", $ectype_ID, "The hero ",#player_name,"s team has protected the Tree of World successfully, total time ",$min," min. ",$sec,"second(s), which is A class!" )
			endif	
		endif
		
		//S???
		if $min < 20
			if $min >= 10
				PlayEffect( 0, "common\pingdingdengji_s\fire\tx_pingdingdengji_s.ini" )
				BC( "screen", "map", $ectype_ID, "The hero ",#player_name,"s team has protected the Tree of World successfully, total time ",$min," min. ",$sec,"second(s), which is S class!" )
			endif	
		endif
		
	}