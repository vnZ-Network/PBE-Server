	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2008/10/27
	//		Author：祁晶
	//		TaskName：ITEM-jiazhuangtai12336.s
	//		TaskID：物品加buff12336
	//
	//****************************************
	
	
	
	function OnUseItem(){

	//脚本开始
		$revalue = SubPlayerInfo( -1, "item", 12336 , 1 )
		if $revalue == 0
			AddStatus( -1, 11656, 1 )
		endif
	}