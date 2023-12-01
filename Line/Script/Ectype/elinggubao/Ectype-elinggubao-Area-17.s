	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/24
	//		Author:???
	//		TaskName:Ectype-elinggubao-Area-17.s
	//		TaskID:????
	//
	//****************************************
	
	
	function EnterArea(){
		$Ectype_id = GetEctypeID( -1 , 258 )
		$count = GetEctypeVar( -1 , 37 )
		
		if $count == 0
		
			OpenMask( 16 , $Ectype_id )
			BC( "screen" , "map" , $Ectype_id , "The Library has opened!" )
			SetEctypeVar( -1 , 37 , 1 )
		endif
			
	}

	function LeaveArea(){
	
	}