	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/04/06
	//		Author�������
	//		TaskName��ITEM-money-59283.s
	//		TaskID�����Ǯ��
	//
	//****************************************
	
	
	function OnUseItem(){
		//ɾ������
		$del = SubPlayerInfo( -1, "item", 59283, 1 )
		if $del != 0
			return
		endif
		
		//���ӽ�Ǯ
		AddPlayerInfo( -1, "money", 50000 )
						
	}