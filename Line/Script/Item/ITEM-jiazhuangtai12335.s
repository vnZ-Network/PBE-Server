	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2008/10/27
	//		Author：祁晶
	//		TaskName：ITEM-jiazhuangtai12335.s
	//		TaskID：物品加buff12335
	//
	//****************************************
	
	
	
	function OnUseItem(){

	//脚本开始
		$revalue = SubPlayerInfo( -1, "item", 12335 , 1 )
		if $revalue == 0
			AddStatus( -1, 11655, 1 )
		endif
	}