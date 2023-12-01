	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/27
	//		Author:???
	//		TaskName:97-jianzhong-NPC-491.s
	//		TaskID: ?? 
	//
	//****************************************

	function OnRequest(){
	
		$Accept = IsTaskAccept( -1 , 223 )
		
		if $Accept != 0
			DisableNpcOption(0)
		endif
		
//		$team_headerID = GetTeamHeaderID(-1)
//		$player_id = GetPlayerID()		
//		
//		if $player_id != $team_headerID
//			DisableNpcOption(0)
//		endif
	}
	
	function OnOption0(){
				
		//?????????12761???
		$item = GetPlayerInfo( -1, "item", 12762 )
		if $item < 1
			BC( "dialogbox", "player", -1, "Sorry, you don't have Cinderella Cocktail. Go to Biene and get recipe, make one Cinderella Cocktail and come back to me!" )
			return
		endif
		
		$Bag_count = GetPlayerInfo(-1,"nullitem",0)
		if $Bag_count < 1 
			BC( "dialogbox","player",-1,"Insufficient space in your bag.")
			return
		endif
		
		$sub = SubPlayerInfo(-1,"item",12762,1)
		if $sub != 0
			return
		endif
		
		BC( "chat", "player", -1, "Taste great, here is the Liquor License!" )
		AddPlayerInfo( -1, "item", 12767, 1 )
				
	}