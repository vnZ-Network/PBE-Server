	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/11
	//		Author�����쳽����ϸ������������
	//		TaskName����˹�������ػ���
	//		TaskID��51872-Left.s
	//
	//****************************************
	
	function OnDead(){

		//��ȡ���� ����id 532����¼���������� 96
		//��¼�Ƿ��� 7
		//monster 51867
		
		$ectype_id = GetEctypeID(-1, 532)
		$count = GetEctypeVar(-1, 96)
		$is = GetEctypeVar(-1, 7)
		$monster = 51857
		
		$count = $count + 1
		SetEctypeVar(-1, 96, $count)

		if $is > 0
			return
		endif
		
		if $count > 1
			return
		else
			AddMonsterByFloat($monster, 1, $ectype_id, 129,216, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 137,220, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 122,220, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 136,220, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 123,229, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 129,233, 1)
		endif
		
		
		
	}