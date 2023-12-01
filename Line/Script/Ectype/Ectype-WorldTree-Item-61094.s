  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/25
	//		Author: ???
	//		TaskName:Ectype-WorldTree-Item-61094.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		$ectype_ID = GetEctypeID( -1, 250 )
		$Judge1 = JudgeNpc( -1, 471 )
		$Judge2 = JudgeNpc( -1, 472 )
		$Judge3 = JudgeNpc( -1, 473 )
		if $Judge1 != 0
			if $Judge2 != 0
				if $Judge3 != 0
					BC("screen", "player", -1, "Water Essence can only be put into Reservoir.")
					return
				endif	
			endif	
		endif
		
		$Sub = SubPlayerInfo( -1, "item", 61094, 1 )
		if $Sub != 0
			return
		endif
			
		$ectype_Var = GetEctypeVar( -1, 112 )
		$ectype_Var = $ectype_Var + 5
		SetEctypeVar( -1, 112, $ectype_Var )
		BC("screen", "player", -1, "Water Essence has been added to Reservoir.")
		
		$var1 = GetEctypeVar( -1, 2 )
		if $var1 == 0
			$ectype_Var = GetEctypeVar( -1, 112 )
			if $ectype_Var > 0
				StartEctypeTimer( $ectype_ID, 3 )
				SetEctypeVar( -1, 2, 1 )
			endif
		endif
					
		$ectype_Var = GetEctypeVar( -1, 112 )
		if $ectype_Var >= 50
			if $ectype_Var <= 55
				DeleteNPC( 471, $ectype_ID )
				AddNPC( 472, $ectype_ID )
			endif
		endif
		
		if $ectype_Var >= 100
			SetEctypeVar( -1, 112, 100 )
			DeleteNPC( 472, $ectype_ID )
			AddNPC( 473, $ectype_ID )
			BC( "screen", "map", $ectype_ID, "The Reservoir is filled with water." )
		endif
		
	}