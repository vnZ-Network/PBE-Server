	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/24
	//		Author:???
	//		TaskName:Ectype-elinggubao-Area-16.s
	//		TaskID:????
	//
	//****************************************
	
	
	function EnterArea(){
		$Ectype_id = GetEctypeID( -1 , 258 )
		$count = GetEctypeVar( -1 , 36 )
		
		if $count == 0
			OpenMask( 17 , $Ectype_id )
			BC( "screen" , "map" , $Ectype_id , "The Reception Room has opened!" )
			SetEctypeVar( -1 , 36 , 1 )
		endif
	}

	function LeaveArea(){
	
	}