	//****************************************	
	//		Copyright��PERFECT WORLD
	//		Modified��2012/07/18
	//		Author�������
	//		TaskName��
	//		TaskID����ٻ�����
	//****************************************
	function OnDead(){
		
		$rand = RandomNumber ( 1, 99 )
		
	//3%���ʽ������о��ٻ��޼��ܾ���*5
		if $rand < 3
			DropMonsterItems(-1, 90195 )
		endif
	
	//6%���ʽ����߼�ǿ��ˮ��*5
		if $rand >= 3
			if $rand < 9
				DropMonsterItems(-1, 90196 )
			endif
		endif

	//6%���ʽ����м��ٻ���ǿ��ʯ*5
		if $rand >= 9
			if $rand < 15
				DropMonsterItems(-1, 90197 )
			endif
		endif
	
	//85%���ʽ�����Ӱ��������*1
		if $rand >= 15
		 DropMonsterItems(-1, 90194 )
		endif
	}

	
	//����Ϊ�ɽű�	
	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/03/06
	//		Author���Ƴ�
	//		TaskName��
	//		TaskID����Ӱ�����񣨲ɼ��֣�
	//****************************************
//	function OnDead(){
		
//		$rand = RandomNumber ( 1, 10000 )
		
	//1/10000���ʽ���˫��������Ӱ����
//		if $rand == 600
//			DropMonsterItems(-1, 90099 )
//			return
//		endif
	
	//�߼�ǿ��ˮ����5
//		if $rand < 600
//			DropMonsterItems(-1, 90098 )		
//			return
//		endif
	
	//���Ӱ�
//		DropMonsterItems(-1, 90096 )
//	}	