	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/11/20
	//		Author����ԭ��
	//		TaskName��ITEM-honglilibao-59065.s
	//		TaskID�����������5����
	//
	//****************************************
	
	
	function OnUseItem(){
		//ɾ������
		$del = SubPlayerInfo ( -1 , "item" , 59065 , 1 )
		if  $del != 0
			return
		endif
		
		//����Ԫ��
		$result = AddPlayerInfo( -1 , "givepoint" , 25000 )
			
						
	}