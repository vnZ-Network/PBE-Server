	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2008/10/27
	//		Author���
	//		TaskName��ITEM-jiazhuangtai12335.s
	//		TaskID����Ʒ��buff12335
	//
	//****************************************
	
	
	
	function OnUseItem(){

	//�ű���ʼ
		$revalue = SubPlayerInfo( -1, "item", 12335 , 1 )
		if $revalue == 0
			AddStatus( -1, 11655, 1 )
		endif
	}