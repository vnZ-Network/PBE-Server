	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/01/20
	//		Author：齐晓康
	//		TaskName：ITEM-63704.s
	//		TaskID：充值返利卡
	//
	//****************************************
	
	
	function OnUseItem(){
		//删除道具
		$del = SubPlayerInfo ( -1 , "item" , 63704 , 1 )
		if  $del != 0
			return
		endif
		
		//增加赠点
		$result = AddPlayerInfo( -1 , "givepoint" , 500 )
			
						
	}