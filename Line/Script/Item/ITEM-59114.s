	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/8/26
	//		Author��˾�Ĳ�
	//		TaskName��ITEM-59114.s
	//		TaskID�����ﱦ��
	//****************************************
	
	function OnUseItem(){
	
		$info = SubPlayerInfo ( -1 , "item" , 59114 , 1 )
		if  $info != 0
			return
		endif
		DropMonsterItems( -1 , 90037 )
		
	}

