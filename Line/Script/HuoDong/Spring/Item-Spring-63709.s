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
		$result = SubPlayerInfo( -1, "item", 63709 , 1 )
		if $result == 0
			$money = RandomNumber( 40000 , 60000 )
			AddPlayerInfo( -1, "money", $money  )
		endif
	}