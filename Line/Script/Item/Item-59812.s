	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/5/17
	//		Author�������
	//		TaskName��Item-59812.s
	//		TaskID��1000���㿨
	//
	//****************************************
	
	function OnUseItem(){
			
		//ɾ��������Ʒ
		$result = SubPlayerInfo( -1, "item", 59812 , 1 )
		if $result == 0
			AddPlayerInfo( -1, "givepoint", 1000  )
		endif
	}