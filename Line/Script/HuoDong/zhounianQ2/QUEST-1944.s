	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:????????4-59777-?????
	//		TaskID:
	//
	//****************************************
	
	function OnTaskDone(){
		
		$itemID1 = 90139
		DropMonsterItems( -1 , $itemID1 )
		BC( "messagebox", "player", -1, "You obtained the Will of the Far Sky.")
		
		
		
	}