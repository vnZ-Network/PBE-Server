  //****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/07/23
	//		Author��������
	//		TaskName��ItemGatherBall
	//		TaskID���ɼ�ˮ����
	//
	//****************************************
	
	function OnUseItem(){
		
		$delor = SubPlayerInfo( -1 , "item", 54100 , 1 )
		if $delor == 0
			AddStatus( -1 , 21602, 1 )
		endif
		
	}