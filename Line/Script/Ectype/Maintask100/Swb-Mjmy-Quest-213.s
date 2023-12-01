
	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/3/22
	//		Author：司文博
	//		TaskName：Swb-Mjmy-Quest-213.s
	//		TaskID：迷宫真相
	//****************************************
	
	
	function OnTaskAccept(){
		
	}
	
	function OnTaskDone(){
	
		$ectype_id = GetEctypeID( -1 , 254 )
		AddNPC( 509 , $ectype_id )
		SetPlayerVar( -1 , 69 , 1 )
		
		
	}