	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:????????1
	//		TaskID:
	//
	//****************************************
	
	function OnTaskDone(){
		
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Not enough space in your bag.\nUnable to activate the Firewisp Stone.\nPlease restart the quest.")
			return
		endif
	
		$item = GetPlayerInfo( -1, "item", 59776)
		if $item > 0 
			$result = SubPlayerInfo( -1, "item", 59776 , 1)
			if $result == 0
//				$itemID1 = 90141
//				DropMonsterItems( -1 , $itemID1 )
				AddPlayerInfo( -1, "item", 59779 , 1)
				BC( "messagebox", "player", -1, "You have activated the Firewisp Stone.\nIt has become a Charged Flame Stone.")
			endif
		else
			BC( "messagebox", "player", -1, "You don't have a Firewisp Stone.\nPut the Firewisp Stone is in your bag and restart the quest.")
		endif
		
		
	}