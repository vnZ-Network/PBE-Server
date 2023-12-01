	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/19
	//		Author:???
	//		TaskName:Ectype-WorldTree-Npc-471-473.s
	//		TaskID:???
	//
	//****************************************
	//
	function OnRequest(){
		
		$ectype_Var0 = GetEctypeVar( -1, 112 )
		BC( "screen", "player", -1, "Water Essence storage: ",$ectype_Var0,"/100" )
		
	}
	
	function OnOption0(){
			
	}	