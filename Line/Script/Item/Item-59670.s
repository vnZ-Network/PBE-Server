	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/08/14
	//		Author����־ǿ
	//		TaskName��Item-59670.s
	//		TaskID��1000��Ԫ����
	//
	//****************************************
	
	function OnUseItem(){
			
		//ɾ��������Ʒ
		$result = SubPlayerInfo( -1, "item", 59670 , 1 )
		if $result == 0
			AddPlayerInfo( -1, "givepoint", 1000  )
		endif
	}