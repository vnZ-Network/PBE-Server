	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/11/25
	//		Author����ԭ��
	//		TaskName��ITEM-xinshoudalibao-59162.s
	//		TaskID�����Ǯ��
	//
	//****************************************
	
	
	function OnUseItem(){
		//ɾ������
		$del = SubPlayerInfo ( -1 , "item" , 59162 , 1 )
		if  $del != 0
			return
		endif
		
		//���ӽ�Ǯ
		$result = AddPlayerInfo( -1 , "money" , 5000 )
			
						
	}