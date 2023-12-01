	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/11/25
	//		Author：杨原林
	//		TaskName：ITEM-59218.s
	//		TaskID：赠点卡
	//
	//****************************************
	
	
	function OnUseItem(){
		//删除道具
		$del = SubPlayerInfo ( -1 , "item" , 59218 , 1 )
		if  $del != 0
			return
		endif
		
		//增加赠点
		$result = AddPlayerInfo( -1 , "givepoint" , 120 )
			
						
	}