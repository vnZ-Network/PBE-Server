	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-5-4
	//		Author:???
	//		TaskName:ITEM-59142.s
	//		TaskID:????4000
	//
	//****************************************
	
	
	function OnUseItem(){
	
		
		//????
		$revalue = SubPlayerInfo( -1, "item", 59142, 1)
		if $revalue == 0
			AddPlayerInfo(-1,"givepoint",4000)
			BC("screen","player",-1,"You used the Salary Card, and got 4000 Salary.")
		endif

						
	}