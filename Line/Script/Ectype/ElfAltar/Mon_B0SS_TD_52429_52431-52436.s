	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/8
	//		Author�����쳽����ϸ������������
	//		TaskName��BOSSII���淨TD��
	//		TaskID��Mon_B0SS_TD_52429_52431-52436.s
	//
	//****************************************
	
	function OnDead(){

		//��ȡ���� ����id 541

		$ectype_id = GetEctypeID(-1, 541)

		$count = GetEctypeVar($ectype_id,90)
		$count = $count + 1
		SetEctypeVar($ectype_id,90,$count)
		
	}