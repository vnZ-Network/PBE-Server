	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/24
	//		Author:???
	//		TaskName:Ectype-elinggubao-Area-15.s
	//		TaskID:?????????
	//
	//****************************************
	
	
	function EnterArea(){
		$Ectype_id = GetEctypeID( -1 , 258 )
		$count = GetEctypeVar( -1 , 35 )
		
		if $count == 0
		
			OpenMask( 8 , $Ectype_id )
			OpenMask( 13 , $Ectype_id )
			BC( "screen" , "map" , $Ectype_id , "The Throne Room has opened!" )	
			SetEctypeVar( -1 , 35 , 1 )	
		endif	
	}

	function LeaveArea(){
	
	}