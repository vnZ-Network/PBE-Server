	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/19
	//		Author:???
	//		TaskName:Ectype-WorldTree-areamap-8.s
	//		TaskID:?????8???
	//
	//****************************************
	
	function EnterArea(){
		$status = IsExistStatus( -1, 10714 )
		if $status != 0
			return
		endif
		
		$ectype_id = GetEctypeID( -1, 250 )
		AddStatus( -1, 10714, 3 )
		BC( "screen" , "player" , -1 , "The insect killers have disappeared." )

	}
	
	function LeaveArea(){
		$status = IsExistStatus( -1, 10714 )
		if $status != 0
			return
		endif
		
		$ectype_id = GetEctypeID( -1, 250 )
		AddStatus( -1, 10714, 3 )
		BC( "screen" , "player" , -1 , "The insect killers have disappeared." )
		
	}