
	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/2/3
	//		Author��˾�Ĳ�
	//		TaskName��Swb-Mjmy-Quest-212.s
	//		TaskID�� ��������֮��
	//****************************************
	
	
	function OnTaskAccept(){
		
	}
	
	function OnTaskDone(){
		$ectype_id = GetEctypeID( -1 , 254 )
		SetPlayerVar( -1 , 56 , 1 )
		OpenMask( 5 , $ectype_id )
		
	}