
	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/2/3
	//		Author：司文博
	//		TaskName：Swb-Mjmy-Quest-212.s
	//		TaskID： 开启梦魇之门
	//****************************************
	
	
	function OnTaskAccept(){
		
	}
	
	function OnTaskDone(){
		$ectype_id = GetEctypeID( -1 , 254 )
		SetPlayerVar( -1 , 56 , 1 )
		OpenMask( 5 , $ectype_id )
		
	}