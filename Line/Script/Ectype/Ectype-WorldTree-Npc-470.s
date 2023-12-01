	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/19
	//		Author:???
	//		TaskName:Ectype-WorldTree-Npc-470.s
	//		TaskID:???
	//
	//****************************************
	//
	function OnRequest(){
		
		$ectype_Var1 = GetEctypeVar( -1, 112 )
		if $ectype_Var1 > 100
			DisableNpcOption(0)
		endif
		
		$ectype_Var2 = GetEctypeVar( -1, 4 )
		if $ectype_Var2 != 0
			DisableNpcOption(0)
		endif
		
	}
	
	function OnOption0(){
		$ectype_ID = GetEctypeID( -1, 250 )
		$ectype_Var = GetEctypeVar( -1, 112 )
		$ectype_Var1 = GetEctypeVar( -1, 0 )
		if $ectype_Var < 100
			if $ectype_Var1 == 0
				BC( "dialogbox", "map", $ectype_ID, "Ah! I need your help! The leaky Reservoir behind me needs to be filled so the World Tree can be watered. Kill the Water Elementals to get Water Essence and add it to the Reservoir. Once it's full, I will open the gate for you so you can open the Valve." )
				SetEctypeVar( -1, 0, 1 )
				StartEctypeTimer( $ectype_ID, 1 )
				return
			else
				$ectype_Var0 = GetEctypeVar( -1, 112 )
				BC( "dialogbox", "map", $ectype_ID, "Current water level in the Reservoir: ",$ectype_Var0,"/100"  )
				return
			endif
		endif
		
		$ectype_Var2 = GetEctypeVar( -1, 4 )
		if $ectype_Var2 == 0
			BC( "dialogbox", "map", $ectype_ID, "Great job! The Reservoir is full. Search for the Water Valve deeper in the garden and open it. Then the World Tree will be watered!" )
			SetEctypeVar( -1, 4, 1 )
			OpenMapMask( 1 )
			StartEctypeTimer( $ectype_ID, 5 )
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
			BC( "dialogbox", "player", -1, "The gate ahead is opened." )
			return
		endif
		
	}	