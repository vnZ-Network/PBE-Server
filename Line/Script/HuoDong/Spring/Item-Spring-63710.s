	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/01/22
	//		Author�����
	//		TaskName��Item-Spring-63709.s
	//		TaskID���´��󸣴�
	//
	//****************************************
	
	function OnUseItem(){
			
		//ɾ��������Ʒ
		$result = SubPlayerInfo( -1, "item", 63710 , 1 )
		if $result == 0
			AddPlayerInfo( -1, "givepoint", 500  )
		endif
	}