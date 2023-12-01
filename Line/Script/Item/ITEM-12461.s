	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/23
	//		Author:???
	//		TaskName:ITEM-12461.s
	//		TaskID:
	//
	//****************************************
	
	function OnUseItem(){
	
		$TaskDo = IsTaskDone( -1 , 1640 )
		$Lv = GetPlayerInfo( -1 , "level" )
		
		$Del = SubPlayerInfo ( -1 , "item" , 12461 , 1 )
		if $Del != 0
			return
		endif
		
		if $Lv < 71
			BC( "dialogbox", "player", -1, "You need to be at least LV71 to activate the item." )
			return
		endif
		
		if $TaskDo == 0
			BC( "dialogbox", "player", -1, "You have already finished the quest triggered by the item." )
			return
		endif
		
		AcceptTask( -1 , 1640 )
		AddStatus( -1 , 11598 , 1 )
	
	}