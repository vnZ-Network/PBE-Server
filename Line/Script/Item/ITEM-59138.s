	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/25
	//		Author:???
	//		TaskName:ITEM-59138.s
	//		TaskID:??????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		//???????
		$count = GetTaskCount ( -1 )
		if $count >= 20
			BC( "dialogbox", "player", -1, "Quest list is full. Please try again after clearing up your quest list." )
			return
		endif
		
		//????
		$del = SubPlayerInfo ( -1 , "item" , 59138 , 1 )
		if  $del != 0
			return
		endif
		
		AcceptTask ( -1, 4479 )
						
	}