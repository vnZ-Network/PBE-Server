	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-7-4
	//		Author:??
	//		TaskName:Item-4941.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		//?????? 4941
		//???? 4954
		//???????,????????
		//10?
		//???? 3343
		$varID = 3343
		//?????ID
		$shanchuID = 4941
		//?????ID
		$huodeID = 4954
		//???????
		$huodeNum = 20
		//??????
		$playerweek = GetPlayerVar( -1, $varID )
		if $playerweek == 1
			BC( "screen", "player", -1, "You've already opened this gift pack this week - it can only be opened once! You can get more gift packs from Farrack." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", $shanchuID )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		//
		$Sub = SubPlayerInfo( -1, "item", $shanchuID, 1 )
		if $Sub != 0
			return
		endif
		//????????
		$result = SetPlayerVar( -1, $varID, 1 )
		if $result == 0
			AddPlayerInfo( -1, "item", $huodeID, $huodeNum )
		else
			return
		endif
		
	}