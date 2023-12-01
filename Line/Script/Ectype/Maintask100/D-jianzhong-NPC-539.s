	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/27
	//		Author:???
	//		TaskName:97-jianzhong-NPC-539.s
	//		TaskID: ?? 
	//
	//****************************************

	function OnRequest(){
	
		$Accept = IsTaskAccept( -1 , 226 )
		
		if $Accept != 0
			DisableNpcOption(0)
		endif
		
		$Accept1 = IsTaskDone( -1 , 226 )
		
		if $Accept1 != 0
			DisableNpcOption(1)
		endif
		
		
		$Info = GetPlayerVar( -1 , 53 )
		if $Info == 1
			DisableNpcOption(0)
		endif
		
		//????????
//		$team_headerID = GetTeamHeaderID(-1)
//		$player_id = GetPlayerID()		
//		
//		if $player_id != $team_headerID
//			DisableNpcOption(0)
//		endif
		
	}
	
	function OnOption0(){
		
		$ectype_id = GetEctypeID( -1 , 255 )
		
		//????
		$Key = GetPlayerInfo( -1, "item", 12751 )
		if $Key < 1
			BC( "screen", "player", -1, "You don't have the right key!" )
			return
		endif
		
		//??????		
		$Info0 = GetPlayerVar( -1 , 59 )
		$Info1 = GetPlayerVar( -1 , 60 )
		$Info2 = GetPlayerVar( -1 , 61 )
				
		if $Info0 != 1
			BC( "screen", "player", -1, "No response after inserting the key" )	
			return
		endif
		
		if $Info1 != 1
			BC( "screen", "player", -1, "No response after inserting the key" )	
			return
		endif			
		
		if $Info2 != 1
			BC( "screen", "player", -1, "No response after inserting the key" )	
			return
		endif
		
		$sub = SubPlayerInfo( -1, "item", 12751, 1)
		if $sub == 0
			BC( "screen", "player", -1, "Back Door to the the bar is unlocked." )
			OpenMask( 2, $ectype_id )
			SetPlayerVar( -1 , 53 , 1 )	
		endif

	}
	
	function OnOption1(){
		
		$a = IsTaskDone( -1 , 226 )
		$b = GetEctypeID( -1 , 255 )
		if $a == 0
			OpenMask( 2, $b )
		endif
		
	}