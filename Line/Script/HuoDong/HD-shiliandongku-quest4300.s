	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2008/10/14
	//		Author���
	//		TaskName��HD-shiliandongku-quest4300.s
	//		TaskID����������30���Ӻ����񴥷��Ĵ��ͳ���ͼ�ű�
	//
	//****************************************
	
	
	
	function OnTaskFailedDone(){
		
		$map_id = GetPlayerInfo( -1, "mapid")
		//BC( "chat", "player", -1, "test:",$map_id )
		if $map_id == 114
			FlyToMap( -1, 116, 50, 35 )
			return
		endif
		if $map_id == 115
			FlyToMap( -1, 116, 50, 35 )
			return
		endif
	}
