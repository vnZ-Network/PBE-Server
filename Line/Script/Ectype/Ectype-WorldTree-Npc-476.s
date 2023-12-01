	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/19
	//		Author:???
	//		TaskName:Ectype-WorldTree-Npc-476.s
	//		TaskID:??????
	//
	//****************************************
	//
	function OnRequest(){
		
		$ectype_Var1 = GetEctypeVar( -1, 3 )
		if $ectype_Var1 != 0
			DisableNpcOption(0)
		endif
		
	}
	
	function OnOption0(){
		$ectype_ID = GetEctypeID( -1, 250 )
		$ectype_Var = GetEctypeVar( -1, 3 )
		
		if $ectype_Var != 0
			return
		endif
		
		BC( "dialogbox", "map", $ectype_ID, "Thank you for coming. The gluttonous Nidhogg gnaws at my roots constantly. I have suffered much, patiently waiting for someone to relieve me from this pain. Your presence here has enraged the giant worm and he has gathered many venomous insects to help destroy me. Please, for the peace of the world, protect me!" )
		DeleteNPC( 476, $ectype_ID )
		
		$ectype_type = GetEctypeVar( -1, 110 )
		//????
		AddLevelMonster( 51400, 46, $ectype_type, 1, $ectype_ID, 63, 66, 0 )
		StartEctypeTimer( $ectype_ID, 8 )
//		StartEctypeTimer( $ectype_ID, 9 )
		SetEctypeVar($ectype_ID,10,0)

	}	