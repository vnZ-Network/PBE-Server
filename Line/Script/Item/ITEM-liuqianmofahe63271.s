	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/03/14
	//		Author���
	//		TaskName��ITEM-liuqianmofahe63271.s
	//		TaskID��ħ����ǫǫ
	//
	//****************************************
	
	
	
	function OnUseItem(){
	
		//ɾ��
		$del_count = SubPlayerInfo( -1, "item", 63271, 1 )
		//�Ƿ�ɾ���ɹ�
		if $del_count != 0
			return
		endif
		DropMonsterItems(-1, 60072 )

	}