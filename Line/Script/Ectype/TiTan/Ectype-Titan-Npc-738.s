	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/11
	//		Author:???
	//		TaskName:Ectype-Titan-Npc-738.s
	//		TaskID:????1
	//
	//****************************************
	//
	function OnRequest(){
		
	}
	
	function OnOption0(){
		
		$ectype_ID = GetEctypeID( -1, 332 )
		$Ectype_var = GetEctypeVar( -1, 5 )
		if $Ectype_var == 1
			BC("screen", "map", $ectype_ID, "The trigger is activated. ")
			return
		endif
		
		SetEctypeVar( -1, 1, 1 )
		StartEctypeTimer( -1, 332, 1 )
		NPCAction( -1, 738, down, 1 )
		$ectype_var1 = GetEctypeVar( -1, 1 )
		$ectype_var2 = GetEctypeVar( -1, 2 )
		if $ectype_var1 != 1
			return
		endif
		if $ectype_var2 != 1
			return
		endif
		
		OpenMapMask( 5 )
		OpenMapMask( 6 )
		StartEctypeTimer( -1, 332, 2 )
		SetEctypeVar( -1, 5, 1 )
		
	}