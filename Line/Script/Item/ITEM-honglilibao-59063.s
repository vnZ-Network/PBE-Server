	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/11/20
	//		Author：杨原林
	//		TaskName：ITEM-honglilibao-59063.s
	//		TaskID：鸿利礼包（3级）
	//
	//****************************************
	
	
	function OnUseItem(){
		//删除道具
		$del = SubPlayerInfo ( -1 , "item" , 59063 , 1 )
		if  $del != 0
			return
		endif
		
		//增加元宝
		$result = AddPlayerInfo( -1 , "givepoint" , 8000 )
			
						
	}