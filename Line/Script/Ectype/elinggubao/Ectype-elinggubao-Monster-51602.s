	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/10
	//		Author:???
	//		TaskName:Ectype-elinggubao-Monster-51602.s
	//		TaskID:RUSH?????1
	//
	//****************************************
	
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1 , 258 )
		$count = GetEctypeVar( -1 , 9 )
		$count = $count + 1
		
		if $count < 30
			BC( "screen" , "map" , $ectype_ID , "You have destroyed " , $count , "/30 Ghouls" )
			SetEctypeVar( -1 , 9 , $count )
		endif
		
		
		//??30???????????3?,?????
		if $count == 30
			StartEctypeTimer (-1,3 )
			BC( "screen" , "map" , $ectype_ID , "You have destroyed " , $count , "/30 Ghouls" )
			BC( "screen" , "map" , $ectype_ID , "You have 10 seconds until the Ghouls attack again!" )
		endif
		
	}