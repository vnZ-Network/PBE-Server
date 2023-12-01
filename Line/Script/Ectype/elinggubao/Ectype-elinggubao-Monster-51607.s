	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/10
	//		Author:???
	//		TaskName:Ectype-elinggubao-Monster-51607.s
	//		TaskID:RUSH?????????
	//
	//****************************************
	
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1 , 258 )
		$count = GetEctypeVar( -1 , 11 )
		$count = $count + 1
		if $count < 10
			BC( "screen" , "map" , $ectype_ID , "You have destroyed " , $count , "/10 Evil Werewolf Guards" )
			SetEctypeVar( -1 , 11 , $count )
		endif
		
		//??30???????????3?,?????
		if $count == 10
			StartEctypeTimer (-1,3 )
			BC( "screen" , "map" , $ectype_ID , "You have destroyed " , $count , "/10 Evil Werewolf Guards" )
			BC( "screen" , "map" , $ectype_ID , "You have 10 seconds until the last attack. Maggots!" )
		endif
		
	}