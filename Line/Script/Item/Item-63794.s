	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/12/1
	//		Author��κ��԰
	//		TaskName��Item-63794.s
	//		TaskID��500��Ԫ�������󶨣�
	//
	//****************************************
	
	function OnUseItem(){
			
		//ɾ��������Ʒ
		$result = SubPlayerInfo( -1, "item", 63794 , 1 )
		if $result == 0
			AddPlayerInfo( -1, "givepoint", 500  )
		endif
	}