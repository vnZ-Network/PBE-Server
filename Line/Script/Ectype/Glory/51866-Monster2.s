	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/11
	//		Author�����쳽����ϸ������������
	//		TaskName���ڶ����ֱ���
	//		TaskID��51866-Monster2.s
	//
	//****************************************
	
	function OnDead(){

		//��ȡ���� ����id 532����¼���������� 3
		//��¼�Ƿ���ˢBOSS 4
		//boss 51862
		$ectype_id = GetEctypeID(-1, 532)
		
		$count = GetEctypeVar(-1, 3)
		$is_finish = GetEctypeVar(-1, 4)
		
		$boss = 51862
		
		$count = $count + 1
		SetEctypeVar(-1, 3, $count)
		
		if $is_finish > 0
			return
		else
			if $count >= 6
				OpenMask(1, $ectype_id)
				AddMonsterByFloat($boss, 1, $ectype_id, 165, 256, 1)
				SetEctypeVar(-1, 4, 1)
			endif
		endif	
	
		
		
		
	}