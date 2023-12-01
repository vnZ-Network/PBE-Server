	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/04
	//		Author:???
	//		TaskName:Ectype-yilonghuangu-Npc-2053.s
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
	
	
	//????
	function OnOption0(){
		
		//????
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Sorry, only the party leader can begin." )
			return
		endif
		
		
		//????????
		$size = GetTeamAreaSize(-1)
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Your party members are too far away from you!" )
			return
		endif
		
		
		
		$result = DeleteNPC( 2053 , -1 )
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		$ectype_var = GetEctypeVar( -1, 38 )
		
		
		
		//????NPC????
		if $result == 0

				//$result = AddDart( -1 , 51286 , 2 , 2 )
				$result = AddMonsterByFloat( 51286 , 1 , $ectype_ID , 112 , 215 , 0 )

		endif
		
	}