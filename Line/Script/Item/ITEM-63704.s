	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/01/20
	//		Author��������
	//		TaskName��ITEM-63704.s
	//		TaskID����ֵ������
	//
	//****************************************
	
	
	function OnUseItem(){
		//ɾ������
		$del = SubPlayerInfo ( -1 , "item" , 63704 , 1 )
		if  $del != 0
			return
		endif
		
		//��������
		$result = AddPlayerInfo( -1 , "givepoint" , 500 )
			
						
	}