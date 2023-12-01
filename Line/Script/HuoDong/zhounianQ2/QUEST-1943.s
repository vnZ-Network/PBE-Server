	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:????????3-59778-????
	//		TaskID:
	//
	//****************************************
	
	function OnTaskDone(){
		
		$itemID1 = 90140
		DropMonsterItems( -1 , $itemID1 )
		BC( "messagebox", "player", -1, "You obtained the Eye of Understanding.")
		
		
		
	}