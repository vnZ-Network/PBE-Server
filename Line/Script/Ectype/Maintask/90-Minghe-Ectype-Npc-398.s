	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/11/10
	//		Author��˾�Ĳ�
	//		TaskName��90-Minghe-Ectype-Npc-398.s
	//		TaskID�� 
	//
	//****************************************
	
	function OnRequest(){
	

	}
	
	function OnOption0(){

		$ectype_id = GetEctypeID( -1 , 244 )
		FlyToMap( -1 , $ectype_id , 38 , 75 )
		AddStatus( -1 , 10703, 1 )
		
	}