	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/02/25
	//		Author:???
	//		TaskName:97-jianzhong-NPC-500.s
	//		TaskID: ??-????? 
	//
	//****************************************

	function OnRequest(){
		
//		//????????
//		$team_headerID = GetTeamHeaderID(-1)
//		$player_id = GetPlayerID()		
//		
//		if $player_id != $team_headerID
//			DisableNpcOption(0)
//		endif
		
		
		$SwordInfo = GetPlayerVar( -1 , 3255 )	
		if $SwordInfo < 6
			DisableNpcOption(0)
		endif
		
		$taskinfo = IsTaskDone( -1 , 233 )
		if $taskinfo == 0
			DisableNpcOption(0)
		endif
		
	}
	
	function OnOption0(){
		
//		$taskinfo = IsTaskDone( -1 , 233 )
//		if $taskinfo > 0
//			$add_exp = 5000000
//			$add_money = 5000
//			
//			//????
//			AddPlayerInfo( -1, "exp", $add_exp )
//			AddPlayerInfo( -1, "money", $add_money )
//			
//			SetTaskDone( -1 , 233 )
//		endif
		
		SetTaskDone( -1 , 233 )
		//??????
		BC( "screen" , "player" , -1 , "Quest completed, received new quest!" )
		BC( "chat" , "player" , -1 , "Quest completed, received new quest!" )
		AcceptTask( -1 , 234 )
		
		$ectype_ID = GetEctypeID( -1, 255 )
//		$ectypetimer2_num = GetEctypeVar( $ectype_ID , 10 )
		SetEctypeVar( $ectype_ID , 11, 1 )
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		StartEctypeTimer( -1 , 255, 1 )
		StartEctypeTimer( -1 , 255, 2 )
	}