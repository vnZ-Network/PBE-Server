	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2008/11/17
	//		Author���
	//		TaskName��HD-xuanshangling-questlevel3.s
	//		TaskID��ʥ����ʿ�ŵ���������Ѷ�������ɽ����ű�
	//
	//****************************************
	//3620 �˻�Ļ���
	function OnTaskDone(){
		
		$level = GetPlayerInfo( -1, "level" )
		$a = $level * $level
		$addexp = $a * 30
		
		AddPlayerInfo(-1 , "exp" , $addexp)
		
	
		AddPlayerInfo(-1 , "item", 64244 , 1)
		
		
		//�ۻ�����֡���ʱû�����ֽ���
		$point = GetPlayerVar(-1 ,3620 )
		$point = $point + 3
		SetPlayerVar(-1 ,3620 , $point)
	
	}