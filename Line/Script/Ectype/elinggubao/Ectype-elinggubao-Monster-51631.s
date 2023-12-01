	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/05
	//		Author:???
	//		TaskName:Ectype-elinggubao-Monster-51630.s&51631.s
	//		TaskID:??????
	//
	//****************************************
	
	
	function OnDead(){
		$ectype_id = GetEctypeID( -1 , 258 )

		$a = GetEctypeVar( -1 , 1 )
		$a = $a + 1
		SetEctypeVar( -1 , 1 , $a )
			
		if $a >= 4
			OpenMask( 4 , $ectype_id )
			BC( "screen" , "map" , $ectype_id , "The Castle Guards have been destroyed! The Final Door has opened! Okula awaits." )
		else
			BC( "screen" , "map" , $ectype_id , "You have destroyed ",$a,"/4 Castle Guards" )
		endif
			
		
	}
		