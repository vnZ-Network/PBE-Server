	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/11/25
	//		Author����ԭ��
	//		TaskName��ITEM-59218.s
	//		TaskID�����㿨
	//
	//****************************************
	
	
	function OnUseItem(){
		//ɾ������
		$del = SubPlayerInfo ( -1 , "item" , 59218 , 1 )
		if  $del != 0
			return
		endif
		
		//��������
		$result = AddPlayerInfo( -1 , "givepoint" , 120 )
			
						
	}