	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/10
	//		Author:???
	//		TaskName:90-Minghe-Ectype-Npc-217.s
	//		TaskID: 
	//
	//****************************************
	
	function OnRequest(){
	
		$Accept = IsTaskAccept( -1 , 147 )
		if $Accept != 0
			DisableNpcOption(0)
		endif

	}
	
	function OnOption0(){
//	
//		$Accept = IsTaskAccept( -1 , 147 )
//		if $Accept != 0
//			return
//		endif
//		$ectype_id = GetEctypeID( -1 , 244 )
//		$value = GetPlayerVar( -1 , 3242 )
//		if $value < 10
//			BC( "dialogbox" , "player" , -1 , "GUID:04585000000",$value, "GUID:04585000001")
//		else
//			SetTaskDone( -1 , 147 )
//			FlyToMap( -1 ,  $ectype_id , 50 , 80 )
//			AddStatus( -1 , 10703, 1 )
//		endif
	}