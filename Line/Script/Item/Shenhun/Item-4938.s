	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-7-4
	//		Author:??
	//		TaskName:Item-4938.s
	//		TaskID:??????????
	//
	//****************************************
	
	function OnUseItem(){
		//?????????? 4938
		//?????????? 60013
		//10?
		//???? 3340
		$varID = 3340
		//?????ID
		$shanchuID = 4938
		//?????ID
		$huodeID = 60013
		//???????
		$huodeNum = 10
		//??????
		$week = GetNowWeek()
		//??????????
		$playerweek = GetPlayerVar( -1, $varID )
		if $playerweek == $week
			BC( "screen", "player", -1, "You've already opened this gift pack this week - you can only open one per week! You can use your extra gift packs in the next week!" )
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
		$result = SetPlayerVar( -1, $varID, $week )
		if $result == 0
			AddPlayerInfo( -1, "item", $huodeID, $huodeNum )
		else
			return
		endif
		
	}