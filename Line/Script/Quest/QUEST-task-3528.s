	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/09/22
	//		Author��˾�Ĳ�
	//		TaskName��QUEST-task-3528.s
	//		TaskID��
	//
	//****************************************
	
	//3242��¼��һ�����
	//3243��¼����������ɴ���
	
	function OnTaskFailedDone(){
	
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$map = GetEctypeID( -1 , 25 )
		if $mapid == $map
			FlyToMap( -1 , 475 , 100 , 64 )
		endif
		
	}
	
	
	
	
	