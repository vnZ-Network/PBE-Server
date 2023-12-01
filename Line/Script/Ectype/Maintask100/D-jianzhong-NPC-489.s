	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/27
	//		Author:???
	//		TaskName:97-jianzhong-NPC-489.s
	//		TaskID: ?? 
	//
	//****************************************

	function OnRequest(){
	
		$Accept1 = IsTaskAccept( -1 , 223 )
		$Accept2 = IsTaskAccept( -1 , 224 )
		
		if $Accept1 != 0
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif
		if $Accept2 != 0
			DisableNpcOption(3)
		endif
		
//		$team_headerID = GetTeamHeaderID(-1)
//		$player_id = GetPlayerID()		
//		
//		if $player_id != $team_headerID
//			DisableNpcOption(0)
//			DisableNpcOption(1)
//			DisableNpcOption(2)			
//			DisableNpcOption(3)
//		endif
		
		
		
		
		$Done1 = IsTaskDone( -1 , 224 )
				
		if $Done1 == 0
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)			
			DisableNpcOption(3)
		endif
		
	}
	
	function OnOption0(){
				
		//?????????12747?????
		$item = GetPlayerInfo( -1, "item", 12747 )
		if $item > 0
			BC( "dialogbox", "player", -1, "You have received the recipe! " )
			return
		endif
		
		$Bag_count = GetPlayerInfo(-1,"nullitem",0)
		if $Bag_count < 1 
			BC( "dialogbox","player",-1,"Insufficient space in your bag.")
			return
		endif
		
		AddPlayerInfo( -1, "item", 12747, 1 )
	}
	
	function OnOption1(){
				
		//?????????12748??????
		$item = GetPlayerInfo( -1, "item", 12748 )
		if $item > 0
			BC( "dialogbox", "player", -1, "You have received the recipe! " )
			return
		endif
		
		$Bag_count = GetPlayerInfo(-1,"nullitem",0)
		if $Bag_count < 1 
			BC( "dialogbox","player",-1,"Insufficient space in your bag.")
			return
		endif
		
		AddPlayerInfo( -1, "item", 12748, 1 )
	}
	
	function OnOption2(){
				
		//?????????12749????????
		$item = GetPlayerInfo( -1, "item", 12749 )
		if $item > 0
			BC( "dialogbox", "player", -1, "You have received the recipe! " )
			return
		endif
		
		$Bag_count = GetPlayerInfo(-1,"nullitem",0)
		if $Bag_count < 1 
			BC( "dialogbox","player",-1,"Insufficient space in your bag.")
			return
		endif
		
		AddPlayerInfo( -1, "item", 12749, 1 )
	}
	
	function OnOption3(){
				
		//?????????12750???????
		$item = GetPlayerInfo( -1, "item", 12750 )
		if $item > 0
			BC( "dialogbox", "player", -1, "You have received the recipe! " )
			return
		endif
		
		$Bag_count = GetPlayerInfo(-1,"nullitem",0)
		if $Bag_count < 1 
			BC( "dialogbox","player",-1,"Insufficient space in your bag.")
			return
		endif
		
		AddPlayerInfo( -1, "item", 12750, 1 )
	}