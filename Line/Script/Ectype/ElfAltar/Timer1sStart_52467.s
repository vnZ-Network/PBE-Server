	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/7
	//		Author�����쳽����ϸ������������
	//		TaskName��BOSS2�����Χ������
	//		TaskID��Timer1sStart_52467.s
	//
	//****************************************
	
	function OnDead(){

		//��ȡ���� ����id 541

		$ectype_id = GetEctypeID(-1, 541)

		DeleteMonster(-1,52453)
		DeleteMonster(-1,52454)
//		BC("screen","map",$ectype_id,"111111111111111111111")
		
		
	}