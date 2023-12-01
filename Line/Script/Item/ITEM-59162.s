	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/11/25
	//		Author：杨原林
	//		TaskName：ITEM-xinshoudalibao-59162.s
	//		TaskID：神鬼钱袋
	//
	//****************************************
	
	
	function OnUseItem(){
		//删除道具
		$del = SubPlayerInfo ( -1 , "item" , 59162 , 1 )
		if  $del != 0
			return
		endif
		
		//增加金钱
		$result = AddPlayerInfo( -1 , "money" , 5000 )
			
						
	}