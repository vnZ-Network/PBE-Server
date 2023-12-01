	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/19
	//		Author:???
	//		TaskName:Ectype-WorldTree-Npc-469.s
	//		TaskID:???
	//
	//****************************************
	//
	function OnRequest(){
		
		$ectype_Var = GetEctypeVar( -1, 5 )
		if $ectype_Var != 0
			DisableNpcOption(0)
		endif
		
	}
	
	function OnOption0(){
		$ectype_ID = GetEctypeID( -1, 250 )
		$ectype_Var = GetEctypeVar( -1, 111 )
		if $ectype_Var < 15
			BC( "dialogbox", "map", $ectype_ID, "I am Fred, the guardian of this Garden. As you've probably noticed, I am facing a bit of trouble. These horrible Fire Elementals are trying to break in and destroy the World Tree. If you help me eliminate them, I will let you in." )
			return
		endif
		
		$ectype_Var = GetEctypeVar( -1, 5 )
		if $ectype_Var == 0
			BC( "dialogbox", "map", $ectype_ID, "Well done!  Thank you very much!  I will open the gate now.  Be careful!" )
			SetEctypeVar( -1, 5, 1 )
			OpenMapMask( 5 )
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
					$exp = $exp * 2
					$exp = $exp / 10
					$exp = $exp * 6
					AddPlayerInfo( $teamplayer1_id, "exp", $exp )
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
					$exp = $exp * 2
					$exp = $exp / 10
					$exp = $exp * 6
					AddPlayerInfo( $teamplayer2_id, "exp", $exp )
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
					$exp = $exp * 2
					$exp = $exp / 10
					$exp = $exp * 6
					AddPlayerInfo( $teamplayer3_id, "exp", $exp )
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
					$exp = $exp * 2
					$exp = $exp / 10
					$exp = $exp * 6
					AddPlayerInfo( $teamplayer4_id, "exp", $exp )
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
					$exp = $exp * 2
					$exp = $exp / 10
					$exp = $exp * 6
					AddPlayerInfo( $teamplayer5_id, "exp", $exp )
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
					$exp = $exp * 2
					$exp = $exp / 10
					$exp = $exp * 6
					AddPlayerInfo( $teamplayer6_id, "exp", $exp )
			endif
			//------------------------------------------------------------------------------------------
		else
			BC( "dialogbox", "player", -1, "The gate is open!" )
			return
		endif
				
	}	