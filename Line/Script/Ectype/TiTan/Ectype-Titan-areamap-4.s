	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/08/11
	//		Author�������
	//		TaskName��Ectype-Titan-areamap-4.s
	//		TaskID��̩̹��
	//
	//****************************************
	
	function EnterArea(){
		
		$ectype_ID = GetEctypeID( -1 ,303 )
		$calldown = GetEctypeVar( -1, 5 )
		if $calldown == 0
			AddMonsterByFloat( 52247, 1, $ectype_ID, 103, 134, 0 )
			StartEctypeTimer( -1, 303, 6 )
			StartEctypeTimer( -1, 303, 7 )
			SetEctypeVar( -1, 5, 1 )
		endif
		
	}
	
	function LeaveArea(){
		
	}