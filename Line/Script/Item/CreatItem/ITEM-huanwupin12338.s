	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2008/12/11
	//		Author：祁晶
	//		TaskName：ITEM-huanwupin12338.s
	//		TaskID：法器介绍书
	//
	//****************************************
	
	function OnUseItem(){
	
		//删除物品
		SubPlayerInfo( -1, "item", 12338, 1)
		//加入新的物品
		AddPlayerInfo( -1, "item", 12339, 1 )
		
	}