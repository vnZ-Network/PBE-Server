	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2008/11/17
	//		Author���
	//		TaskName��HD-xuanshangling-questlevel1.s
	//		TaskID��ʥ����ʿ�ŵ���������Ѷ�������ɽ����ű�
	//
	//****************************************
	//3620 �˻�Ļ���
	function OnTaskDone(){
		
		$level = GetPlayerInfo( -1, "level" )
		$a = $level * $level
		$addexp = $a * 15
		
		AddPlayerInfo(-1 , "exp" , $addexp)
		//�ۻ�����֡���ʱû�����ֽ���
		$point = GetPlayerVar(-1 ,3620 )
		$point = $point + 1
		SetPlayerVar(-1 ,3620 , $point)
	
	
	}