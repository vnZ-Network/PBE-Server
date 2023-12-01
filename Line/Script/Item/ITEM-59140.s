	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/25
	//		Author:???
	//		TaskName:ITEM-59140.s
	//		TaskID:???????
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
		$del = SubPlayerInfo ( -1 , "item" , 59140 , 1 )
		if  $del != 0
			return
		endif
		
		AcceptTask ( -1, 4481 )
						
	}