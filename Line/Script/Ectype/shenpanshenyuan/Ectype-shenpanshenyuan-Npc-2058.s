	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/11/04
	//		Author�����
	//		TaskName��Ectype-yilonghuangu-Npc-2058.s
	//		TaskID�����͵������´���
	//
	//****************************************
	//
	
	
	//�������228
	//���һ����ɸ���������       3769
	//���촴�������Ĵ���           3408
	//��Ҳ������һ�������ùȸ�����ΨһID     3810
	
	
	//option0  ��ͨ�ѶȽ��븱��
	//option1  ���ظ���
	
	
	
	function OnRequest(){
		
		
	}
	
	
	//������
	function OnOption0(){
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		FlyToMap( -1 , $ectype_ID , 86 , 47 )
		
	}