	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/21
	//		Author:??
	//		TaskName:Ectype-nengyuanzhijin-NPC-Enter-183.s
	//		TaskID:?????????
	//
	//****************************************
	
	function OnCreate(){
		


	}
	
	
	function InitTimer(){
	
	    //????10???TD???????
	    SetEctypeTimer(0, 10, "EctypeTime1")
	    SetEctypeTimer(1, 180, "EctypeTime2")
  	   
	}
	
		//???10??????????
	function EctypeTime1(){
		//??????ID
		$ectype_ID = GetEctypeID(-1 ,249)
		//??????
		$ectype_type = GetEctypeVar(-1 ,110)
		$ectype_type1 = GetEctypeVar(-1 ,111)
		//????		
		if $ectype_type == 0		
			//????????
			AddLevelMonster( 51327, 1, $ectype_type1, 1, $ectype_ID,  60, 57 , 1 )
			BC("screen", "map", $ectype_ID, "Minos' army is after the Stardust! The Energy Well's shields will fail if 30 monsters break through.")
			SetEctypeTDString( $ectype_ID , "ui_td_nengliangzhijing" )
			SetEctypeTDNumber( $ectype_ID , 480, 30 )
		endif
		
		//????
		if $ectype_type == 1
			//????????
			AddLevelMonster( 51328, 1, $ectype_type1, 1, $ectype_ID,  60, 57 , 1 )
			BC("screen", "map", $ectype_ID, "Minos' army is after the Stardust! The Energy Well's shields will fail if 30 monsters break through.")
			SetEctypeTDString( $ectype_ID , "ui_td_nengliangzhijing" )
			SetEctypeTDNumber( $ectype_ID , 516, 30 )
		endif
		
		//????
		if $ectype_type == 2
			//????????
			AddLevelMonster( 51329, 1, $ectype_type1, 1, $ectype_ID,  60, 57 , 1 )
			BC("screen", "map", $ectype_ID, "Minos' army is after the Stardust! The Energy Well's shields will fail if 30 monsters break through.")
			SetEctypeTDString( $ectype_ID , "ui_td_nengliangzhijing" )
			SetEctypeTDNumber( $ectype_ID , 421, 30 )
		endif
		
}
	function EctypeTime2(){
		$ectype_ID = GetEctypeID(-1 ,249)
		ReleaseEctype( $ectype_ID ) 
}		
	function OnTDSuccess(){
	
		//??????
		$ectype_type = GetEctypeVar(-1 ,110)
		//??????ID
		$ectype_ID = GetEctypeID(-1 ,249)
		//??????
		if $ectype_type == 0
			BC( "screen" , "map" , $ectype_ID , "Congratulations, you have protected Energy Well successfully." )
		endif
		//??????
		if $ectype_type == 1
			BC( "screen" , "map" , $ectype_ID , "Congratulations, you have protected Energy Well successfully." )
		endif
		//??????
		if $ectype_type == 2
			BC( "screen" , "map" , $ectype_ID , "Congratulations, you have protected Energy Well successfully." )
		endif
	
	}
	
	function OnTDFailure(){
		
		//TD?????,???????????
		
		//??????
		$ectype_type = GetEctypeVar(-1 ,110)
		//??????ID
		$ectype_ID = GetEctypeID(-1 ,249)
		//??????,????,???????????
		if $ectype_type == 0
			BC( "screen" , "map" , $ectype_ID , "The Energy Well has fallen to the forces of Minos! Speak to Augura Buraha to return to Atlantis." )
			DeleteMonster( $ectype_ID, 51327 )
			BC( "screen" , "map" , $ectype_ID , "You have failed to defend the Energy Well. You will be teleported back to Atlantis in 3 minutes." )
			StartEctypeTimer( $ectype_ID , 1 )
		endif
			
		//??????,????,???????????
		if $ectype_type == 1
			BC( "screen" , "map" , $ectype_ID , "The Energy Well has fallen to the forces of Minos! Speak to Augura Buraha to return to Atlantis." )
			DeleteMonster( $ectype_ID, 51328 )
			BC( "screen" , "map" , $ectype_ID , "You have failed to defend the Energy Well. You will be teleported back to Atlantis in 3 minutes." )
			StartEctypeTimer( $ectype_ID , 1 )
		endif	
			
		//??????,????,???????????
		if $ectype_type == 2
			BC( "screen" , "map" , $ectype_ID , "The Energy Well has fallen to the forces of Minos! Speak to Augura Buraha to return to Atlantis." )
			DeleteMonster( $ectype_ID, 51329 )
			BC( "screen" , "map" , $ectype_ID , "You have failed to defend the Energy Well. You will be teleported back to Atlantis in 3 minutes." )
			StartEctypeTimer( $ectype_ID , 1 )			
		endif
	
	}