	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/11/20
	//		Author����ԭ��
	//		TaskName��ITEM-honglilibao-59063.s
	//		TaskID�����������3����
	//
	//****************************************
	
	
	function OnUseItem(){
		//ɾ������
		$del = SubPlayerInfo ( -1 , "item" , 59063 , 1 )
		if  $del != 0
			return
		endif
		
		//����Ԫ��
		$result = AddPlayerInfo( -1 , "givepoint" , 8000 )
			
						
	}