	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/10
	//		Author:???
	//		TaskName:90-Saisi-Ectype-Npc-395.s
	//		TaskID: ?? ????????
	//
	//****************************************

	function OnRequest(){
	
		$Accept = IsTaskAccept( -1 , 155 )
		if $Accept != 0
			DisableNpcOption(0)
		endif

	}
	
	function OnOption0(){
	
		$Accept = IsTaskAccept( -1 , 155 )
		if $Accept != 0
			return
		endif
		$ectype_id = GetEctypeID( -1 , 243 )
		if $ectype_id > 0
			ReleaseEctype ( -1,243 )
		endif
		$succeed = FlyToEctype( -1 , 243 , 95, 97 )
		if $succeed > 0
			$ectype_id = GetEctypeID( -1 , 243 )
			$ectype_uid = GetEctypeUniqueID( -1 , 243 )
			
			StartEctypeTimer( $ectype_id , 1 )
			
			BC( "screen" , "player" , -1 , "You have entered the Set's Temple instance in single mode." )
		else
			BC( "dialogbox", "player", -1, "The Set's Throne Instance is full, please change realms or try again later." )
			return
		endif
		
	}
	
	function OnOption1(){
	
		FlyToMap( -1 , 245 , 45 , 84 )
	}	
	
	