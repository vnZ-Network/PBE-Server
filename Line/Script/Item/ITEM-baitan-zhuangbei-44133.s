 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/12/6
	//		Author:???
	//		TaskName:ITEM-baitan-zhuangbei-44133.s
	//		TaskID:???? ??
	//****************************************
	
	function OnUseItem(){
	
		$del = SubPlayerInfo ( -1,"item",44133,1 )
		if  $del != 0
			return
		endif
		AddStatus(-1,11937,1)
		BC( "screen", "player", -1, "Your vending decoration has been changed!" )
	}