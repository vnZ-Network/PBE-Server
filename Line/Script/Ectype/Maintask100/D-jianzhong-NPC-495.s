	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/27
	//		Author:???
	//		TaskName:97-jianzhong-495.s
	//		TaskID: ?? 
	//
	//****************************************

	function OnRequest(){
	
		$Accept = IsTaskAccept( -1 , 231 )
		$Accept1 = IsTaskAccept( -1 , 3318 )
		$Accept2 = IsTaskAccept( -1 , 3319 )
		$Accept3 = IsTaskAccept( -1 , 3320 )
		$Accept4 = IsTaskAccept( -1 , 3321 )
		
		if $Accept != 0
			if $Accept1 != 0
				if $Accept2 != 0
					if $Accept3 != 0
						if $Accept4 != 0
							DisableNpcOption(0)
						endif
					endif
				endif
			endif
		endif
		
//		$team_headerID = GetTeamHeaderID(-1)
//		$player_id = GetPlayerID()		
//		
//		if $player_id != $team_headerID
//			DisableNpcOption(0)
//		endif
		
	}
	
	function OnOption0(){
		
		//?????????12753?????????
		$GetValue = GetPlayerInfo(-1, "item", 12753)
		if $GetValue > 0
			BC( "dialogbox","player",-1,"Gained Soulstone of Sultan's soul." )
			return
		endif
		
		//??????????
		$Bag_count = GetPlayerInfo(-1,"nullitem",0)
		if $Bag_count < 1
			BC( "dialogbox","player",-1,"Insufficient space in your bag.")
			return
		endif	
		
		AddPlayerInfo(-1, "item", 12753, 1 )		
	}
	