	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/01/22
	//		Author��κ��԰
	//		TaskName��Item-Spring-63712.s
	//		TaskID���´������󸣴�
	//
	//****************************************
	
	function OnUseItem(){
			
		//ɾ��������Ʒ
		$result = SubPlayerInfo( -1, "item", 63712 , 1 )
		if $result == 0
			$money = RandomNumber( 270000 , 330000 )
			AddPlayerInfo( -1, "money", $money  )
		endif
	}