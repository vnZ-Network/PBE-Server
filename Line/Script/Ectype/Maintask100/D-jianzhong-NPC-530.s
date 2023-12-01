	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/27
	//		Author:???
	//		TaskName:97-jianzhong-NPC-530.s
	//		TaskID: ?? 
	//
	//****************************************

	function OnRequest(){
	
		$Accept = IsTaskAccept( -1 , 226 )
		
		if $Accept != 0
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
		
		$IsFinished = GetPlayerVar( -1 , 60 )
						
		if $IsFinished == 1
			BC( "screen", "player", -1, "The machine was unlocked." )	
			return
		endif
		
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		BC( "screen", "player", -1, "One mechanism unlocked, you hear roaring." )		

		SetPlayerVar( -1 , 60 , 1 )

	}