	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/7
	//		Author�����쳽����ϸ������������
	//		TaskName��BOSSLv1��Ԥ������ 20s��ʱ������
	//		TaskID��Timer20sStart_52479.s
	//
	//****************************************
	
	function OnDead(){

		//��ȡ���� ����id 541

		$ectype_id = GetEctypeID(-1, 541)
		$Switch = GetEctypeVar(-1,20)
		$progress = GetEctypeVar(-1,0)		
		
		if $Switch == 1
			if $progress <= 4
				DeleteMonster($ectype_id,52380)
				AddMonsterByFloat(52381,1,$ectype_id,216,83,0,0,0)
				SetEctypeVar(-1,20,0)
				return
			endif
			if $progress <= 7
				DeleteMonster($ectype_id,52384)
				AddMonsterByFloat(52385,1,$ectype_id,167,240,0,0,90)
				SetEctypeVar(-1,20,0)
				return
			else
				DeleteMonster($ectype_id,52388)
				AddMonsterByFloat(52389,1,$ectype_id,75,103,0,0,90)		
				SetEctypeVar(-1,20,0)	
			endif
		endif			
		
	}