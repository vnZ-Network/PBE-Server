	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/11/20
	//		Author����ԭ��
	//		TaskName��ITEM-honglilibao-59066.s
	//		TaskID�����������6����
	//
	//****************************************
	
	
	function OnUseItem(){
		//ɾ������
		$del = SubPlayerInfo ( -1 , "item" , 59066 , 1 )
		if  $del != 0
			return
		endif
		
		//����Ԫ��
		$result = AddPlayerInfo( -1 , "givepoint" , 40000 )
			
						
	}