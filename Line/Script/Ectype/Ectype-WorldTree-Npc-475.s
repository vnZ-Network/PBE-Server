	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/19
	//		Author:???
	//		TaskName:Ectype-WorldTree-Npc-475.s
	//		TaskID:??
	//
	//****************************************
	//
	function OnRequest(){
		$ectype_Var = GetEctypeVar( -1, 1 )
		if $ectype_Var == 1
			DisableNpcOption(0)
		endif
	}
	
	function OnOption0(){
		$ectype_ID = GetEctypeID( -1, 250 )
		$ectype_Var = GetEctypeVar( -1, 112 )
		if $ectype_Var < 70
			BC( "dialogbox", "player", -1, "Current Water Essence levels in the Reservoir are: ",$ectype_Var,"/100. Unable to open valve if levels are less than 70/100."  )
			return
		endif
		
		$ectype_Var = GetEctypeVar( -1, 1 )
		if $ectype_Var == 0
			SetEctypeVar( -1, 1, 1 )
			BC( "screen", "map", $ectype_ID, "The valve has been opened.  The World Tree has been watered."  )
		else
			BC( "screen", "player", -1, "The valve is already open."  )
			return	
		endif
		
		$ectype_Var = GetEctypeVar( -1, 112 )
		$TJ_number = GetGlobalVar( 2 )
		$TJ_number = $TJ_number + $ectype_Var
		SetGlobalVar( 2, $TJ_number )
		SetEctypeVar( -1, 112, 0 )
		OpenMapMask( 4 )
		
		//??????ID
		$ectype_ID = GetEctypeID( -1, 250 )
		$ectype_type = GetEctypeVar( -1, 110 )
		//????
		AddLevelMonster( 51400, 86, $ectype_type, 1, $ectype_ID, 63, 66, 0 )
		AddLevelMonster( 51406, 85, $ectype_type, 1, $ectype_ID, 60, 60, 0 )
		AddLevelMonster( 51406, 85, $ectype_type, 1, $ectype_ID, 58, 59, 0 )
		AddLevelMonster( 51406, 85, $ectype_type, 1, $ectype_ID, 58, 61, 0 )
		AddLevelMonster( 51406, 85, $ectype_type, 1, $ectype_ID, 63, 64, 0 )
		AddLevelMonster( 51406, 85, $ectype_type, 1, $ectype_ID, 61, 65, 0 )
		AddLevelMonster( 51406, 85, $ectype_type, 1, $ectype_ID, 63, 67, 0 )
		AddLevelMonster( 51406, 85, $ectype_type, 1, $ectype_ID, 64, 66, 0 )
			
	}	