  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/10
	//		Author:???
	//		TaskName:Ectype-Titan-Monster-52222_52252_52272.s
	//		TaskID:????
	//****************************************
	
	function OnDead(){
		$ectype_mark = GetEctypeVar( -1, 3 )
		if $ectype_mark == 0
			$ectype_ID = GetEctypeID( -1, 303 )
			
			$ectype_type = GetEctypeVar( -1, 1 )
			$ectype_type = $ectype_type + 1
			SetEctypeVar( -1, 1, $ectype_type )
			
			$ectype_type = GetEctypeVar( -1, 1 )
			$ectype_type = 4 - $ectype_type
			if $ectype_type > 0
				BC( "screen", "map", $ectype_ID, "You must kill ",$ectype_type," more Cyclops' to continue." )
			endif
				
			$ectype_type = GetEctypeVar( -1, 1 )
			if $ectype_type >= 4
				OpenMapMask( 1 )
				StartEctypeTimer( $ectype_ID, 1 )
				BC( "screen", "map", $ectype_ID, "The door ahead has been opened. " )
				return
			endif
		endif
		
		//??
		if $ectype_mark == 1
			$ectype_Var = GetEctypeVar( -1, 4 )
			$ectype_Var = $ectype_Var + 1
			SetEctypeVar( -1, 4, $ectype_Var )
			
			$ectype_Var = GetEctypeVar( -1, 4 )
			if $ectype_Var == 1
				$ectype_ID = GetEctypeID( -1, 332 )
				$Var = GetEctypeVar( -1, 0 )
		
				if $Var == 0
					//????
					AddMonsterByFloat( 52222, 1, $ectype_ID, 199, 64, 0 )
				endif
		
				if $Var == 1
					//????
					AddMonsterByFloat( 52252, 1, $ectype_ID, 199, 64, 0 )
				endif
		
				if $Var == 2
					//????
					AddMonsterByFloat( 52272, 1, $ectype_ID, 199, 64, 0 )
				endif
			endif
			
			if $ectype_Var == 2
				$ectype_ID = GetEctypeID( -1, 332 )
				$Var = GetEctypeVar( -1, 0 )
		
				if $Var == 0
					//????
					AddMonsterByFloat( 52222, 1, $ectype_ID, 244, 91 , 0 )
					AddMonsterByFloat( 52223, 1, $ectype_ID, 250, 86 , 2 )
					AddMonsterByFloat( 52221, 1, $ectype_ID, 250, 97 , 2 )
					AddMonsterByFloat( 52223, 1, $ectype_ID, 239, 96 , 2 )
					AddMonsterByFloat( 52221, 1, $ectype_ID, 240, 86 , 2 )
					AddMonsterByFloat( 52223, 1, $ectype_ID, 207, 66 , 2 )
					AddMonsterByFloat( 52221, 1, $ectype_ID, 202, 71 , 2 )
					AddMonsterByFloat( 52223, 1, $ectype_ID, 212, 76 , 2 )
					AddMonsterByFloat( 52221, 1, $ectype_ID, 202, 79 , 2 )
					AddMonsterByFloat( 52223, 1, $ectype_ID, 204, 89 , 2 )
					AddMonsterByFloat( 52221, 1, $ectype_ID, 217, 82 , 2 )
					AddMonsterByFloat( 52223, 1, $ectype_ID, 215, 92 , 2 )
					AddMonsterByFloat( 52221, 1, $ectype_ID, 225, 84 , 2 )
					AddMonsterByFloat( 52223, 1, $ectype_ID, 225, 94 , 2 )
				endif
		
				if $Var == 1
					//????
					AddMonsterByFloat( 52252, 1, $ectype_ID, 244, 91 , 0 )
					AddMonsterByFloat( 52253, 1, $ectype_ID, 250, 86 , 2 )
					AddMonsterByFloat( 52251, 1, $ectype_ID, 250, 97 , 2 )
					AddMonsterByFloat( 52253, 1, $ectype_ID, 239, 96 , 2 )
					AddMonsterByFloat( 52251, 1, $ectype_ID, 240, 86 , 2 )
					AddMonsterByFloat( 52253, 1, $ectype_ID, 207, 66 , 2 )
					AddMonsterByFloat( 52251, 1, $ectype_ID, 202, 71 , 2 )
					AddMonsterByFloat( 52253, 1, $ectype_ID, 212, 76 , 2 )
					AddMonsterByFloat( 52251, 1, $ectype_ID, 202, 79 , 2 )
					AddMonsterByFloat( 52253, 1, $ectype_ID, 204, 89 , 2 )
					AddMonsterByFloat( 52251, 1, $ectype_ID, 217, 82 , 2 )
					AddMonsterByFloat( 52253, 1, $ectype_ID, 215, 92 , 2 )
					AddMonsterByFloat( 52251, 1, $ectype_ID, 225, 84 , 2 )
					AddMonsterByFloat( 52253, 1, $ectype_ID, 225, 94 , 2 )
				endif
		
				if $Var == 2
					//????
					AddMonsterByFloat( 52272, 1, $ectype_ID, 244, 91 , 0 )
					AddMonsterByFloat( 52273, 1, $ectype_ID, 250, 86 , 2 )
					AddMonsterByFloat( 52271, 1, $ectype_ID, 250, 97 , 2 )
					AddMonsterByFloat( 52273, 1, $ectype_ID, 239, 96 , 2 )
					AddMonsterByFloat( 52271, 1, $ectype_ID, 240, 86 , 2 )
					AddMonsterByFloat( 52273, 1, $ectype_ID, 207, 66 , 2 )
					AddMonsterByFloat( 52271, 1, $ectype_ID, 202, 71 , 2 )
					AddMonsterByFloat( 52273, 1, $ectype_ID, 212, 76 , 2 )
					AddMonsterByFloat( 52271, 1, $ectype_ID, 202, 79 , 2 )
					AddMonsterByFloat( 52273, 1, $ectype_ID, 204, 89 , 2 )
					AddMonsterByFloat( 52271, 1, $ectype_ID, 217, 82 , 2 )
					AddMonsterByFloat( 52273, 1, $ectype_ID, 215, 92 , 2 )
					AddMonsterByFloat( 52271, 1, $ectype_ID, 225, 84 , 2 )
					AddMonsterByFloat( 52273, 1, $ectype_ID, 225, 94 , 2 )
				endif
			endif
			
			if $ectype_Var == 3
				StartEctypeTimer( -1, 332, 3 )
			endif
		endif
		
	}