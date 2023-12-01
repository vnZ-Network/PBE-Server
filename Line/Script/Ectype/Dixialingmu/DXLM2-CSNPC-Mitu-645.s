	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/01
	//		Author:???(??,??,??)
	//		TaskName:???479??????NPC????
	//		TaskID:DXLM2-CSNPC-Mitu-645.s
	//
	//****************************************
	
	function OnRequest(){
			
	}
	
	function OnOption0(){
	
		$ectype_id = GetEctypeID(-1, 479) 
			
		//??????????,????,???????
		$headerID = GetTeamHeaderID( -1 )
		$playerid = GetPlayerID()
			if $playerid != $headerID
				BC( "screen", "player", -1, "You are not the Party Leader!" )
				return
			endif
	
		$size = GetTeamAreaSize(-1)
			if $size > 10
				BC( "screen", "player", -1, "Your party members are too far away!" )
				return
			endif
			
		MapPlayerFlyToMap($ectype_id, $ectype_id, 12, 91)
		
	}