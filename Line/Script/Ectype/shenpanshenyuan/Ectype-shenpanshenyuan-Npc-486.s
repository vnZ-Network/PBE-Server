	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/04
	//		Author:???
	//		TaskName:Ectype-yilonghuangu-Npc-486.s
	//		TaskID:??????
	//
	//****************************************
	//
	
	
	//????228
	//???????????       3769
	//?????????           3408
	//?????????????????ID     3810
	
	
	//option0  ????????
	//option1  ????
	
	
	
	function OnRequest(){
		
		
	}
	
	
	//??????BOSS
	function OnOption0(){
		
		//??????
		$count = GetEctypeVar( -1 , 113 )
		if $count == 0
			BC( "dialogbox" , "player" , -1 , "It seems to be in the grip of Falia." )
			return
		endif
		
		//?????7
//		$week = GetSystemTime("week")
//		if $week != 0
//			BC( "dialogbox", "player", -1, "Hades, the lord of the underworld, is using his aura to contain the dragon. The seal will weaken on Sunday!" )
//			return
//		endif
		
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		$ectype_var = GetEctypeVar( -1, 38 )
		
		if $ectype_var == 0
			AddMonsterByFloat( 52639 , 1 , $ectype_ID , 221 , 107 , 0 )
		else		
			AddMonsterByFloat( 51285 , 1 , $ectype_ID , 221 , 107 , 0 )	
		endif	
		
		DeleteNPC( 486 , -1 )
	
	}