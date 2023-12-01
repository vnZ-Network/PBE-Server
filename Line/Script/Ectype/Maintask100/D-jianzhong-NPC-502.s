	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/27
	//		Author:???
	//		TaskName:97-jianzhong-NPC-502.s
	//		TaskID: ??-??? 
	//
	//****************************************

	function OnRequest(){
		
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
						
		
		//????????????
		$JzDone = GetPlayerVar( -1 , 63 )
		if $JzDone > 0
			DisableNpcOption(0)
		endif
			
	}
	
	function OnOption0(){
		
		//??500??????
		$gold = GetPlayerInfo( -1, "money")
		
		if $gold < 500
			BC( "screen", "player", -1, "You don't have enough coins to buy a ticket to enter the Club" )
			BC( "chat", "player", -1, "You don't have enough coins to buy a ticket to enter the Club" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "money", 500)
		if $result > 0
			return
		else
			BC( "screen", "player", -1, "Bought a ticket for 500 coins, you can enter the Club now" )
			BC( "chat", "player", -1, "Bought a ticket for 500 coins, you can enter the Club now" )
		endif
		
		$ectype_ID = GetEctypeID( -1, 255 )
			
		OpenMask( 1 , $ectype_ID )
		
		SetPlayerVar( -1, 63, 1 )
		
	}