	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/11
	//		Author�����쳽����ϸ������������
	//		TaskName����˹�������ػ���
	//		TaskID��51873-Right.s
	//
	//****************************************
	
	function OnDead(){

		//��ȡ���� ����id 532����¼���������� 96
		//��¼�Ƿ��� 7
		//monster 51867
		
		$ectype_id = GetEctypeID(-1, 532)
		$count = GetEctypeVar(-1, 95)
		$is = GetEctypeVar(-1, 7)
		$monster = 51858
		
		$count = $count + 1
		SetEctypeVar(-1, 95, $count)

		if $is > 0
			return
		endif
		
		if $count > 1
			return
		else
			AddMonsterByFloat($monster, 1, $ectype_id, 196,218, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 205,218, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 195,230, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 206,218, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 204,232, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 209,227, 1)
		endif
		
		
		
	}