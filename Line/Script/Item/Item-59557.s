	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/12/14
	//		Author����ԭ��
	//		TaskName��Item-59557.s
	//		TaskID��888���㿨
	//
	//****************************************
	
	function OnUseItem(){
			
		//ɾ��������Ʒ
		$result = SubPlayerInfo( -1, "item", 59557 , 1 )
		if $result == 0
			AddPlayerInfo( -1, "givepoint", 888  )
		endif
	}