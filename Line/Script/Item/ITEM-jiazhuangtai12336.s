	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2008/10/27
	//		Author���
	//		TaskName��ITEM-jiazhuangtai12336.s
	//		TaskID����Ʒ��buff12336
	//
	//****************************************
	
	
	
	function OnUseItem(){

	//�ű���ʼ
		$revalue = SubPlayerInfo( -1, "item", 12336 , 1 )
		if $revalue == 0
			AddStatus( -1, 11656, 1 )
		endif
	}